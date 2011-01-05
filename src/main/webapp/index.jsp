<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息化应用与建设专栏</title>
</head>
<%
	Session s = HibernateUtil.getSessionFactory().openSession();
	String dirid = "100125100445";

	Directory directory = (Directory) s.load(Directory.class, dirid);

	Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
	q.setString(0, dirid);
	List list = q.list();

	request.setAttribute("dirs", list);
%>

<body topmargin="0" leftmargin="0">

<div id="menu1" style="display: none" onMouseMove="showmenu('menu1')"
	onmouseout="hidemenu('menu1')">
<div class="menuitem" onMouseOver="overitem(this)"
	onmouseout="outitem(this)"><a
	href="list.jsp?dirid=100204044735" target="_blank"
	class="font12black">日常办公</a></div>
<div class="menuitem" onMouseOver="overitem(this)"
	onmouseout="outitem(this)"><a
	href="list.jsp?dirid=100204044758" target="_blank"
	class="font12black">业务报表</a></div>
</div>

<table width="1000" border="0" id="maintable" cellspacing="0"
	cellpadding="0" align="center">
	<tr>
		<td>
			<jsp:include page="top.jsp">
				<jsp:param value="100125100445" name="topdirid" />
			</jsp:include>
		</td>
	</tr>
	<tr>
		<td id="contenttd">
		<table width="100%" border="0" height="100%" id="rightcontenttable">
			<tr>
				<td width="210" valign="top" id="leftcontenttd">
				
				<jsp:include page="left.jsp"></jsp:include>
				
				</td>
				<td valign="top" id="rightcontenttd">
				<table width="100%" border="0" align="center">
					<tr>
						<td height="180" width="48%" valign="top">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							height="100%" class="lanmutable">
							<tr>
								<td height="28" background="res/images/bbg_bak.png"
									class="lanmubiaoti">工作动态</td>
								<td width="*" background="res/images/bbg.jpg" class="lanmumore"><a
									href="list.jsp?dirid=100125102202" target="_blank"
									class="font12black">更多&gt;&gt;</a></td>
							</tr>
							<tr>
								<td colspan="2"><iframe src="home.jsp?hdirid=100125102202"
									frameborder="0" height="310" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe></td>
							</tr>
						</table>
						</td>
						<td width="48%">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							height="100%" class="lanmutable">
							<tr>
								<td height="28" background="res/images/bbg_bak.png"
									class="lanmubiaoti">文档教程</td>
								<td width="*" background="res/images/bbg.jpg" class="lanmumore"><a
									href="list.jsp?dirid=100130093047" target="_blank"
									class="font12black">更多&gt;&gt;</a></td>
							</tr>
							<tr>
								<td colspan="2"><iframe src="home.jsp?hdirid=100130093047"
									frameborder="0" height="310" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe></td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td height="180">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							height="100%" class="lanmutable">
							<tr>
								<td height="28" background="res/images/bbg_bak.png"
									class="lanmubiaoti">实战案例</td>
								<td width="*" background="res/images/bbg.jpg" class="lanmumore"><a
									href="list.jsp?dirid=100130093119" target="_blank"
									class="font12black">更多&gt;&gt;</a></td>
							</tr>
							<tr>
								<td colspan="2"><iframe src="home.jsp?hdirid=100130093119"
									frameborder="0" height="310" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe></td>
							</tr>
						</table>
						</td>
						<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							height="100%" class="lanmutable">
							<tr>
								<td height="28" background="res/images/bbg_bak.png"
									class="lanmubiaoti">经验交流</td>
								<td width="*" background="res/images/bbg.jpg" class="lanmumore"><a
									href="list.jsp?dirid=100130093127" target="_blank"
									class="font12black">更多&gt;&gt;</a></td>
							</tr>
							<tr>
								<td colspan="2"><iframe src="home.jsp?hdirid=100130093127"
									frameborder="0" height="310" width="100%" marginheight="0"
									marginwidth="0" scrolling="No"></iframe></td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>

<jsp:include page="foot.jsp" />
</body>
</html>
