<%@ page  contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0067)http://www.sqrb.com.cn/xwzt/2010cxzy/2010-08/06/content_1246523.htm -->
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.news.News"%>
<%@page import="org.hibernate.Transaction"%>
<%
Session s = HibernateUtil.getSessionFactory().openSession();
String newsid = request.getParameter("newsid");
Long nid = Long.parseLong(newsid);

Transaction t = s.beginTransaction();
News news = (News)s.load(News.class, nid);
news.setHits(news.getHits() + 1);

s.update(news);
t.commit();

//NewsDao dao = new NewsDaoImpl(s);
//dao.addHits(news);

news.getDirectory().getDirnamechs();
s.close();

request.setAttribute("news", news);

%>
<HTML><HEAD><TITLE>${news.title1 } - 创先争优活动专题</TITLE>

<LINK href="cxzy/kxfzstyle.css" type=text/css 
rel=stylesheet><LINK href="cxzy/kxfzspecial.css" type=text/css 
rel=stylesheet><LINK href="cxzy/kxfzljsq.css" type=text/css 
rel=stylesheet>
<STYLE type=text/css>

.title {
	FONT-WEIGHT: 100; FONT-SIZE: 18px; LINE-HEIGHT: 45px; FONT-FAMILY: "黑体"; TEXT-DECORATION: none
}
BODY {
	BACKGROUND-COLOR: #a51c18; margin: 0px;
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
                vAlign=top height=500>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD class=font12 align=middle width=66 height=24>&nbsp;</TD>
                      <TD class="sx001 sx031b font12 xhx2" 
                      style="PADDING-RIGHT: 10px" align=left width=534><A 
                        class="sx001 sx031b font12 xhx2" 
                        href="http://cq.cqnews.net/cqztlm/sz/kxfzg/qgdt_kxfzg/200812/t20081222_2800937.htm#" 
                        target=_blank></A><A class=sx001 
                        href="http://cq.cqnews.net/" sx031b font12 
                    xhx2></A></TD></TR>
                    <TR>
                      <TD 
                      background="cxzy/20081025-zhhuan-02.gif" 
                      colSpan=2 height=5></TD></TR>
                    <TR>
                      <TD colSpan=2 height=5></TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=0 cellPadding=0 width="99%" align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=title align=middle height=35>
                        <DIV align=center>${news.title1 } </DIV></TD></TR>
                    <TR>
                      <TD class=title align=middle height=35>
                        <DIV align=center></DIV>
                        <DIV align=left></DIV></TD></TR>
                    <TR>
                      <TD bgColor=#a10c0e height=1></TD></TR>
                    <TR>
                      <TD align=middle height=28><SPAN 
                        class="font12 sx022 sx022b hg18 xhx">【来源： ${news.from } 】 
                        【时间： ${news.filltime } 】</SPAN></TD></TR>
                    <TR>
                      <TD class="font14 sx100a hg26" align=left height="300px" valign="top">
                        <DIV id=TRS_AUTOADD_1229927787640>
						${news.contentstr }
						</DIV></TD></TR>
                    <TR>
                      <TD height=2></TD></TR>
                    <TR>
                      <TD height=5>
                        <TABLE height=50 cellSpacing=0 cellPadding=0 width="100%" 
                        align=center border=0>
                          <TBODY>
                          <TR>
						  <td>【作者： ${news.author }】</td>
                            <TD vAlign=bottom align=right><input style="HEIGHT: 20px" onClick="javascript:window.print()" type="button" name="print22" value="打印本页"/>
                            	<input style="HEIGHT: 20px" onClick="window.close()" type="button" name="close22" value="关闭窗口"/></TD>
						</TR></TBODY></TABLE></TD></TR>
                    <TR>
                      <TD height=5></TD></TR></TBODY></TABLE></TD>
                <TD 
  width=4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
  </CENTER>
<HR width=900>
<div id="footer" align="center">玉环县公安局</div>

</BODY></HTML>
