<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="cn.com.lazyhome.util.Paging"%>
<%@page import="org.tingoo.gaweb2010.news.News"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>“创先争优”活动专栏 - 争创时代先锋，推进‘双和谐’建设</title>
<style type="text/css">
BODY {
    MARGIN: 0px; BACKGROUND-COLOR: #739726
}
INPUT {
    FONT-SIZE: 12px; COLOR: #666666
}

BODY {
    FONT-SIZE: 12px;
    background-color: #A51C18;
}
A:link {
    COLOR: #000000; TEXT-DECORATION: none
}
.c:link {
    FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #669933; TEXT-DECORATION: none
}
A:visited {
    COLOR: #000000; TEXT-DECORATION: none
}
A:hover {
    COLOR: #dd5800; TEXT-DECORATION: underline
}
A:active {
    COLOR: #dd5800; TEXT-DECORATION: none
}
.STYLE31 A {
    FONT-SIZE: 12px; COLOR: #009900
}
#contant {
	width:900px; 
	margin-left:auto; 
	margin-right:auto;
}
.zilanmu {
	width: 443px;
	height: 163px;
	float:left;
	margin:3px;
	background-color:#FFFFFF;
}
.lanmubiaoti {
	height:23px;
	vertical-align:middle;
	background-image:url(cxzy/2010fzjj_01.jpg);
	font-weight:bold;
	LINE-HEIGHT: 23px;
	font-size:14px;
	padding-left:5px;
}
.lanmuliebiao {
	height:130px;
}
.lanmuliebiao li {
	height: 18px;
}
</style>
</head>
<%
Session s = HibernateUtil.getSessionFactory().openSession();
String dirid = "100823055541";

Directory directory = (Directory) s.load(Directory.class, dirid);

Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
q.setString(0, dirid);
List<Directory> dirs = q.list();

request.setAttribute("dirs", dirs);

int size = 8;


Paging<News> pag = new Paging<News>(0, size);


for(int i=0; i<dirs.size(); i++) {
	//当前目录下的子目录News
	List<News> newses;
	String subdirid = dirs.get(i).getDirid();//"100823055654";//领导讲话
	q = s.createQuery("from News n where n.directory.dirid = ? order by n.filltime desc");
	q.setString(0, subdirid);
	q.setFirstResult(pag.getBegini());
	q.setMaxResults(size);
	newses = q.list();
	
	dirs.get(i).setNewses(newses);
	request.setAttribute("newses" + subdirid, newses);
}


%>
<body>
<div align="center" id="header">
<img src="cxzy/cyzx.jpg" width="900" height="245" />
</div>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<c:forEach items="${dirs}" var="dir" varStatus="s">
		<td valign="top"><table width="100%" border="0" >
			<tr>
				<td height="23" background="cxzy/2010fzjj_01.jpg">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td width="400"  class="lanmubiaoti">${dir.dirnamechs }</td>
						<td><a href="list.jsp?dirid=${dir.dirid }" target="_blank">更多</a></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td height="140" bgcolor="#FFFFFF" valign="top"><table width="100%" border="0">
					<c:forEach items="${dir.newses}" var="n" begin="0" end="6">
						<tr>
							<td>
							<c:if test="${n.news}">
								<img src="../res/images/gif071.gif" />
							</c:if>
							<a href='shownews.jsp?newsid=${n.newsid }' target='_blank' title='${n.title1 }' >${fn:substring(n.title1, 0, 26) }</a>
							</td>
							<td width="80" align="right"><fmt:formatDate value="${n.filltime}" /></td>
						</tr>
					</c:forEach>
				</table></td>
			</tr>
		</table></td>
		
		<c:if test="${s.index%2 == 1}">${"</tr><tr>"}</c:if>
		</c:forEach>
	</tr>
</table>

<hr />
<div id="footer" align="center">玉环县公安局</div>
</body>
</html>

<%s.close();%>