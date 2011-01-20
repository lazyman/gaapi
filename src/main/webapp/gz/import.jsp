<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据导入</title>
</head>
<body>
<center>
<s:form action="parse.jsp" method="post">
数据导入：
<input type="file" name="file">
	<input type="submit" name="Submit" value="导入">
</s:form></center>
</body>
</html>
