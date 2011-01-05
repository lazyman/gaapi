<%@ page  contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>

<%@page import="cn.com.lazyhome.util.Paging"%>
<%@page import="org.tingoo.gaweb2010.news.News"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0045)http://www.sqrb.com.cn/xwzt/2010cxzy/txly.htm -->
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

Directory directory = (Directory)s.load(Directory.class, dirid);
Paging<News> pag = new Paging<News>(page_i, size);

//当前目录下的子目录News
// count
Query q;

	q = s.createQuery("select count(*) from News n where n.directory.dirid = ?");
	q.setString(0, dirid);
	int count = ((Long)q.list().get(0)).intValue();
	pag.setCount(count);
	pag.setCurpage(page_i);
	
	q = s.createQuery("from News n where n.directory.dirid = ? order by n.filltime desc");
	q.setString(0, dirid);
	q.setFirstResult(pag.getBegini());
	q.setMaxResults(size);
	List<News> newses = q.list();
	pag.setData(newses);


request.setAttribute("pag", pag);
request.setAttribute("newses", newses);
request.setAttribute("dir", directory);
%>
<HTML><HEAD><TITLE>创先争优活动专题</TITLE>
<META content="MSHTML 6.00.2900.3698" name=GENERATOR>
<LINK href="cxzy/kxfzstyle.css" type=text/css 
rel=stylesheet><LINK href="cxzy/kxfzspecial.css" type=text/css 
rel=stylesheet><LINK href="cxzy/kxfzljsq.css" type=text/css 
rel=stylesheet>
<STYLE type=text/css>
.title {
	FONT-WEIGHT: 100; FONT-SIZE: 18px; LINE-HEIGHT: 45px; FONT-FAMILY: "黑体"; TEXT-DECORATION: none
}
BODY {
	BACKGROUND-COLOR: #a51c18
}
</STYLE>
</HEAD>
<BODY>
<CENTER><IMG height=245 src="cxzy/cyzx.jpg" width=900> 
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
  <TBODY>
  <TR>
    <TD>
      <TABLE cellSpacing=0 cellPadding=0 width=900 align=center bgColor=#ffffff 
      border=0>
        <TBODY>
        <TR>
          <TD 
          style="PADDING-RIGHT: 4px; PADDING-LEFT: 4px; PADDING-BOTTOM: 4px; PADDING-TOP: 4px" 
          vAlign=top>
            <TABLE cellSpacing=0 cellPadding=0 width=895 border=0>
              <TBODY>
              <TR>
                <TD 
                style="BORDER-RIGHT: #bda686 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #bda686 1px solid; PADDING-LEFT: 2px; PADDING-BOTTOM: 2px; BORDER-LEFT: #bda686 1px solid; PADDING-TOP: 2px; BORDER-BOTTOM: #bda686 1px solid" 
                vAlign=top height=600>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=font12 align=middle width=66 height=24><SPAN 
                        class=style1>当前位置:</SPAN></TD>
                      <TD class="sx001 sx031b font12 xhx2" 
                      style="PADDING-RIGHT: 10px" align=left width=534><a href=".">首页</a> =&gt; <a href="list.jsp?dirid=${dir.dirid }">${dir.dirnamechs }</a> </TD>
                    </TR>
                    <TR>
                      <TD 
                      background="cxzy/20081025-zhhuan-02.gif" 
                      colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR></TBODY></TABLE><!--begin 40613-0-9-->
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
					<c:forEach items="${pag.data}" var="news">
                    <TR>
                      <TD class=sx055a style="PADDING-LEFT: 8px" 
                      width="2%" height="23px">·</TD>
                      <TD class="x002 sx031b font14 xhx2 hg22" 
                      style="LINE-HEIGHT: 24px" width="*">
                        <DIV class=sx005a align=left><A class=sx002 
                        href="shownews.jsp?newsid=${news.newsid}" 
                        target=_blank >
                        <c:if test="${news.news}">
							<img src="../res/images/gif071.gif" border="0" />
						</c:if>
						${news.title1}</A></DIV></TD>
						<td width="80" align="right"> <fmt:formatDate value="${n.filltime}" /> </td>
						</TR>
                        </c:forEach>
                        <tr>
                        <td colspan="3" height="30" align="right">
                        共<font color="red">${pag.count}</font>条 | ${pag.size}条/页  当前：第<font color="red">${pag.curpage}</font>页 / 共${pag.totalpage}页
								|
		<a href="?dirid=${param['dirid'] }&page=1">首页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.curpage - 1 }">上一页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.curpage + 1 }">下一页</a>
		<a href="?dirid=${param['dirid'] }&page=${pag.totalpage }">尾页</a>
                        </td>
                        </tr>
                        </TBODY></TABLE>
</TD>
                <TD 
  width=4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<HR width=900>

<div id="footer" align="center">玉环县公安局</div>
</CENTER></BODY></HTML>
<%s.close();%>