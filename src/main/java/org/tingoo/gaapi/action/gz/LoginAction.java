package org.tingoo.gaapi.action.gz;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.action.gz.interceptor.LoginInterceptor;
import org.tingoo.gaapi.bean.MemberDetail;
import org.tingoo.gaapi.util.ImportUtil;

import com.opensymphony.xwork2.ValidationAwareSupport;


public class LoginAction extends ValidationAwareSupport implements ServletRequestAware, ServletResponseAware, SessionAware {
	private static Log logger = LogFactory.getLog(LoginAction.class);
	
	private HttpServletRequest request;
	private HttpServletResponse response;

	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String username;
	private String password;

	private Map<String, Object> session;
	
	public String execute() {
		String hql = "from MemberDetail m where m.policeid=? and m.password=?";
		
		try {
			Session s = ImportUtil.getSession();
			Query q = s.createQuery(hql);
			
			q.setString(0, username);
			q.setString(1, ImportUtil.EncoderByMd5(password));
			
			List<MemberDetail> members = q.list();
			int count = members.size();
			
			MemberDetail member = null;
			String rtn;
			
			if(count > 0) {
				member = members.get(0);
				member.getDepartment().getName();
				
				rtn = SUCCESS;
			} else {
				addActionMessage("’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
				rtn = "login";
			}
			request.getSession().setAttribute(LoginInterceptor.USER_SESSION_KEY, member);
			
			s.close();
			return rtn;
			
		} catch (NoSuchAlgorithmException e) {
			logger.fatal(e.getMessage(), e);
		} catch (UnsupportedEncodingException e) {
			logger.fatal(e.getMessage(), e);
		}
		
		
		return url;
	}
	
	public String logout() {
		request.getSession().setAttribute(LoginInterceptor.USER_SESSION_KEY, null);
		LoginInterceptor.clearMessage(session);
		
		return "login"; 
	}
	public static void main(String[] args) {
		try {
			System.out.println(ImportUtil.EncoderByMd5("d87357533"));
			
			LoginAction login = new LoginAction();
			login.username = "98212402";
			login.password = "d87357533";
			
			login.execute();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}
	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		this.response = arg0;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
