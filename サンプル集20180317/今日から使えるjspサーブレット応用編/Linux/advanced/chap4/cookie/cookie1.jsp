<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib prefix="req" uri="http://jakarta.apache.org/taglibs/request-1.0" %>
<html>
<head>
<title>入力文字列のクッキー保存</title>
</head>
<body>
<h1>入力文字列のクッキー保存</h1>
<form method="POST" action="cookie2.jsp">
	<table border="0">
	<tr>
		<th align="right">ユーザID：</th>
		<td><input type="text" name="unam" size="15"
					value="<req:cookie name="unam"/>" /></td>
	</tr>
	<tr>
		<th align="right">パスワード：</th>
		<td><input type="password" name="pass" size="15" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="sbm" value="ログイン" />
			<input type="reset" name="sbm" value="クリア" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
