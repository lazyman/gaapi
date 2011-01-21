package org.tingoo.gaapi.action;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.bean.Wage;
import org.tingoo.gaapi.util.ImportUtil;

public class SearchAction {
	private static Log logger = LogFactory.getLog(SearchAction.class);

	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String policeno;
	private String name;
	private String month;
	
	private List<Wage> wages;
	
	public String execute() {
		String hql = "from Wage w where w.name like ?";
		Session s = ImportUtil.getSession();
		Query q = s.createQuery(hql);
		q.setString(0, "%" + name + "%");
		
		wages = q.list();
		
		return SUCCESS;
	}
}
