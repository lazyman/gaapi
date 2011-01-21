<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel">
<body>

<h1 align="center">工资查询</h1>
<br />
<table width="700" border="0" align="center">
	<tr>
		<td width="10%">警号</td>
		<td width="20%"><input name="policeno" type="text" id="policeno"></td>
		<td width="10%">姓名</td>
		<td width="20%"><input name="name" type="text" id="name"></td>
		<td width="10%">月份</td>
		<td width="20%"><input name="month" type="text" id="month" value="1"></td>
	</tr>
	<tr>
		<td colspan="6" align="center"><input type="submit" name="Submit" value="查询"></td>
	</tr>
</table>

<table border='0'>
<tbody>
<tr><td>&nbsp;</td></tr>
</tbody>
</table>
<table border='1' borderColor='#8b8b89'>
<tbody>
<TR style="HEIGHT: 20px">

<TD class=clsGridHeadCell4 style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="EMP_CODE" >代码<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="EMP_NAME" >姓名<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="ORG_CODE" >科处室代码<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="ORG_NAME" >科处室名称<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N00" >职务工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N01" >级别工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N02" >技术等级工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N03" >岗位工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N04" >生活性补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N05" >工作性津贴1<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N06" >工作性津贴2<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N07" >警衔津贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N08" >特殊岗位津贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N09" >住房补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N10" >门诊医疗费包干<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N11" >通讯费补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N12" >车改补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N14" >其他1<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N15" >其他2<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N13" >补发工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N46" >应发合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="HOUSE_ACCU" >住房公积金<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N53" >个税<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="ENDT_INS" >养老保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="HOSP_INS" >医疗保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N49" >失业保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N52" >其他代扣项<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N47" >扣款合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_N48" >实发合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="MO" >月份<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4  fieldname="PR_PAYLIST_C01" >备注<SPAN></SPAN></TD></TR>
<s:iterator value="wages" var="wage">
<tr>
<TD class=Normal width=100>${wage.code }&nbsp;</TD>
<TD class=Normal width=100 >${wage.name }&nbsp;</TD>
<TD class=Normal width=100 >${wage.deptcode }&nbsp;</TD>
<TD class=Normal width=100 >${wage.deptname }&nbsp;</TD>
<TD class=Normal width=100 >${wage.zhiwuGz }&nbsp;</TD>
<TD class=Normal width=100 >${wage.jibieGz }&nbsp;</TD>
<TD class=Normal width=100 >${wage.jishudengjiGz }&nbsp;</TD>
<TD class=Normal width=100 >${wage.gangweiGz }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.shenghuoBt }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.gongzuoJt1 }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.gongzuoJt2 }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.jingxianJt }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.teshuJt }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.zhufangBt }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.yiliao }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.tongxun }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.chegai }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.qita1 }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.qita2 }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.bufa }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.yingfa }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.gongjijing }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.geshui }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.yanglaobaoxian }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.yiliaobaoxian }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.shiyebaoxian }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.qitadaikou }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.koukuanheji }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.shifaheji }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.yuefen }&nbsp;</TD>
<TD class=Normal  width=100 >${wage.beizhu }&nbsp;</TD>
</tr>
</s:iterator>
</tbody>
</table>
</body>
</html>
