<%@ page contentType="text/html;charset=Shift_JIS" %>
<html>
<head>
<title>���[�U�F�؃��O�C��</title>
</head>
<h1 align="center">���[�U�F�؃��O�C��</h1>
<hr />
<form method="POST" action="j_security_check">
<table border="0" align="center">
<tr>
<th align="right">���[�UID�F</th>
<td>
	<input type="text" name="j_username" size="20" maxlength="30" />
</td>
</tr><tr>
<th align="right">�p�X���[�h�F</th>
<td>
	<input type="password" name="j_password" size="20" maxlength="30" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
	<input type="submit" value="���O�C��" />
	<input type="reset" value="�N���A" />
</td>
</tr>
</table>
<% if(request.getParameter("err")!=null){ %>
<script language="JavaScript">
<!--
	window.alert("���[�UID�E�p�X���[�h���Ԉ���Ă��܂�");
//-->
</script>
<% } %>
</table>
</html>
