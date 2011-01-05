<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://tele.skycn.com/sort/soft_sort.html -->

<%@page import="org.tingoo.gaweb2010.directory.Directory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="cn.com.lazyhome.util.HibernateUtil"%><HTML><HEAD><TITLE>软件下载 - 玉环信通科</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<jsp:include page="../include/softtop.jsp">
	<jsp:param value="100125100445" name="topdirid"/>
</jsp:include>

<TABLE cellSpacing=1 cellPadding=0 width=980 align=center bgColor=#a5c9f1 
border=0>
  <TBODY>
  <TR>
    <TD 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px" 
    bgColor=#ffffff>
	<TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><a href="./"><IMG 
                  height=40 src="res/sort_0.gif" width=120 
                  border=0></a></TD>
              </TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR bgColor="#f4f4f4">
                <TD height=30 width="100">
                  <P align=center><A 
                  href="category.jsp?dirid=100130115010"><FONT class=cyword>网警大队</FONT></A> </P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130115026"><font class=cyword>法制科</font></a></P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130115116" 
                  ><font class=cyword>后勤科</font></a></P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="http://www.skycn.com/sort/sort2010800_indate_DESC_1.html" 
                  ></a><a 
                  href="http://www.skycn.com/sort/sort2010500_indate_DESC_1.html" 
                  ></a></P></TD>
                <TD width="100">
                  <P align=center>&nbsp;</P></TD>
                <TD width="100"> <P align=center>&nbsp;</P></TD>
                <TD width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2010700_indate_DESC_1.html" 
                  ></A> </P></TD>
                <TD  width="100">
                  <P align=center>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_1.gif" width=120 
                  border=0></TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR bgColor=#ebf3ff>
                <TD height=30 width="100">
                  <P align=center><A 
                  href="category.jsp?dirid=100130115134" 
                  ><FONT class=cyword>主页浏览</FONT></A> </P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130115153" 
                  ><font class=cyword>FTP 工具</font></a></P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130115322" 
                  ><font class=cyword>网页制作</font></a></P></TD>
                <TD width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130115331" 
                  ><font class=cyword>远程控制</font></a></P></TD>
                <TD width="100">
                  <P align=center>&nbsp;</P></TD>
                <TD width="100"> <P align=center>&nbsp;</P></TD>
                <TD width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2010700_indate_DESC_1.html" 
                  ></A> </P></TD>
                <TD  width="100">
                  <P align=center>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_2.gif" width=120 
                  border=0></TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR>
                <TD bgColor=#f4f4f4 height=30 width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2020100_indate_DESC_1.html" 
                  ></A><a 
                  href="http://www.skycn.com/sort/sort2020200_indate_DESC_1.html" 
                  ></a> <a 
                  href="category.jsp?dirid=100130050436" 
                  ><font class=cyword>系统备份</font></a></P></TD>
                <TD bgColor=#f4f4f4 width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130050447" 
                  ><font class=cyword>升级补丁</font></a></P></TD>
                <TD bgColor=#f4f4f4 width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130050454" 
                  ><font class=cyword>常用驱动</font></a></P></TD>
                <TD bgColor=#f4f4f4 width="100"> </TD>
                <TD bgColor=#f4f4f4 width="100"> </TD>
                <TD bgColor=#f4f4f4 width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2020600_indate_DESC_1.html" 
                  ></A> </P></TD>
                <TD bgColor=#f4f4f4 width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2020700_indate_DESC_1.html" 
                  ></A> </P></TD>
                <TD bgColor=#f4f4f4 width="100">
                <P align=center><A 
                  href="http://www.skycn.com/sort/sort2020800_indate_DESC_1.html" 
                  ></A> </P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=top02 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0200_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_3.gif" width=120 
                  border=0></TD>
              </TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR>
                <TD bgColor=#ebf3ff height=30 width="100">
                  <P align=center><A 
                  href="category.jsp?dirid=100130050804" 
                  ><FONT class=cyword>压缩解压</FONT></A> </P></TD>
                <TD bgColor=#ebf3ff width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130050813" 
                  ><font class=cyword>文字处理</font></a></P></TD>
                <TD bgColor=#ebf3ff width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2030300_indate_DESC_1.html" 
                  ></A> <a 
                  href="category.jsp?dirid=100130050824" 
                  ><font class=cyword>汉字输入</font></a></P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff height=30>&nbsp;</TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=top03 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0300_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      
      <TABLE id=top04 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0400_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
		<TABLE id=top05 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0500_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_6.gif" width=120 
                  border=0></TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR bgColor="#f4f4f4">
                <TD width="100">
                  <P align=center><A 
                  href="category.jsp?dirid=100130050831" 
                  ><FONT class=cyword>视频播放</FONT></A> </P></TD>
                <TD width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2060200_indate_DESC_1.html" 
                  ></A> <a 
                  href="category.jsp?dirid=100130050837" 
                  ><font class=cyword>音频播放</font></a></P></TD>
                <TD width="100">
                  <P align=center><A 
                  href="http://www.skycn.com/sort/sort2060300_indate_DESC_1.html" 
                  ></A> <a 
                  href="category.jsp?dirid=100130050844" 
                  ><font class=cyword>图像处理</font></a></P></TD>
                <TD width="100">&nbsp;</TD>
                <TD width="100"><P align=center>&nbsp;</P></TD>
                <TD width="100"><P align=center>&nbsp;</P></TD>
                <TD width="100"><P align=center>&nbsp;</P></TD>
                <TD height=30><P align=center>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=top06 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0600_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      <TABLE id=top07 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0700_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      <TABLE id=top08 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0800_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_9.gif" width=120 
                  border=0></TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR>
                <TD bgColor=#ebf3ff width="100" height="30">
                  <P align=center> <a 
                  href="category.jsp?dirid=100130051300" 
                  ><font class=cyword>编程工具</font></a></P></TD>
                <TD bgColor=#ebf3ff width="100">
                  <P align=center><a 
                  href="category.jsp?dirid=100130053848" 
                  ><font class=cyword>数据库类</font></a></P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100">&nbsp;</TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100">&nbsp;</TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#ebf3ff width="100"><P align=center>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=top09 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_0900_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD height=3></TD></TR>
        <TR>
          <TD background="res/blue-line_12.gif" height=3></TD></TR>
        <TR>
          <TD height=3></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135>
            <TABLE cellSpacing=0 cellPadding=0 width=120 border=0>
              <TBODY>
              <TR>
                <TD><IMG 
                  height=40 src="res/sort_10.gif" width=120 
                  border=0></TD></TR></TBODY></TABLE></TD>
          <TD>
            <TABLE cellSpacing=1 cellPadding=2 width=820 align=center 
              border=0><TBODY>
              <TR>
                <TD width="100" height=30 bgColor=#f4f4f4>
                  <P align=center><a 
                  href="category.jsp?dirid=100130053908" 
                  ><font class=cyword>病毒防治</font></a></P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100"><P align=center>&nbsp;</P></TD>
                <TD bgColor=#f4f4f4 width="100">&nbsp;</TD>
              </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE id=top10 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_1000_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      <TABLE id=top11 style="DISPLAY: none" cellSpacing=1 cellPadding=0 
      width=955 align=center border=0>
        <TBODY>
        <TR>
          <TD width=135></TD>
          <TD align=left>
            <DIV id=clsBest>
            <UL>
              <SCRIPT language=javascript 
              src="res/sortsoft_jx_1100_v4.js"></SCRIPT>
            </UL></DIV></TD></TR></TBODY></TABLE>
      </TD>
  </TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=980 align=center>
  <TBODY>
  <TR>
    <TD height=20>&nbsp;</TD></TR></TBODY></TABLE><!-- 通用尾 -->
<DIV id=ft align="center" style="border-top-color:">2010 版权所有 玉环县公安局<br />
      本站由玉环县公安局办公室主管   科技信息通信科提供技术支持(@2010.2)<br />
    本站在1024*768分辨率、IE6.0以上环境下浏览效果最佳</DIV>
<DIV style="DISPLAY: none">
</DIV></BODY></HTML>
