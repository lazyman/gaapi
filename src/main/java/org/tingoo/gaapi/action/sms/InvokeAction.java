package org.tingoo.gaapi.action.sms;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class InvokeAction {
	private static Log logger = LogFactory.getLog(SendAction.class);

	private HttpServletRequest request;
	
	public static final String SUCCESS = "success";
	
	private String mobile, message, url;

	public String execute() {
		url = request.getHeader("Referer ");
		
		return SUCCESS;
	}
}
