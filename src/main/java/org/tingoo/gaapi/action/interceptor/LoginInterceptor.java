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
		
		//检查session中是否有登陆信息
		Map session = actionContext.getSession();
		if (session != null && session.get(USER_SESSION_KEY) != null){
			
			//有，则继续访问页面。
			return invocation.invoke();
		}
		
		//没有，则跳转到login定义的页面
		return "login";
	}

}