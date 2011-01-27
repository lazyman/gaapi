package org.tingoo.gaapi.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.action.interceptor.LoginInterceptor;
import org.tingoo.gaapi.bean.MemberDetail;
import org.tingoo.gaapi.bean.Wage;
import org.tingoo.gaapi.util.ImportUtil;

public class SearchAction implements ServletRequestAware {
	private static Log logger = LogFactory.getLog(SearchAction.class);

	private HttpServletRequest request;
	
	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String policeno;
	private String name;
	private String month;
	
	private List<Wage> wages;
	
	public String execute() {
		MemberDetail member = (MemberDetail) request.getSession().getAttribute(LoginInterceptor.USER_SESSION_KEY);
		name = member.getMembername();
		
		if("".equals(month)) {
			month = null;
		}
		
		String hql = "from Wage w where w.name = ? ";
		if(month != null) {
			hql += " and w.id.yuefen = ? ";
		}
		
		Session s = ImportUtil.getSession();
		Query q = s.createQuery(hql);
		q.setString(0,  name );
		
		if(month != null ) {
			q.setString(1, month);
		}
		
		wages = q.list();
		s.close();
		
		return SUCCESS;
	}

	public String getPoliceno() {
		return policeno;
	}

	public void setPoliceno(String policeno) {
		this.policeno = policeno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public List<Wage> getWages() {
		return wages;
	}

	public void setWages(List<Wage> wages) {
		this.wages = wages;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}
	
	
}
