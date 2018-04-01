<%@ page contentType="text/html;charset=EUC-JP" %>
<% String unam=(String)session.getAttribute("uid"); %>
<html>
<head>
<title>資産管理システム</title>
</head>
<body>
<h1 align="center">
<img src="cd.gif" width="25" height="25" />
資産管理システム（ログイン）
<img src="cd.gif" width="25" height="25" />
</h1>
<hr />
<form method="POST" action="/advanced/servlet/mng.mng_login">
<table border="0" align="center">
<tr>
	<th align="right">ユーザID：</th>
	<td>
		<input type="text" name="uid"  size="20" maxlength="30"
			value="<%=(unam==null) ? "" : unam %>" style="ime-mode:disabled" />
	</td>
</tr><tr>
	<th align="right">パスワード：</th>
	<td><input type="password" name="passwd" size="20" maxlength="30" /></td>
</tr><tr>
<td colspan="2" align="center">
	<input type="submit" name="submit" value="ログイン">
</td>
</tr>
</table>
<%
if(unam!=null){
%>
<script language="JavaScript">
<!--
window.alert("ユーザID・パスワードが間違っています");
//-->
</script>
<%
}
%>
</table>
</form>
</body>
</html>
