<%@ page contentType="text/html; charset=utf-8"%>

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../res/css/zt_zfjszt_css.css" type="text/css" rel="stylesheet" />
<link href="../res/css/zt_dch.css" type="text/css" rel="stylesheet" />
<link href="../res/css/style.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
#Layer1 {
	position: absolute;
	left:183px;
	top:0px;
	width:334px;
	height:147px;
	z-index:1;
}
-->
</style>
<table height="73" cellspacing="0" cellpadding="0" width="1000"
	align="center" border="0" background="top.png">
	<tbody>
		<tr>
			<td width="1000" height="150" align="center"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"
width="600" height="150" align="">
				<param name=movie value="images/jyzd.swf" />
				<param name=quality value=high />
				<param name=wmode value=transparent />
				<embed src="images/jyzd.swf" quality=high wmode=transparent width="600" height="150" align=""
type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"> </embed>
			</object></td>
		</tr>
	</tbody>
</table>
<table height="27" cellspacing="0" cellpadding="0" width="1000"
	align="center" border="0">
	<tbody>
		<tr>

<%
Session s = HibernateUtil.getSessionFactory().openSession();
String dirid = request.getParameter("topdirid");

Directory directory = (Directory)s.load(Directory.class, dirid);

Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
q.setString(0, dirid);
List list = q.list();

request.setAttribute("topdirs", list);
%>

			<td class="font12black" style="PADDING-RIGHT: 5px" align="center"
				width="100%" background="../res/images/topback.png" ><a
				href="./"  style="padding-left:20px; padding-right:20px; color:#6600FF; font-weight: bold">首 页</a>
				<c:forEach var="dir" items="${topdirs}">
				| <a href="list.jsp?dirid=${dir.dirid }" style="padding-left:20px; padding-right:20px; color:#6600FF; font-weight: bold">${dir.dirnamechs }</a>				</c:forEach>
			</td>
		</tr>
	</tbody>
</table>
<%s.close();%>