<%@ page contentType="text/html; charset=EUC-JP" import="java.io.*" %>
<html>
<head>
<title>「./src」フォルダ内のファイル一覧</title>
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
