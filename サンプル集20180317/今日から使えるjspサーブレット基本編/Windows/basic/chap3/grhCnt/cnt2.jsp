<%@ page contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="objCnt" class="beanYama.bean_grhCnt" scope="page" />
<html>
<head>
<title>グラフィカルアクセスカウンタ</title>
</head>
<body>
2002年11月からの訪問者数：
<%
String strPath=application.getRealPath("chap3/grhCnt/cnt.dat");
objCnt.increment(strPath,request.getServletPath(),1);
out.println(objCnt.disp(strPath,request.getServletPath()));
%>
</body>
</html>
