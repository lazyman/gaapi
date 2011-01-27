package org.tingoo.gaapi.action.interceptor;


import java.util.Map;
import java.util.Vector;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoginInterceptor implements Interceptor {
	private static Log logger = LogFactory.getLog(LoginInterceptor.class);
	
	public static final String USER_SESSION_KEY="gongzi.loginuser";
	public static final String COOKIE_REMEMBERME_KEY="wallet.cookie.rememberme";
	public static final String GOING_TO_URL_KEY="GOING_TO";
	
	private String message;
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		ActionContext actionContext = invocation.getInvocationContext();
//		HttpServletRequest request= (HttpServletRequest) actionContext.get(StrutsStatics.HTTP_REQUEST);
		
		//���session���Ƿ��е�½��Ϣ
		Map session = actionContext.getSession();
		//����ϴε�message��Ϣ
		clearMessage(session);
		if (session != null && session.get(USER_SESSION_KEY) != null){
			
			//�У����������ҳ�档
			return invocation.invoke();
		}
		
		message = "���½";
		LoginInterceptor.addMessage(session, message);
		logger.debug("add message:" + message);
		//û�У�����ת��login�����ҳ��
		return "login";
	}

	public static void addMessage(Map<String, Object> session, String message) {
		Object obj = session.get("messages");
		Vector<String> vector;
		
		if(obj != null && obj instanceof Vector) {
			vector = (Vector<String>) obj;
		} else {
			vector = new Vector<String>();
		}
		
		vector.add(message);
		session.put("messages", vector);
	}
	public static void clearMessage(Map<String, Object> session) {
		Object obj = session.get("messages");
		
		if(obj != null ) {
			session.put("messages", null);
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
	public void init() { }

}