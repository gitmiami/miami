<%@ page contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="objNav" class="xml.navi_bean" scope="page" />
<html>
<head>
<title>ƒŠƒ“ƒNƒo[‚Ì¶¬</title>
</head>
<body>
<div align="center">
<%=objNav.createNaviBar(request.getRequestURI(),application.getRealPath("chap4/docNavi/lnk.xml"))%>
</div>
<hr />
</body>
</html>
