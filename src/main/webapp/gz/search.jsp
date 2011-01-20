<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel">
<body>

<h1 align="center">工资发放表</h1>
<br />
<table width="600" border="0" align="center">
	<tr>
		<td width="80">警号</td>
		<td width="200"><input type="text" name="textfield"></td>
		<td width="80">姓名</td>
		<td width="200"><input type="text" name="textfield2"></td>
	</tr>
	<tr>
		<td colspan="4" align="center"><input type="submit" name="Submit" value="提交"></td>
	</tr>
</table>

<table border='0'>
<tbody>
<tr><td>&nbsp;</td></tr>
</tbody>
</table>
<table border='1' borderColor='#8b8b89'>


<COLGROUP id=BodyColGroup><COL id=EMP_CODE_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="EMP_CODE" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="代码">

<COL id=EMP_NAME_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="EMP_NAME" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="姓名">

<COL id=ORG_CODE_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="ORG_CODE" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="科处室代码">

<COL id=ORG_NAME_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="ORG_NAME" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="科处室名称">

<COL id=PR_PAYLIST_N00_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N00" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="职务工资">

<COL id=PR_PAYLIST_N01_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N01" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="级别工资">

<COL id=PR_PAYLIST_N02_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N02" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="技术等级工资">

<COL id=PR_PAYLIST_N03_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N03" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="岗位工资">

<COL id=PR_PAYLIST_N04_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N04" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="生活性补贴">

<COL id=PR_PAYLIST_N05_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N05" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="工作性津贴1">

<COL id=PR_PAYLIST_N06_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N06" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="工作性津贴2">

<COL id=PR_PAYLIST_N07_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N07" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="警衔津贴">

<COL id=PR_PAYLIST_N08_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N08" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="特殊岗位津贴">

<COL id=PR_PAYLIST_N09_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N09" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="住房补贴">

<COL id=PR_PAYLIST_N10_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N10" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="门诊医疗费包干">

<COL id=PR_PAYLIST_N11_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N11" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="通讯费补贴">

<COL id=PR_PAYLIST_N12_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N12" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="车改补贴">

<COL id=PR_PAYLIST_N14_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N14" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="其他1">

<COL id=PR_PAYLIST_N15_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N15" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="其他2">

<COL id=PR_PAYLIST_N13_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N13" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="补发工资">

<COL id=PR_PAYLIST_N46_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N46" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="应发合计">

<COL id=HOUSE_ACCU_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="HOUSE_ACCU" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="住房公积金">

<COL id=PR_PAYLIST_N53_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N53" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="个税">

<COL id=ENDT_INS_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="ENDT_INS" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="养老保险">

<COL id=HOSP_INS_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="HOSP_INS" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="医疗保险">

<COL id=PR_PAYLIST_N49_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N49" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="失业保险">

<COL id=PR_PAYLIST_N52_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N52" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="其他代扣项">

<COL id=PR_PAYLIST_N47_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N47" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="扣款合计">

<COL id=PR_PAYLIST_N48_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_N48" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="实发合计">

<COL id=MO_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="MO" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="月份">

<COL id=PR_PAYLIST_C01_Col style="WIDTH: 100px" isforcedflt="false" isallownull="true" isforcereadonly="false" isreadonly="false" isallowinput="true" fieldtype="Text" fieldname="PR_PAYLIST_C01" iskilo="false" scale="0" length="1000" iszoomimage="false" isboxvisible="true" isallowvisible="true" issave="true" isrowid="false" ispk="false" caption="备注"></COLGROUP>
<tbody>
<TR style="HEIGHT: 20px">

<TD class=clsGridHeadCell4 id=EMP_CODE_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="EMP_CODE" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">代码<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=EMP_NAME_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="EMP_NAME" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">姓名<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=ORG_CODE_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="ORG_CODE" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">科处室代码<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=ORG_NAME_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="ORG_NAME" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">科处室名称<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N00_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N00" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">职务工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N01_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N01" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">级别工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N02_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N02" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">技术等级工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N03_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N03" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">岗位工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N04_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N04" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">生活性补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N05_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N05" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">工作性津贴1<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N06_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N06" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">工作性津贴2<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N07_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N07" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">警衔津贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N08_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N08" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">特殊岗位津贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N09_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N09" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">住房补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N10_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N10" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">门诊医疗费包干<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N11_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N11" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">通讯费补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N12_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N12" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">车改补贴<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N14_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N14" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">其他1<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N15_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N15" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">其他2<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N13_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N13" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">补发工资<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N46_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N46" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">应发合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=HOUSE_ACCU_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="HOUSE_ACCU" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">住房公积金<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N53_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N53" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">个税<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=ENDT_INS_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="ENDT_INS" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">养老保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=HOSP_INS_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="HOSP_INS" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">医疗保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N49_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N49" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">失业保险<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N52_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N52" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">其他代扣项<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N47_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N47" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">扣款合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_N48_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_N48" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">实发合计<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=MO_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="MO" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">月份<SPAN></SPAN></TD>

<TD class=clsGridHeadCell4 id=PR_PAYLIST_C01_HeadCell style="VERTICAL-ALIGN: middle; COLOR: #232e66; PADDING-TOP: 2px; BACKGROUND-COLOR: #f1f2f6; TEXT-ALIGN: center" fieldname="PR_PAYLIST_C01" UNSELECTABLE="on" sortdir="0" isleaf="true" childfields="" parentcode="">备注<SPAN></SPAN></TD></TR>
<tr>
<TD class=Normal style='word-break:break-all;mso-number-format:"@"' width=100 x:str='a06112'>a06112&nbsp;</TD>
<TD class=Normal style='word-break:break-all' width=100 x:str='陈明琮'>陈明琮&nbsp;</TD>
<TD class=Normal style='word-break:break-all' width=100 x:str='0001'>0001&nbsp;</TD>
<TD class=Normal style='word-break:break-all' width=100 x:str='财务室'>财务室&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='480.00'>480.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='896.00'>896.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='3515.75'>3515.75&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='1880.92'>1880.92&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='235.00'>235.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='300.00'>300.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='150.00'>150.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='7457.67'>7457.67&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='871.00'>871.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='384.50'>384.50&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='5.40'>5.40&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='0.00'>0.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='10.00'>10.00&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='1270.90'>1270.90&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,##0.00"' width=100 x:num='6186.77'>6186.77&nbsp;</TD>
<TD class=Normal style='word-break:break-all;mso-number-format:"#,###"' width=100 x:num='1'>1&nbsp;</TD>
<TD class=Normal style='word-break:break-all' width=100 x:str='&nbsp;'>&nbsp;&nbsp;</TD>
</tr>
</tbody>
</table>
</body>
</html>
