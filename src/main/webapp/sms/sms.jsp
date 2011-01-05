
<%@page import="org.tingoo.gaweb2010.sms.ShortMessageService"%><%
	String mobile = request.getParameter("mobile");
	String[] mobiles = mobile.split("\n");
	String message = request.getParameter("message");
	
	if(message == null) {
		message = "null message";
	} else {
		message = new String( message.getBytes("ISO-8859-1"), "utf-8");
	}
	
	int size = 70;
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
	
	ShortMessageService sms = new ShortMessageService();
	//out.print(mobile);
	for(int i=0; i<mobiles.length; i++) {
		//out.print(mobiles[i]);
		//out.print("<br />");
		
		for( int j=0; j<msgs.length; j++) {
			if(msgs.length > 1) {
				sms.send(mobiles[i], msgs[j] + "(" + (j+1) + "/" + msgs.length + ")");
			} else {
				sms.send(mobiles[i], msgs[j]);
			}
		}
	}
%>
已发送到短信队列！！