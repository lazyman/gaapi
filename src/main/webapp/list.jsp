<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>

<%@page import="cn.com.lazyhome.util.Paging"%>
<%@page import="org.tingoo.gaweb2010.news.News"%><html xmlns="http://www.w3.org/1999/xhtml" >
<%
Session s = HibernateUtil.getSessionFactory().openSession();
String dirid = request.getParameter("dirid");

int size = 25;
String page_s = request.getParameter("page");
int page_i;
try {
	page_i = Integer.parseInt(page_s);
} catch(Exception e) {
	page_i = 1;
}

Directory directory = (Directory)s.load(Directory.class, dirid);
Paging<News> pag = new Paging<News>(page_i, size);

//当前目录下的子目录News
// count
Query q;
q = s.createQuery("select count(*) from News n where n.directory.dirid in (select d.dirid from Directory d where d.parent.dirid = ? )");
q.setString(0, dirid);
int count = ((Long)q.list().get(0)).intValue();
pag.setCount(count);
//list
q = s.createQuery("from News n where n.directory.dirid in (select d.dirid from Directory d where d.parent.dirid = ? ) order by n.filltime desc");
q.setString(0, dirid);
q.setFirstResult(pag.getBegini());
q.setMaxResults(pag.getSize());
List newses = q.list();

//sub category
q = s.createQuery("from Directory d where d.parent.dirid = ? order by d.dirsort");
q.setString(0, dirid);
List subcat = q.list();
request.setAttribute("subcat", subcat);


// 当前目录
if(newses.size() == 0) {
	q = s.createQuery("select count(*) from News n where n.directory.dirid = ?");
	q.setString(0, dirid);
	count = ((Long)q.list().get(0)).intValue();
	pag.setCount(count);
	pag.setCurpage(page_i);
	
	q = s.createQuery("from News n where n.directory.dirid = ? order by n.filltime desc");
	q.setString(0, dirid);
	q.setFirstResult(pag.getBegini());
	q.setMaxResults(size);
	newses = q.list();
}

request.setAttribute("pag", pag);
request.setAttribute("newses", newses);
request.setAttribute("dir", directory);
%>
<head>
    <title>信息化应用与建设专栏－玉环公安门户网站</title>
    <link href="res/css/style.css" rel="stylesheet" type="text/css" />
    <link href="res/css/zt_zfjszt_css.css" rel="stylesheet" type="text/css" />
	<link href="res/css/zt_dch.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		function subcatMover(ev) {
			//alert(event.clientX);
			var obj = document.getElementById("subcat");

			if(obj.innerHTML.strip() == "") {
				return;
			}
			
			obj.style.display = "";
			
			obj.style.left = document.body.scrollLeft+event.clientX - 10;
			obj.style.top = document.body.scrollTop+event.clientY;
		}
		function subcatMout() {
			var obj = document.getElementById("subcat");
			obj.style.display = "none";
		}
		function subcatUlMover() {
			var obj = document.getElementById("subcat");
			obj.style.display = "";
		}
	</script>
</head>
<body>

<jsp:include page="top.jsp">
	<jsp:param value="100125100445" name="topdirid"/>
</jsp:include>

<ul id="subcat" onMouseOver="subcatUlMover()" onMouseOut="subcatMout()" style="display: none">
	<c:forEach items="${subcat}" var="cat">
	<li><a href="list.jsp?dirid=${cat.dirid }">${ cat.dirnamechs }</a></li>
	</c:forEach>
</ul>

<table cellspacing="0" cellpadding="0" align="center" border="0" width="1000">
    <tbody>
        <tr>
            <td valign="top" width="210" style="padding-right:5px;">
				<jsp:include page="left.jsp"></jsp:include>
            </td>
            <td valign="top" width="1" bgcolor="#0099FF" ></td>
            <td valign="top" height="620">
            <table cellspacing="0" cellpadding="0" width="12" border="0">
                <tbody>
                    <tr>
                        <td height="5"></td>
                    </tr>
                </tbody>
            </table>
            <table height="100%" cellspacing="0" cellpadding="0" width="760" align="center" border="0">
                <tbody>
                    <tr>
                        <td valign="top" height="27">
                        <table height="26" cellspacing="0" cellpadding="0" width="760" align="center" border="0">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="center" width="25" bgcolor="#eeeeee" height="26"><img height="6" alt="" src="res/images/ss.jpg" width="10"/></td>
                                    <td bgcolor="#eeeeee" width="685" valign="middle"><span class="font12black2" style="color:#000000; font-weight:bold">
                                    	<c:if test="${dir.parent.isshow == 0}">
                                    	${dir.parent.dirnamechs }
                                    	</c:if>
                                    	<c:if test="${dir.parent.isshow == 1}">
                                    	<a href="list.jsp?dirid=${dir.parent.dirid }">${dir.parent.dirnamechs }</a>
                                    	</c:if>
                                    	<img height="6" alt="" src="res/images/ss.jpg" width="10"/>
                                    	<span onMouseOver="subcatMover()" onMouseOut="subcatMout()">${dir.dirnamechs }</span>
										</span>
                                    </td>
                                    <td class="font12black" align="center" width="50" bgcolor="#eeeeee"> </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#9a9a9a" colspan="3" height="1"></td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <!-- news list begin -->
                    <tr>
                        <td class="font12black" style="PADDING-RIGHT: 7px; PADDING-LEFT: 7px; PADDING-BOTTOM: 7px; PADDING-TOP: 7px" valign="top" >
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <c:forEach items="${newses}" var="news">
                        	<tr>
                                <td align="center" width="5%" height="25"><img height="6" alt="" src="res/images/dian.jpg" width="5"/></td>
                                <td width="80%">
                                	<c:if test="${news.news}">
										<img src="./res/images/gif071.gif" />
									</c:if>
									<c:if test="${news.directory.dirid != param['dirid'] }">
									[<a href="list.jsp?dirid=${news.directory.dirid}">${news.directory.dirnamechs}</a>]
									</c:if>
									<a href='shownews.jsp?newsid=${news.newsid }' target='_blank' title='${news.title1 }' class='css'>${news.title1 }</a>
								</td>
                                <td width="12%" ><span class='css'><fmt:formatDate value="${news.filltime}" pattern="yyyy-MM-dd"/></span></td>
                            </tr>
                            <tr>
                                <td background="res/images/xx.gif" colspan="3" height="1"></td>
                            </tr>
                        </c:forEach>
                        </table>
                        </td>
                    </tr>
					<tr>
						<td>
						<table bordercolor="#d4d0c8" height="24" cellspacing="0" cellpadding="0" width="760" align="center" bgcolor="#eeeeee" border="0">
                <tbody>
                    <tr>
                        <td valign="middle" align="right" height="24">
                        共<font color="red">${pag.count}</font>条 | ${pag.size}条/页  当前：第<font color="red">${pag.curpage}</font>页 / 共${pag.totalpage}页
								|
		<a href="?dirid=${param['dirid'] }&page=1">首页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.curpage - 1 }">上一页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.curpage + 1 }">下一页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.totalpage }">尾页</a>
						</td>
                    </tr>
                </tbody>
            </table>
						</td>
					</tr>
                    <!-- news list end  -->
                </tbody>
            </table>
            <table cellspacing="0" cellpadding="0" width="12" border="0">
                <tbody>
                    <tr>
                        <td style="width: 12px; height: 19px">
                        </td>
                    </tr>
                </tbody>
            </table>
            </td>
        </tr>
    </tbody>
</table>

<jsp:include page="foot.jsp" />
</body>
</html>
<%s.close();%>
