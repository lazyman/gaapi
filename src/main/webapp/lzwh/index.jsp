<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String ip = request.getRemoteAddr();
if(ip.startsWith("10.123.36.")
		|| ip.startsWith("10.123.37.")
		|| ip.startsWith("10.123.38.")
		|| ip.startsWith("10.123.39.")
		|| ip.startsWith("10.123.40.")
		|| ip.startsWith("10.123.59.")
		|| ip.startsWith("10.123.60.")) {
	//continue;
} else {
	response.sendError(401);
	response.flushBuffer();
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>廉正文化专栏</title>
<link href="../res/css/zt_dch_div.css" rel="stylesheet" type="text/css">
</head>
<%
	Session s = HibernateUtil.getSessionFactory().openSession();
	String dirid = "100803051731";

	
	Directory directory = (Directory) s.load(Directory.class, dirid);

	Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
	q.setString(0, dirid);
	List list = q.list();

	request.setAttribute("dirs", list);
%>

<body topmargin="0" leftmargin="0">

<table width="1000" border="0" id="maintable" cellspacing="0"
	cellpadding="0" align="center">
	<tr>
		<td>
			<jsp:include page="top.jsp">
				<jsp:param value="100803051731" name="topdirid" />
			</jsp:include>
		</td>
	</tr>
	<tr>
		<td id="contenttd">
		<table width="1000" border="0" height="100%" id="rightcontenttable">
			<tr>
				<td width="210" valign="top" id="leftcontenttd">
					<jsp:include page="left.jsp"></jsp:include>
				</td>
				
				<td valign="top" width="0" bgcolor="#66CCFF" ></td>
				
				<td width="789" valign="top" id="rightcontenttd" align="center">
					<div class="lanmu_div_single">
						<div class="lanmu_title_div">
							<div class="lanmu_biaoti_div">警示教育</div>
							<div class="lanmubiaoti_more_div">
								<a href="list.jsp?dirid=100803060725">更多>></a>
							</div>
						</div>
						<div class="lanmu_contant_div">
							<iframe src="home.jsp?hdirid=100803060725"
									frameborder="0" height="230" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe>
						</div>
					</div>
					<div>
					<c:forEach items="${dirs}" var="lanmu" begin="1">
						<div class="lanmu_div">
							<div class="lanmu_title_div">
								<div class="lanmu_biaoti_div">${lanmu.dirnamechs }</div>
								<div class="lanmubiaoti_more_div">
									<a href="list.jsp?dirid=${lanmu.dirid }">更多>></a>
								</div>
							</div>
							<div class="lanmu_contant_div">
								<iframe src="home.jsp?hdirid=${lanmu.dirid }"
										frameborder="0" height="230" width="100%" marginheight="0"
										marginwidth="0" scrolling="No"></iframe>
							</div>
						</div>
					</c:forEach>
				</div>
				
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

<jsp:include page="foot.jsp" />
</body>
</html>
