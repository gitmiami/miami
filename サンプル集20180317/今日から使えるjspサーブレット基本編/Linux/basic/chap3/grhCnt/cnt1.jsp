<%@ page contentType="text/html;charset=EUC-JP" %>
<jsp:useBean id="objCnt" class="beanYama.bean_grhCnt" scope="page" />
<html>
<head>
<title>����ե����륢������������</title>
</head>
<body>
2002ǯ11����ˬ��Կ���
<%
String strPath=application.getRealPath("chap3/grhCnt/cnt.dat");
objCnt.increment(strPath,request.getServletPath(),1);
out.println(objCnt.disp(strPath,request.getServletPath()));
%>
</body>
</html>
