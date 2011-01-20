<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>工资查询</title>
</head>
<style>
.lable {
	width:50%;
	text-align:right;
}
</style>
<body background="images/chaxiu.jpg">
<h1 align="center">工资查询</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<s:form theme="simple" action="/gz/login">
<table width="600" border="0" align="center">
	<tr>
		<td width="300" class="lable">用户名：</td>
		<td width="300"><input name="username" type="text" id="username"></td>
	</tr>
	<tr>
		<td class="lable">密码：</td>
		<td><input name="password" type="password" id="password"></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" name="Submit" value="登陆"></td>
	</tr>
</table>
</s:form>
</body>
</html>