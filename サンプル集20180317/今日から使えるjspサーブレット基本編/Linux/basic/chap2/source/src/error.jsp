<%@ page contentType="text/html; charset=EUC-JP"
         import="java.io.*,java.util.*" isErrorPage="true" %>
<html>
<head>
<title>当画面において、エラーが発生しました</title>
</head>
<body>
<h1>エラーが発生しました</h1>
<% application.log((new Date()).toString(),exception); %>
<p>現在の画面において、致命的なエラーが発生しました。<br />
しばらくおいてもエラーが改善されない場合には、本画面のキャプチャを添付の上、ヘルプデスクまでご連絡ください</p>
<hr />
<%=exception.toString() %><br />
<% exception.printStackTrace(new PrintWriter(out)); %><br />
<div align="right">
［<a href="mailto:XXX99999@XXX.XX.XX">XXX99999@XXX.XX.XX</a>］
</div>
</body>
</html>
