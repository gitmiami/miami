<%@ page contentType="text/html;charset=Shift_JIS" %>
<html>
<head>
<title>ユーザ認証ログイン</title>
</head>
<h1 align="center">ユーザ認証ログイン</h1>
<hr />
<form method="POST" action="j_security_check">
<table border="0" align="center">
<tr>
<th align="right">ユーザID：</th>
<td>
	<input type="text" name="j_username" size="20" maxlength="30" />
</td>
</tr><tr>
<th align="right">パスワード：</th>
<td>
	<input type="password" name="j_password" size="20" maxlength="30" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
	<input type="submit" value="ログイン" />
	<input type="reset" value="クリア" />
</td>
</tr>
</table>
<% if(request.getParameter("err")!=null){ %>
<script language="JavaScript">
<!--
	window.alert("ユーザID・パスワードが間違っています");
//-->
</script>
<% } %>
</table>
</html>
