<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<html>
<head>
<title>エラー画面のサンプル</title>
</head>
<body>
<%
try {
	FileReader objFR=new FileReader("nothing.txt");
} catch (Exception e) {
	throw new Exception(e);
}
%>
</body>
</html>
