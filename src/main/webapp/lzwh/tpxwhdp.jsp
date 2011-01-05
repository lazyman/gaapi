<%@ page contentType="text/html; charset=GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>图片新闻幻灯片</title>
</head>
<body topmargin="0" leftmargin="0">
<div class="flash" align="center"><object
	classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
	codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0"
	width="256" height="216" id="频道标志" align="middle">
	<param name="allowScriptAccess" value="sameDomain" />
	<param name="movie" value="../include/flash-0004/flash/toppic.swf?data=../toppicxml/dir/<%=request.getParameter("dirid") %>" />
	<param name="quality" value="high" />
	<param name="wmode" value="transparent" />
	<param name="bgcolor" value="#ffffff" />
	<embed src="../include/flash-0004/flash/toppic.swf?data=xml/toppicxml.xml" quality="high"
		wmode="transparent" bgcolor="#ffffff" width="256" height="216"
		align="middle" allowScriptAccess="sameDomain"
		type="application/x-shockwave-flash"
		pluginspage="http://www.macromedia.com/go/getflashplayer" /></object></div>
</body>
</html>
