package org.tingoo.gaapi.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class SearchAction {
	private static Log logger = LogFactory.getLog(SearchAction.class);

	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String username;
	private String password;
	
	public String execute() {
		return SUCCESS;
	}
}
