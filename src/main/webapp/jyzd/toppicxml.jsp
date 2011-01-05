<%@ page contentType="text/xml; charset=GBK"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.news.News"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%
	response.setHeader("Pragma","No-cache"); 
	response.setHeader("Cache-Control","no-cache"); 
	response.setDateHeader("Expires", -10);
	
	String uri = request.getRequestURI();
	String dirid;
	dirid = uri.substring(uri.indexOf("toppicxml/dir/")
			+ "toppicxml/dir/".length(), uri.length());

	//dirid = request.getParameter("dirid");
	//System.out.println(dirid);
	Session s = HibernateUtil.getSessionFactory().openSession();
	Query q = s
			.createQuery("from News n where n.directory.dirid = ? order by n.filltime desc");
	q.setString(0, dirid);
	q.setMaxResults(5);
	List<News> newses = q.list();

	request.setAttribute("newses", newses);
	out.clear();
%><?xml version="1.0" encoding="utf-8"?>
<slider>
<c:forEach items="${newses}" var="news">
	<item href="shownews.jsp?newsid=${news.newsid }"
		title="${news.title1 }" imageurl="${news.picurl }" />
</c:forEach>
</slider>
<%
	s.close();
%>