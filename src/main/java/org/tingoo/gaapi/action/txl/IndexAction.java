package org.tingoo.gaapi.action.txl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.bean.Department;
import org.tingoo.gaapi.util.ImportUtil;

public class IndexAction implements ServletRequestAware {
	private static Log logger = LogFactory.getLog(IndexAction.class);

	private HttpServletRequest request;
	
	public static final String SUCCESS = "success";
	private String url = "search";
	
	private List<Department> departments;
	
	public String execute() {
		String hql = "from Department d where d.parent = ? order by d.orderindex";
		
		Session s = ImportUtil.getSession();
		Query q = s.createQuery(hql);
		q.setString(0, "5263edab-db35-4866-8beb-fe07242f909a");
		
		departments = q.list();
		s.close();
		
		return SUCCESS;
	}

	public List<Department> getDepartments() {
		return departments;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
