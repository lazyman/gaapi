<%@ page  contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%>
<%@page import="org.tingoo.gaweb2010.news.News"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
Session s = HibernateUtil.getSessionFactory().openSession();
String newsid = request.getParameter("newsid");
Long nid = Long.parseLong(newsid);
News news = (News)s.load(News.class, nid);

request.setAttribute("news", news);
%>
<title>${news.title1 } - ${news.directory.dirnamechs }</title>
<link href="../res/css/xfcss.css" type="text/css" rel="stylesheet"/>
</head>
<body>

<jsp:include page="top.jsp">
	<jsp:param value="100406023320" name="topdirid"/>
</jsp:include>


<table cellspacing="0" cellpadding="0" width="12" border="0">
    <tbody>
        <tr>
            <td height="1"></td>
        </tr>
    </tbody>
</table> 
 <table  cellspacing="0" cellpadding="0" width="800" border="0" align="center">
    <tbody>
        <tr>
            <td height="33" align="center" valign="middle" bgcolor="#99EDFF" class="font_red2"><span class="font16"><strong><span class='css' >
            ${news.title1 }
            </span></strong></span></td>
        </tr>
        <tr>
            <td valign="top" align="center" width="100%">
            <table height="20" cellspacing="0" cellpadding="0" border="0" width="100%">
                <tbody>
                    <tr>
                        <td  valign="top" height="25">玉环公安门户网站&nbsp;&nbsp; &nbsp;&nbsp; 来源：
                        ${news.from } 发布时间：${news.filltime }点击率：${news.hits }　　</td>
                    </tr>
                    <tr>
                        <td align="left" height="500" valign="top">
                        <div style="width:700; ">
							<%=news.getContents().getSubString(1, (int)news.getContents().length()) %>
                        </div>
                        </td>
                    </tr>
                </tbody>
            </table>        
            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                <tbody>
                    <tr>
                        <td align="center" colspan="2" height="5">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                                <tr>
                                    <td background="../res/images/d.jpg" bgcolor="#eeeeee" height="3"></td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="black_font12" width="57%" height="30" align=left>【作者：${news.author}<span class='css'></span>】 </td>
                        <td class="black_font12" align="center" width="43%">
                        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
                            <tbody>
                                <tr>
                                    <td align="right">
                                    <table height="6" cellspacing="0" cellpadding="0" width="90" border="0">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    </td>
                                    <td align="right" width="10"></td>
                                    <td width="80"><input style="HEIGHT: 20px" onClick="javascript:window.print()" type="button" name="print22" value="打印本页"/> </td>
                                    <td width="80"><input style="HEIGHT: 20px" onClick="window.close()" type="button" name="close22" value="关闭窗口"/> </td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>
                  </tbody>
			</table>
            </td>
        </tr>
</table> 

<jsp:include page="foot.jsp" />
</body>
</html>
<%s.close();%>