<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
if(!request.isUserInRole("administrator")){
	out.println("<span style='color:Red;'>");
	out.println("本画面の参照は認められていません</span>");
	out.close();
}
%>
<html>
<head>
<title>システム管理者専用メニュー</title>
</head>
<body>
<h1>システム管理者専用メニュー</h1>
</body>
</html>
