package org.tingoo.gaapi.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class IndexAction {
	private static Log logger = LogFactory.getLog(IndexAction.class);

	public static final String SUCCESS = "success";
	
	public String execute() {
		logger.info("to index");
		
		return SUCCESS;
	}
}
