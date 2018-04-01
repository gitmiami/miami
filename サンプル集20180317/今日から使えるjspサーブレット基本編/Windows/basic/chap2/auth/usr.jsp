<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
if(!request.isUserInRole("user")){
	out.println("<span style='color:Red;'>");
	out.println("本画面の参照は認められていません</span>");
	out.close();
}
%>
<html>
<head>
<title>ユーザ用メニュー</title>
</head>
<body>
<h1>ユーザ用メニュー</h1>
</body>
</html>