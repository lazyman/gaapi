package org.tingoo.gaapi.action.interceptor;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {
	public static final String USER_SESSION_KEY="gongzi.loginuser";
	public static final String COOKIE_REMEMBERME_KEY="wallet.cookie.rememberme";
	public static final String GOING_TO_URL_KEY="GOING_TO";
	
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		ActionContext actionContext = invocation.getInvocationContext();
//		HttpServletRequest request= (HttpServletRequest) actionContext.get(StrutsStatics.HTTP_REQUEST);
		
		//���session���Ƿ��е�½��Ϣ
		Map session = actionContext.getSession();
		if (session != null && session.get(USER_SESSION_KEY) != null){
			
			//�У����������ҳ�档
			return invocation.invoke();
		}
		
		//û�У�����ת��login�����ҳ��
		return "login";
	}

}