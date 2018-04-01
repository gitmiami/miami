<%@ page contentType="text/html;charset=EUC-JP" %>
<jsp:useBean id="objNav" class="xml.navi_bean" scope="page" />
<html>
<head>
<title>リンクバーの生成</title>
</head>
<body>
<div align="center">
<%=objNav.createNaviBar(request.getRequestURI(),application.getRealPath("chap4/docNavi/lnk.xml"))%>
</div>
<hr />
</body>
</html>
