<%@ page contentType="text/html; charset=utf-8"%>

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<LINK media=screen href="res/skycn.css" type=text/css rel=stylesheet>
<LINK media=screen href="res/softsort.css" type=text/css rel=stylesheet>
<script type="text/javascript">
	function showunderline(op, tin) {
		if (tin == true) {
			op.style.textDecoration = 'underline';
			op.style.color = '#FF6E00';
		} else {
			op.style.textDecoration = 'none';
			op.style.color = '000000';
		}
	}
	function DateDemo() {
		var d, s;
		d = new Date();
		s = d.getYear() + "年";
		s += (d.getMonth() + 1) + "月";
		s += d.getDate() + "日";
		if (s != "") {
			document.getElementById("stryear").innerText = s;
		}
		Dateweek();
	}
	function Dateweek() {
		var d, day, x;
		var x = new Array("星期日", "星期一", "星期二");
		var x = x.concat("星期三", "星期四", "星期五");
		var x = x.concat("星期六");
		d = new Date();
		day = d.getDay();
		if (x[day] != "") {
			document.getElementById("stryear2").innerText = x[day];
		}
	}
	window.onload = DateDemo;
</script>
<table height="73" cellspacing="0" cellpadding="0" width="778"
	align="center" border="0">
	<tbody>
		<tr>
			<td><img alt="" src="../res/images/top.jpg" width="1000" /></td>
		</tr>
	</tbody>
</table>
<table height="27" cellspacing="0" cellpadding="0" width="1000"
	align="center" border="0">
	<tbody>
		<tr>
			<td class="font12black" align="center" width="146"
				background="../res/images/topback.png" height="29">
			<table cellspacing="0" cellpadding="0" width="146" border="0">
				<tbody>
					<tr>
						<td align="center">
						<div class="font12black" id="stryear">2008年7月20日</div>
						</td>
						<td align="center">
						<div class="font12black" id="stryear2">星期日</div>
						</td>
					</tr>
				</tbody>
			</table>
			</td>

<%
Session s = HibernateUtil.getSessionFactory().openSession();
String dirid = request.getParameter("topdirid");

Directory directory = (Directory)s.load(Directory.class, dirid);

Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
q.setString(0, dirid);
List list = q.list();

request.setAttribute("dirs", list);
%>

			<td class="font12black" style="PADDING-RIGHT: 5px" align="right"
				width="849" background="../res/images/topback.png"><a
				href="../">首 页</a>
				<c:forEach var="dir" items="${dirs}">
				| <a href="../list.jsp?dirid=${dir.dirid }" class="font12black">${dir.dirnamechs }</a>
				</c:forEach>
			</td>
		</tr>
	</tbody>
</table>
<%s.close();%>