<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#mobiles {
	float:left;
	width:200px;
	height:200px;
	text-align:left;
}
#sms {
	float: left;
}
   .treeCheckBox {
        height: 14px;
        margin: 0px;
        padding: 0px;
        border: 1px;
        vertical-align: middle;
    }
</style>
<sx:head />

</head>
<body>
<%--
response.sendRedirect("invokesms.jsp?mobile=13586165355&message=helloooodch");
--%>
<div align="center">
<div id="mobiles">
tree<br />
<sx:tree
    theme="ajax"
    id="root"
    rootNode="#request.root"
    childCollectionProperty="childCategories"
    nodeIdProperty="categoryId"
    nodeTitleProperty="categoryTitle"
    treeSelectedTopic="treeSelected">
</sx:tree>

</div>
<div align="center" id="sms">
<form action="sms.jsp" method="post">
	手机号：<textarea cols="55" rows="8" name="mobile"></textarea>
	<br />
	短信内容：
	<textarea cols="55" rows="8" name="message"></textarea>
	<br />
	<input type="submit" />
</form>
</div>
</div>
</body>
</html>