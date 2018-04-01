<%@ page contentType="text/html;charset=EUC-JP" %>
<html>
<head>
<title>アクセスログの記録</title>
</head>
<body>
アクセスログを記録しました
<jsp:include page="/servlet/srv_logRec" flush="true" />
</body>
</html>
