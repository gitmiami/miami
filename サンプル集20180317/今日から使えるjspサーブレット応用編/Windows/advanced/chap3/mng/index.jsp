<%@ page contentType="text/html;charset=Shift_JIS" %>
<% String unam=(String)session.getAttribute("uid"); %>
<html>
<head>
<title>���Y�Ǘ��V�X�e��</title>
</head>
<body>
<h1 align="center">
<img src="cd.gif" width="25" height="25" />
���Y�Ǘ��V�X�e���i���O�C���j
<img src="cd.gif" width="25" height="25" />
</h1>
<hr />
<form method="POST" action="/advanced/servlet/mng.mng_login">
<table border="0" align="center">
<tr>
	<th align="right">���[�UID�F</th>
	<td>
		<input type="text" name="uid"  size="20" maxlength="30"
			value="<%=(unam==null) ? "" : unam %>" style="ime-mode:disabled" />
	</td>
</tr><tr>
	<th align="right">�p�X���[�h�F</th>
	<td><input type="password" name="passwd" size="20" maxlength="30" /></td>
</tr><tr>
<td colspan="2" align="center">
	<input type="submit" name="submit" value="���O�C��">
</td>
</tr>
</table>
<%
if(unam!=null){
%>
<script language="JavaScript">
<!--
window.alert("���[�UID�E�p�X���[�h���Ԉ���Ă��܂�");
//-->
</script>
<%
}
%>
</table>
</form>
</body>
</html>
