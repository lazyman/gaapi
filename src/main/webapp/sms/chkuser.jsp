<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.tingoo.gaweb2010.user.User"%>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	Session s = HibernateUtil.getSessionFactory("yhweb").openSession();
	String hql = "from User u where u.username = ? and u.password = ?";
	
	Query q = s.createQuery(hql);
	q.setString(0, username);
	q.setString(1, password);
	
	List l = q.list();
	User u = null;
	
	if(l.size() >0) {
		u = (User)l.get(0);
		session.setAttribute("smsuser", u);
		response.sendRedirect("smsinput.jsp");
	} else {
		session.setAttribute("smsuser", u);
		response.sendRedirect("index.html");
	}
%>
