package org.tingoo.gaapi.action;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.util.ImportUtil;


public class LoginAction {
	private static Log logger = LogFactory.getLog(LoginAction.class);

	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String username;
	private String password;
	
	public String execute() {
		String hql = "select count(*) as count from MemberDetail m where m.policeid=? and m.password=?";
		
		try {
			Session s = ImportUtil.getSession();
			Query q = s.createQuery(hql);
			
			q.setString(0, username);
			q.setString(1, ImportUtil.EncoderByMd5(password));
			
			int count = ((Long)q.uniqueResult()).intValue();
			
			if(count > 0) {
				return SUCCESS;
			} else {
				return "fail";
			}
			
		} catch (NoSuchAlgorithmException e) {
			logger.fatal(e.getMessage(), e);
		} catch (UnsupportedEncodingException e) {
			logger.fatal(e.getMessage(), e);
		}
		
		
		return url;
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

}
