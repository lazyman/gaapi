<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="cn.com.lazyhome.util.Paging"%>
<%@page import="org.tingoo.gaweb2010.news.News"%><html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>信息化建设与应用专栏－玉环公安门户网站</title>
    <link href="../res/css/style.css" rel="stylesheet" type="text/css" />
    <link href="../res/css/zt_zfjszt_css.css" rel="stylesheet" type="text/css" />
    <link href="../res/css/zt_dch.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="../include/softtop.jsp">
	<jsp:param value="100125100445" name="topdirid"/>
</jsp:include>
<%
Session s = HibernateUtil.getSessionFactory().openSession();
String dirid = request.getParameter("dirid");
int size = 20;
String page_s = request.getParameter("page");
int page_i;
try {
	page_i = Integer.parseInt(page_s);
} catch(Exception e) {
	page_i = 1;
}
Paging<News> pag = new Paging<News>(page_i, size);


Directory directory = (Directory)s.load(Directory.class, dirid);

Query q = s.createQuery("from Directory dir where dir.parent.dirid = ? and dir.isshow = 1 order by dir.dirsort");
q.setString(0, directory.getParent().getDirid());
List list = q.list();

request.setAttribute("dirs", list);
request.setAttribute("dir", directory);
%>
<table cellspacing="0" cellpadding="0" align="center" border="0" width="1000">
    <tbody>
        <tr>
            <td valign="top" width="210" height="579" style="padding-right:5px;">
				                <table border="0" cellpadding="0" cellspacing="0" height="16" width="210">
                    <tbody>
                        <tr>
                            <td valign="top" width="100%" height="242">
                                <table class="lanmutable" border="0" cellpadding="0" cellspacing="0"
                                    height="23" width="100%">
                                    <tbody>
                                        <tr>
										<!-- 当前父类名 -->
                                            <td height="25" align="left" class="font12black" background="../res/images/bbg_bak.jpg" style="padding-left: 28px" colspan="2">
                                                ${dir.parent.dirnamechs }</td>
                                        </tr>
                                        <tr>
                                            <td align="left" colspan = "2" style="height: 19px">
											<ul class="catlist">
                                            <c:forEach items="${dirs}" var="dd">
												<li><a href="category.jsp?dirid=${dd.dirid }" class="font12black">${dd.dirnamechs }</a></li>
                                            </c:forEach>
											</ul>
                                            </td>
                                        </tr>
									</tbody>
								</table>
								<table border="0" cellpadding="0" cellspacing="0"><tr><td height="5">&nbsp;</td></tr></table>
                                <table class="lanmutable" border="0" cellpadding="0" cellspacing="0"
                                    height="23" width="100%">
                                    <tbody>
										<tr>
											<td align="center" bgcolor="#f0f4f5" colspan="2">
											<!-- 友情链接 Start -->
                                                        <iframe id="ifmLink" src="http://10.123.123.123/dtwz/yhWebSite/index/link.aspx" frameborder="0" width="100%" scrolling="no"
                                                            height="145"></iframe>
                                            <!-- 友情链接 End -->
											</td>
										</tr>
                                    </tbody>
                                </table>
								
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <td valign="top" width="1" bgcolor="#0099FF" ></td>
            <td valign="top" style="height: 579px">
            <table cellspacing="0" cellpadding="0" width="12" border="0">
                <tbody>
                    <tr>
                        <td height="5"></td>
                    </tr>
                </tbody>
            </table>
            <table height="521" cellspacing="0" cellpadding="0" width="760" align="center" border="0">
                <tbody>
                    <tr>
                        <td valign="top" height="27">
                        <table height="26" cellspacing="0" cellpadding="0" width="760" align="center" border="0">
                            <tbody>
                                <tr>
                                    <td valign="middle" align="center" width="25" bgcolor="#eeeeee" height="26"><img height="6" alt="" src="/images/zt_images/ss.jpg" width="10"/></td>
                                     <td bgcolor="#eeeeee" width="685" align="left"><b><a href="./">软件下载</a> - ${dir.parent.dirnamechs }
                                         -${dir.dirnamechs }
                                  </b></td>
                                     <td class="font12black" align="center" width="50" bgcolor="#eeeeee"> </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#9a9a9a" colspan="3" height="1"></td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="font12black" style="PADDING-RIGHT: 7px; PADDING-LEFT: 7px; PADDING-BOTTOM: 7px; PADDING-TOP: 7px" valign="top" height="494">
						<%
						q = s.createQuery("select count(*) from News n where n.directory.dirid =?");
						q.setString(0, dirid);
						int count = ((Long)q.list().get(0)).intValue();
						pag.setCount(count);
						
						q = s.createQuery("from News n where n.directory.dirid=?");
						q.setString(0, dirid);
						
						q.setFirstResult(pag.getBegini());
						q.setMaxResults(pag.getSize());
						list = q.list();
						
						
						request.setAttribute("softs", list);
						request.setAttribute("pag", pag);
						%>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<c:forEach var="news" items="${softs}">
							<tr>
								  <td align="center" width="5%" height="25"><img height="6" alt="" src="../res/images/dian.jpg" width="5"/></td>
								  <td width="80%"><a href='../shownews.jsp?newsid=${news.newsid }' target='_blank' title='${news.title1 }' class='css'>${news.title1 }</a></td>
								  <td width="12%" ><span class='css'><fmt:formatDate value="${news.filltime}"  /></span></td>
							</tr>
							<tr>
								<td background="../res/images/xx.gif" colspan="3" height="1"></td>
							</tr>
							<tr>
								<td colspan="3" height="6"></td>
							</tr>
							</c:forEach>
						</table>
						</td>
                    </tr>
                </tbody>
            </table>
            <table cellspacing="0" cellpadding="0" width="12" border="0">
                <tbody>
                    <tr>
                        <td style="width: 12px; height: 19px"></td>
                    </tr>
                </tbody>
            </table>
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
            </table><table cellspacing="0" cellpadding="0" width="12" border="0">
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
    
<jsp:include page="../foot.jsp" />
</body>
</html>
<%s.close();%>
