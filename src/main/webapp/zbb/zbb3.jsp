<%@page import="cn.com.lazyhome.ga.duty.DutyImpl"%>
<%@page import="cn.com.lazyhome.ga.duty.Duty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="cn.com.lazyhome.util.Util"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="java.util.List"%>
<%@page import="cn.com.lazyhome.ga.duty.WatchInfo"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>值班表查询</title>
<%
	//定义今天、明天、后天的时间
	Calendar today = Calendar.getInstance();
	Calendar tomorrow = Calendar.getInstance();
	Calendar day2 = Calendar.getInstance();
	if(today.get(Calendar.HOUR_OF_DAY) < 8) {
		today.add(Calendar.DATE, -1);
	}
	
	tomorrow.setTimeInMillis(today.getTimeInMillis());
	tomorrow.add(Calendar.DATE, 1);
	day2.setTimeInMillis(today.getTimeInMillis());
	day2.add(Calendar.DATE, 2);
	
	String showdate;
	
	Duty duty = new DutyImpl();
	JSONObject city_t;//市局 today
	JSONObject local_t;//本地 today
	JSONObject city_r; //市局 request
	JSONObject local_r; // 本地 request
	
	//JSONObject json;
	JSONObject dutyObj = null;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat todyFomate = new SimpleDateFormat("yyyy-MM-dd EEEE");
	//String date = sdf.format(today.getTime());
	
	
	
	
	// date1 明天 tomorrow
	// date2 后天 the day after tomorrow
	String date1 = sdf.format(tomorrow.getTime());
	String date2 = sdf.format(day2.getTime());
	String preday, nextday;
	
	// 请求的日期
	String reqDateStr = request.getParameter("reqDate");
	Calendar reqDate = Calendar.getInstance();
	try {
		reqDate.setTime(sdf.parse(reqDateStr));
	} catch(Exception e) {
		reqDate.setTimeInMillis(tomorrow.getTimeInMillis());
	}

	String reqout;			//请求日期所对应的输出字符
	Util util = new Util();
	if(util.equDate(reqDate, day2)) {
		reqout = "后天值班表（" + todyFomate.format(reqDate.getTime()) + "）";
	} else if(util.equDate(reqDate, tomorrow)) {
		reqout = "明日值班表（" + todyFomate.format(reqDate.getTime()) + "）";
	} else if(util.equDate(reqDate, today)) {
		reqout = "今日值班表（" + todyFomate.format(reqDate.getTime()) + "）";
	} else {
		reqout = todyFomate.format(reqDate.getTime());
	}
	//确定今天时间和请求时间end

	local_t = duty.getLocalDuty(today);
	local_r = duty.getLocalDuty(reqDate);
%>
<script type="text/javascript" src="../res/js/prototype-1.6.1.js"></script>
<style type="text/css">
body {
	FONT-FAMILY: "宋体";
	FONT-SIZE: 10pt;
}

a:active {
	COLOR: #000000;
	text-decoration: none;
}

a:hover {
	COLOR: #ff0033;
	text-decoration: underline;
}

a:link {
	COLOR: #000000;
	TEXT-DECORATION: none;
}

a:visited {
	COLOR: #000000;
	TEXT-DECORATION: none;
}

.leftcontant {
	float: left;
	background-image:
		url("http://10.123.123.123/dtwz/yhWebSite/images/bj.jpg");
}

.rightcontant {
	float: left;
}

.contantTitle {
	clear: both;
	background-color: #00ccff;
	height: 20px;
	width: 100%;
	line-height: 20px;
}
</style>
<script type="text/javascript">
	function fPopUpCalendarDlg(ctrlobj)
	{
		showx = event.screenX - event.offsetX;
		showy = event.screenY - event.offsetY + 18;
		newWINwidth =18;
	
		retval = window.showModalDialog("../include/include_time/calendardlg.htm", "", "dialogWidth:196px; dialogHeight:210px; dialogLeft:"+showx+"px; dialogTop:"+showy+"px; status:no; directories:yes;scrollbars:no;Resizable=no; "  );
		if( retval != null ){
			ctrlobj.value = retval;
		}
	}

	var local_t = "<%= local_t.toString() %>";
	var local_r = "<%= local_r.toString() %>";
</script>
</head>
<body>
<div id="maincontant">
<h1></h1>
<div class="contantTitle">
值班时间从当天8：00至次日8：00止<br />
<b>今日值班表（<%=todyFomate.format(today.getTime()) %>）</b>
<a href="?reqDate=<%=date1 %>">明天</a> <a href="?reqDate=<%=date2 %>">后天</a>
</div>
<div class="leftcontant">
<table width="213" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<th width="100%" colspan="2" height="25">局机关值班表</th>
	</tr>

</table>
<br />
<div>局领导坐堂值班电话：</div>
<div style="padding-left:80px">87357511，7511</div>
<div style="padding-left:80px">87357512，7512</div>
<div>&nbsp;</div>
</div>
<div class="rightcontant">
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<th colspan="5">动态管控值班表 [<a href="http://www.yhx.tzs.zj/gaweb2003/zbb/system/index.asp">管理登录</a>]</th>
	</tr>
	<tr>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="127">单位</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="142">值班电话</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="69">内线</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="69">值班领导	</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="153">值班人员</th>
	</tr>
	<%
		JSONArray duties = local_t.getJSONArray("depts");
		for (int i = 0; i < duties.length(); i++) {
			dutyObj = duties.getJSONObject(i);
	%>
	<tr>
		<td><%=dutyObj.getString("deptname")%>&nbsp;</td>
		<td><%=dutyObj.getString("tel")%>&nbsp;</td>
		<td><%=dutyObj.getString("intel")%>&nbsp;</td>
		<td>
		<%
			String name, shortno, mobile, worktel;
				if (dutyObj.getJSONArray("managers").length() > 0) {
					JSONObject tmp = dutyObj.getJSONArray("managers")
							.getJSONObject(0);
					name = tmp.getString("name");
					shortno = tmp.getString("shortno");
					mobile = tmp.getString("mobile");
					worktel = tmp.getString("worktel");

					out.println(" <a href='#' title='姓名：" + name + "\n手机:" + mobile + "\n短号:"
							+ shortno + "\n办公电话:" + worktel + "'>" + name);
					out.print(shortno.length() > 0 ? shortno : mobile);
					out.print("</a> ");
				}
		%>		</td>
		<td>
		<%
			for (int j = 0; j < dutyObj.getJSONArray("dutyPersons")
						.length(); j++) {
					JSONObject tmp = dutyObj.getJSONArray("dutyPersons")
							.getJSONObject(j);
					name = tmp.getString("name");
					shortno = tmp.getString("shortno");
					mobile = tmp.getString("mobile");
					worktel = tmp.getString("worktel");

					out.println(" <a href='#' title='姓名：" + name + "\n手机:" + mobile + "\n短号:"
							+ shortno + "\n办公电话:" + worktel + "'>" + name);
					out.print(shortno.length() > 0 ? shortno : mobile);
					out.print("</a> ");
				}
		%>		</td>
	</tr>
	<%
		}
	%>
</table>
</div>



<div class="contantTitle">
<span style="float: left">

<%=reqout%></span>
<form action="" style="float: right;">
<input name="reqDate" value="<%=sdf.format(reqDate.getTime())%>" size="10" /><img
	onclick="fPopUpCalendarDlg(reqDate);return false;" alt="弹出日历下拉菜单"
	src="../include/include_time/images/time_image.gif" style="cursor: pointer;" /><input type="submit"
	value="查看值班表" /></form>
</div>

<div class="leftcontant">
<table width="213" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<th width="100%" colspan="2" height="25">局机关值班表</th>
	</tr>
	
	
</table>
</div>
<div class="rightcontant">
<table width="100%" border="1" cellpadding="1" cellspacing="2">
	<tr>
		<th colspan="5">动态管控值班表</th>
	</tr>
	<tr>
		<th width="123" nowrap="nowrap" bgcolor="#C0C0C0">单位</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="124">值班电话</th>
		<th bgcolor="#C0C0C0" nowrap="nowrap" width="54">内线</th>
		<th width="66" nowrap="nowrap" bgcolor="#C0C0C0">值班领导</th>
		<th width="322" nowrap="nowrap" bgcolor="#C0C0C0">值班人员</th>
	</tr>
	<%
		duties = local_r.getJSONArray("depts");
		for (int i = 0; i < duties.length(); i++) {
			dutyObj = duties.getJSONObject(i);
	%>
	<tr>
		<td><%=dutyObj.getString("deptname")%></td>
		<td><%=dutyObj.getString("tel")%>&nbsp;</td>
		<td><%=dutyObj.getString("intel")%>&nbsp;</td>
		<td>
		<%
			String name, shortno, mobile, worktel;
				if (dutyObj.getJSONArray("managers").length() > 0) {
					JSONObject tmp = dutyObj.getJSONArray("managers").getJSONObject(0);
					name = tmp.getString("name");
					shortno = tmp.getString("shortno");
					mobile = tmp.getString("mobile");
					worktel = tmp.getString("worktel");

					out.println(" <a href='#' title='姓名：" + name + "\n手机:" + mobile + "\n短号:"
							+ shortno + "\n办公电话:" + worktel + "'>" + name);
					out.print(shortno.length() > 0 ? shortno : mobile);
					out.print("</a> ");
				}
		%>		</td>
		<td>
		<%
			for (int j = 0; j < dutyObj.getJSONArray("dutyPersons")
						.length(); j++) {
					JSONObject tmp = dutyObj.getJSONArray("dutyPersons")
							.getJSONObject(j);
					name = tmp.getString("name");
					shortno = tmp.getString("shortno");
					mobile = tmp.getString("mobile");
					worktel = tmp.getString("worktel");

					out.println(" <a href='#' title='姓名：" + name + "\n手机:" + mobile + "\n短号:"
							+ shortno + "\n办公电话:" + worktel + "'>" + name);
					out.print(shortno.length() > 0 ? shortno : mobile);
					out.print("</a> ");
				}
		%>		</td>
	</tr>
	<%
		}
	%>
</table>
</div>
</div>
</body>
</html>
