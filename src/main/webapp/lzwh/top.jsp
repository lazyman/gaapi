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
	position:absolute;
	left:248px;
	top:1px;
	width:334px;
	height:147px;
	z-index:1;
}
-->
</style>
<div id="Layer1">
	<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"
width="500" height="150" align="">
<param name=movie value="images/222.swf"><param name=quality value=high><param name=wmode value=transparent>
<embed src="images/222.swf" quality=high wmode=transparent width="500" height="150" align=""
type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">
</embed></object></div>
<table height="73" cellspacing="0" cellpadding="0" width="778"
	align="center" border="0">
	<tbody>
		<tr>
			<td><img alt="" src="top.png" width="1000" /></td>
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

			<td class="font12black" align="center"
				width="100%" background="../res/images/topback.png" ><a
				href="./"  style=" margin-left:15px; margin-right:15px; color:#6600FF; font-weight: bold">首 页</a>
				<c:forEach var="dir" items="${topdirs}">
				| <a href="list.jsp?dirid=${dir.dirid }" style="margin-left:15px; margin-right:15px; color:#6600FF; font-weight: bold">${dir.dirnamechs }</a>				</c:forEach>
				| <a href="http://10.123.7.28:8088/default.asp" target="_blank" style="margin-left:15px; margin-right:15px; color:#6600FF; font-weight: bold">廉正视频</a>
				| <a href="#" style="margin-left:15px; margin-right:15px; color:#6600FF; font-weight: bold">廉正大家谈</a>
			</td>
		</tr>
        <tr>
            <td bgcolor="#66CCFF" height="1"></td>
        </tr>
	</tbody>
</table>
<%s.close();%>