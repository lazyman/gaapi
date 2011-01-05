<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="java.util.List"%>

<%@page import="org.hibernate.Query"%>
<%@page import="org.tingoo.gaweb2010.news.News"%>

<%
	Session s = HibernateUtil.getSessionFactory().openSession();
	String dirid = request.getParameter("hdirid");
	int size = 9;

	Directory directory = (Directory) s.load(Directory.class, dirid);

	Query q = s
			.createQuery("from News n where n.directory.dirid in (select d.dirid from Directory d where d.parent.dirid = ? ) order by n.filltime desc");
	q.setString(0, dirid);
	q.setFirstResult(0);
	q.setMaxResults(size);
	List newses = q.list();

	if (newses.size() == 0) {
		q = s.createQuery("from News n where n.directory.dirid = ? order by n.filltime desc");
		q.setString(0, dirid);
		q.setFirstResult(0);
		q.setMaxResults(size);
		newses = q.list();
	}

	request.setAttribute("newses", newses);
	request.setAttribute("dir", directory);
%>
<head>
<style>
a:link {
	font-size:12px;
	color: #333333;
	text-decoration: none;
}
a:visited {
	font-size:12px;
	text-decoration: none;
	color: #333333;
}
a:hover {
	font-size:12px;
	text-decoration: underline;
	color: #FF6600;
}
a:active {
	font-size:12px;
	text-decoration: none;
	color: #FF6600;
}
.news {
	font-size:12px;
}
</style>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<c:forEach items="${newses}" var="news">
		<tr>
			<td align="center" width="*" height="25"><img height="6" alt=""
				src="../res/images/dian.jpg" width="5" /></td>
			<td width="75%">
			<c:if test="${news.news}">
				<img src="../res/images/gif071.gif" />
			</c:if>
			<a href='shownews.jsp?newsid=${news.newsid }' target='_blank'
				title='${news.title1 }' >${fn:substring(news.title1, 0, 18) }</a></td>
			<td width="20%" class="news">[<fmt:formatDate pattern="yyyy-MM-dd" value="${news.filltime}" />]</td>
		</tr>
		<tr>
			<td background="../res/images/xx.gif" colspan="3" height="1"></td>
		</tr>
	</c:forEach>
</table>

</body>