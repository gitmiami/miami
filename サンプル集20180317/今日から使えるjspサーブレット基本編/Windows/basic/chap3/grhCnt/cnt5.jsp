<%@ page contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="objCnt" class="beanYama.bean_grhCnt" scope="page" />
<html>
<head>
<title>�O���t�B�J���A�N�Z�X�J�E���^</title>
</head>
<body>
2002�N11������̖K��Ґ��F
<%
String strPath=application.getRealPath("chap3/grhCnt/cnt.dat");
objCnt.increment(strPath,request.getServletPath(),1);
out.println(objCnt.disp(strPath,request.getServletPath()));
%>
</body>
</html>
