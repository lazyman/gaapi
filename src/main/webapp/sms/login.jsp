<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>短信群发管理平台系统</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
</head>

<body scroll="no">
<s:form action="login">
<table width="708" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" class="tab1">&nbsp;</td>
  </tr>
  <tr>
    <td height="210" valign="top" class="tab2"><table width="100%" border="0" cellspacing="8" cellpadding="0">
      <tr>
        <td width="70" align="center">用户名:</td>
        <td><input name="username" type="text" class="id" id="username" style="width:160px;"/></td>
      </tr>
      <tr>
        <td width="70" align="center">密&nbsp;&nbsp;码:</td>
        <td><input name="password" type="password" class="id" id="password" style="width:160px;"/></td>
      </tr>
      <!-- tr>
        <td width="70" align="center">验证码:</td>
        <td><input type="text" class="id" size="8" maxlength="6"/></td>
      </tr-->
      <tr>
        <td height="40" align="center">&nbsp;</td>
        <td height="40" align="left"><input type="image" src="images/dx_04.gif" value="提交" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="216" valign="top" class="tab3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</s:form>
</body>
</html>
