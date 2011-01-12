<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/txl.css" rel="stylesheet" type="text/css" />


<title>公安通讯录</title>
</head>
<body>
<form name="form1" method="post" action="index.aspx" id="form1">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />

<table width="1002" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td valign="top"><img src="images/top.jpg" width="1002"
			height="98" /></td>
	</tr>
	<tr>
		<td height="34" valign="bottom" background="images/mu.jpg">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="1%"><img src="images/mu7.jpg" width="8" height="33" /></td>
				<td width="8%"><a href="index.aspx"><img
					src="images/mu1.jpg" width="84" height="33" border="0" /></a></td>
				<td width="9%"><img src="images/mu2.jpg" width="92" height="33"
					border="0" /></td>
				<td width="9%"><a href="http://txl.gat.zj/gat2.0/home"
					target="_blank"><img src="images/mu3.jpg" width="92"
					height="33" border="0" /></a></td>
				<td width="8%"><a
					href="http://10.123.123.125:9000/UserLogin.aspx" target="_blank"><img
					src="images/mu4.jpg" width="83" height="33" border="0" /></a></td>
				<td width="8%"><img src="images/mu5.jpg" width="83" height="33" /></td>
				<td width="8%"><img src="images/mu6.jpg" width="85" height="33" /></td>
				<td width="49%" align="right"><img src="images/sz.gif"
					width="31" height="33" align="absmiddle" /><span id="liveclock"
					class="sz">今天是：<script language="javascript"
					type="text/javascript">
function timeprint()
{
var week; var date; 
var today=new Date()
var year=today.getYear()
var month=today.getMonth()+1
var day=today.getDate()
var ss=today.getDay()
date=year+"年"+month+"月"+day+"日  "
if(ss==0) week="星期日"
if(ss==1) week="星期一"
if(ss==2) week="星期二"
if(ss==3) week="星期三"
if(ss==4) week="星期四"
if(ss==5) week="星期五"
if(ss==6) week="星期六"
myclock=date+week
if(document.layers){document.layers.liveclock.document.write(myclock)
document.layers.liveclock.document.close()
}else if(document.all)
liveclock.innerHTML="今天是"+myclock
}
timeprint();


    function locationhref(frm)
    {
   alert(frm);
      document.getElementById("frmMan").src=frm;
    }
                                                </script></span></td>
				<td width="0%"><img src="images/mu7.jpg" width="8" height="33" /></td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<table width="1002" height="464" border="0" align="center"
	cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr>
		<td colspan="2" id="mune" style="display: block" valign="top"
			background="images/left.jpg" width="237">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="1"></td>
				<td width="222" valign="top">


				<table width="10%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="6"></td>
					</tr>
				</table>
				<table width="222" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td><img src="images/left1.jpg" width="222" height="29" /></td>
					</tr>
					<tr>
						<td background="images/left2.jpg">
						<table width="10%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="3"></td>
							</tr>
						</table>
						<table width="96%" border="0" align="center" cellpadding="3"
							cellspacing="0">
							<tr>
								<td width="67" height="20" align="center" class="left">用户名：</td>
								<td colspan="2"><input name="Hydl1:txtusername" type="text"
									id="Hydl1_txtusername" class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td width="67" height="20" align="center" class="left">密 码：</td>
								<td colspan="2"><input name="Hydl1:txtuserpwd"
									type="password" id="Hydl1_txtuserpwd" class="input_1" size="22" /></td>
							</tr>

							<tr>
								<td height="28" colspan="3" align="center" valign="bottom"
									class="left">
								<table width="92%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td align="center"><input type="image"
											name="Hydl1:Butlogn" id="Hydl1_Butlogn"
											src="images/left4.jpg" border="0"
											style="height: 21px; width: 66px;" /></td>
										<td align="center"><img src="images/left5.jpg" width="66"
											height="21" /></td>
									</tr>
								</table>
								<table width="10%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="2"></td>
									</tr>
								</table>								</td>
							</tr>
						</table>						</td>
					</tr>
					<tr>
						<td><img src="images/left3.jpg" width="222" height="8" /></td>
					</tr>
				</table>
				<table width="10%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="8"></td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="0" width="10%">
					<tr>
						<td height="6"></td>
					</tr>
				</table>

				<table width="222" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><img src="images/left7.jpg" width="222" height="39" /></td>
					</tr>
					<tr>
						<td bgcolor="#F4F2E6">
						<table width="10%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="5"></td>
							</tr>
						</table>
						<table width="96%" border="0" align="center" cellpadding="3"
							cellspacing="0">
							<tr>
								<td width="67" height="20" align="center" class="left">警 号：</td>
								<td><input name="Cx1:textjh" type="text" id="Cx1_textjh"
									class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td width="67" height="20" align="center" class="left">姓 名：</td>
								<td><input name="Cx1:textxm" type="text" id="Cx1_textxm"
									class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td width="67" height="20" align="center" class="left">手机号码：</td>
								<td><input name="Cx1:textsjhm" type="text"
									id="Cx1_textsjhm" class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td height="20" align="center" class="left">短 号：</td>
								<td><input name="Cx1:textdh" type="text" id="Cx1_textdh"
									class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td height="20" align="center" class="left">办公内线：</td>
								<td><input name="Cx1:textbgnx" type="text"
									id="Cx1_textbgnx" class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td height="20" align="center" class="left">办公外线：</td>
								<td><input name="Cx1:textbgwx" type="text"
									id="Cx1_textbgwx" class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td height="20" align="center" class="left">部 &nbsp; 门：</td>
								<td><input name="Cx1:textyjdz" type="text"
									id="Cx1_textyjdz" class="input_1" size="21" /></td>
							</tr>
							<tr>
								<td height="30" colspan="2" align="center" valign="bottom"
									class="left">
								<table width="92%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td align="center"><input type="image" name="Cx1:imBut"
											id="Cx1_imBut" src="images/left8.jpg" border="0"
											style="height: 23px; width: 61px;" /></td>
										<td align="center"><input type="image" name="Cx1:imQSCX"
											id="Cx1_imQSCX" src="images/left9.jpg" border="0"
											style="height: 23px; width: 75px;" /></td>
									</tr>
								</table>
								<table width="10%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="5"></td>
									</tr>
								</table>								</td>
							</tr>
						</table>						</td>
					</tr>
				</table>				</td>
				<td width="7" align="right"><img src="images/jt.jpg" width="7"
					height="32" onclick="show()" /></td>
				<td width="7" id="mune1" align="right" style="display: none">
				<img src="images/jt1.jpg" width="7" height="32" onclick="show()" /></td>
			</tr>
		</table>	</td>
	<td width="731" valign="top">
		<table width="10%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="6">                            </td>
                        </tr>
                </table>
                    <table width="99%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="37" background="images/mid3.jpg">
                                <table width="99%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="6%">&nbsp;                                            </td>
                                        <td width="79%" class="right2">
                                            <table width="10%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td height="2">                                                    </td>
                                                </tr>
                                            </table>
                                            <a href='index.aspx'>玉环县公安局</a>&nbsp;>交通巡逻警察大队</td>
                                    </tr>
                                </table>                            </td>
                        </tr>
                    </table>
                    <table width="10%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="10">                            </td>
                        </tr>
                    </table>
					<table cellpadding="2" cellspacing="1" class="tablehead" width="100%">
                            <tr style="background:#ffffff;"><td class="namehead">姓名</td><td width="150" style="color:#0a5baa;font-size:10.5pt">耿礼瑞</td><td class="namehead">警号</td><td>98212401</td><td class="namehead">职务</td>
                            	<td colspan="3">协警</td>
                       		</tr>
                            <tr style="background:#ffffff;"><td class="namehead">手机</td><td>13566839606
                            	<input type="image" name="dg_user:_ctl7:LinkButton12" id="dg_user__ctl7_LinkButton12" src="images/dx.gif" border="0" /></td><td class="namehead">短号</td><td>584116</td><td class="namehead">办公外线</td>
                            	<td>87357537</td>
                           		<td class="namehead">办公内线</td>
                       		<td>7537</td></tr>
                            <tr style="background:#ffffff;"><td class="namehead">电子信箱</td>
                            <td colspan="7">&nbsp;</td>
                            </tr>
                            </table>
                    <br />
                    <table width="10%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="12">
                            </td>
                        </tr>
                    </table>
                    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="25" align="right" bgcolor="#f4fbff">
                                
                            </td>
                        </tr>
                    </table>
		</td>
  </tr>
</table>
		<!-- main -->
		
</form>
</body>
</html>

