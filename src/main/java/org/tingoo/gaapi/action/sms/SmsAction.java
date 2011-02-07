package org.tingoo.gaapi.action.sms;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.action.txl.IndexAction;
import org.tingoo.gaapi.bean.Department;
import org.tingoo.gaapi.util.ImportUtil;

public class SmsAction implements ServletRequestAware {
	private static Log logger = LogFactory.getLog(SmsAction.class);
	public static final String SUCCESS = "success";
	
	private HttpServletRequest request;

	private Department root;
	private List<Department> departments;

	public String execute() {
		String id = "5263edab-db35-4866-8beb-fe07242f909a";
		String hql = "from Department d where d.parent = ? order by d.orderindex";
		Session s = ImportUtil.getSession();

		root = (Department) s.get(Department.class, id);
		Query q = s.createQuery(hql);
		q.setString(0, "5263edab-db35-4866-8beb-fe07242f909a");
		departments = q.list();

		visitTree(departments);
//		request.setAttribute("root", root);
		// fileroot = new
		// FileWrapper(getSession().getServletContext().getRealPath("/"));
		return SUCCESS;
	}

	public String treeWithCheckbox() {
		Map map = request.getParameterMap();
		logger.fatal("the tree map");
		Set set = map.entrySet();
		Iterator iterator = set.iterator();
		while (iterator.hasNext()) {
			Map.Entry entry = (Map.Entry) iterator.next();

			logger.fatal("the tree key is: " + entry.getKey()
					+ " ,and value is: " + entry.getValue());
		}

		return SUCCESS;
	}


	public void visitTree(List<Department> tree) {

		for (int i = 0; i < tree.size(); i++) {
			Department node = tree.get(i);
			logger.fatal("visitTree:The treenode parentid is :"
					+ node.getParent() + ",and the treenode name is "
					+ node.getName());
		}

	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
