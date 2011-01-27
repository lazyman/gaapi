package org.tingoo.gaapi.action.interceptor;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.tingoo.gaapi.bean.MemberDetail;
import org.tingoo.gaapi.bean.User;
import org.tingoo.gaapi.util.ImportUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ValidationAwareSupport;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminInterceptor extends ValidationAwareSupport implements Interceptor {
	private static Log logger = LogFactory.getLog(AdminInterceptor.class);
	
	public static final String ADMIN_SESSION_KEY = "gongzi.admin";
	
	private String message;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext actionContext = invocation.getInvocationContext();
		
		Map session = actionContext.getSession();
		MemberDetail member = (MemberDetail) session.get(LoginInterceptor.USER_SESSION_KEY);

		Session s = ImportUtil.getSession();
		String hql = "from User u where u.memberDetail = ? ";
		Query q = s.createQuery(hql);
		
		q.setEntity(0, member);
		
		List<User> users = q.list();
		s.close();
		
		if(users.size() > 0) {
			User u = users.get(0);
			session.put(ADMIN_SESSION_KEY, u);
			
			return invocation.invoke();
		} else {
			message = "不是管理员权限，请用管理员账号登陆";
			LoginInterceptor.addMessage(session, message);
			logger.debug("add message:" + message);
			
			return "login";
		}
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public void destroy() {	}

	@Override
	public void init() {}

}
