<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>社会管理创新专栏</title>
<link href="../res/css/zt_dch_div.css" rel="stylesheet" type="text/css">
<style>
.lanmu_biaoti_div {
	color:#FFFFFF;
}
.morecolor {
	color: #FFFFFF;
}
</style>
</head>
<%
	Session s = HibernateUtil.getSessionFactory().openSession();
	String dirid = "101003041741";

	
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
				<jsp:param value="101003041741" name="topdirid" />
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
							<div class="lanmu_biaoti_div">通知通报</div>
							<div class="lanmubiaoti_more_div">
								<a href="list.jsp?dirid=101003041937"><span class="morecolor">更多>></span></a>
							</div>
						</div>
						<div class="lanmu_contant_div">
							<iframe src="home.jsp?hdirid=101003041937"
									frameborder="0" height="230" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe>
						</div>
					</div>
					<div>
					<div align="center">
					<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"
width="755" height="65" align="">
<param name=movie value="res/images/banner.swf"><param name=quality value=high>
<embed src="res/images/banner.swf" quality=high  width="755" height="65" align=""
type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">
</embed></object>
</div>
					<c:forEach items="${dirs}" var="lanmu" begin="1">
						<div class="lanmu_div">
							<div class="lanmu_title_div">
								<div class="lanmu_biaoti_div">${lanmu.dirnamechs }</div>
								<div class="lanmubiaoti_more_div">
									<a  href="list.jsp?dirid=${lanmu.dirid }"><span class="morecolor">更多>></span></a>								</div>
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

<jsp:include page="../foot.jsp" />
</body>
</html>
