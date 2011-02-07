package org.tingoo.gaapi.action.sms;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.tingoo.gaweb2010.sms.ShortMessageService;

public class SendAction implements ServletRequestAware {

	private static Log logger = LogFactory.getLog(SendAction.class);

	private HttpServletRequest request;
	
	public static final String SUCCESS = "success";
	
	private String mobile, message;
	
	
	public String execute() {
		String[] mobiles = mobile.split("\n");
		
		if(message == null) {
			message = "null message";
			logger.info(message);
		} else {
			logger.debug(message);
		}
		
		int size = 67;
		//把消息message按每条67个字分条存入msgs数组
		String[] msgs  = new String[message.length()/size + 1];
		int begini = 0;
		int endi = 0;
		for(int i = 0; i<msgs.length; i++) {
			endi = begini + size;
			if(endi > message.length()) {
				endi = message.length();
			}
			
			msgs[i] = message.substring(begini, endi);
			
			begini = endi ;
		}
		
		// 调用SMS类发送短信
		ShortMessageService sms = new ShortMessageService();
		logger.debug(mobile);
		for(int i=0; i<mobiles.length; i++) {
			logger.debug(mobiles[i]);
			
			for( int j=0; j<msgs.length; j++) {
				
				//长信息就在每条消息前加上第几条
				if(msgs.length > 1) {
					sms.send("(" + (j+1) + "/" + msgs.length + ")" + mobiles[i], msgs[j]);
				} else {
					sms.send(mobiles[i], msgs[j]);
				}
			}
		}
		
		return SUCCESS;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
