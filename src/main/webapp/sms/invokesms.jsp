<%@page import="org.tingoo.gaweb2010.sms.ShortMessageService"%>
<%
//http://localhost:8080/gaweb2010/sms/invokesms.jsp?mobile=13586165355&message=helloooodch
	String mobile = request.getParameter("mobile");
	String msg = request.getParameter("message");
	String url = request.getParameter("url");

	if(msg == null) {
		msg = "null message";
	} else {
		msg = new String( msg.getBytes("ISO-8859-1"));
	}
	
	if(mobile != null && mobile.length() == 11) {
		ShortMessageService sms = new ShortMessageService();
		sms.send(mobile, msg);
	}
	
	if(url != null) {
		response.sendRedirect(url);
		response.flushBuffer();
	} else {
%>

<script>
history.back();
</script>
<%
	}
%>