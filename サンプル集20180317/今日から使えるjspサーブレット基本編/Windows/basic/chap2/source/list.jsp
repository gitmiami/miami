<%@ page contentType="text/html; charset=Shift_JIS" import="java.io.*" %>
<html>
<head>
<title>�u./src�v�t�H���_���̃t�@�C���ꗗ</title>
</head>
<body>
<ol>
<%
File fl=new File(application.getRealPath("chap2/source/src"));
File[] arySub=fl.listFiles();
for(int i=0;i<arySub.length;i++){
	String strTmp=arySub[i].getName();
	out.println("<li><a href='source.jsp?strFle=" + strTmp + "'>");
	out.println(strTmp + "</a></li>");
}
%>
</ol>
</body>
</html>
