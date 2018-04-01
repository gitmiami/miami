<%@ page contentType="text/html;charset=EUC-JP" %>
<%
if(!request.isUserInRole("supervisor")){
	out.println("<span style='color:Red;'>");
	out.println("本画面の参照は認められていません</span>");
	out.close();
}
%>
<html>
<head>
<title>部門管理者用メニュー</title>
</head>
<body>
<h1>部門管理者用メニュー</h1>
</body>
</html>
