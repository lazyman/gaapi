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


<table height="73" cellspacing="0" cellpadding="0" width="778"
	align="center" border="0">
	<tbody>
		<tr>
			<td><img src="res/images/top.png" alt="" width="1000" height="150" /></td>
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
				href="./"  style=" margin-left:15px; margin-right:15px; color:#000000; font-weight: bold">首 页</a>
				<c:forEach var="dir" items="${topdirs}">
			| <a href="list.jsp?dirid=${dir.dirid }" style="margin-left:15px; margin-right:15px; color:#000; font-weight: bold">${dir.dirnamechs }</a></c:forEach></td>
		</tr>
        <tr>
            <td bgcolor="#66CCFF" height="1"></td>
        </tr>
	</tbody>
</table>
<%s.close();%>