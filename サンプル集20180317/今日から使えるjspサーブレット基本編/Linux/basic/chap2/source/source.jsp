<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<html>
<head>
<title>ソースファイルの表示</title>
</head>
<body>
<table border="0">
<%
int cnt=1;
String strFle=strEncode(request.getParameter("strFle"));
FileReader fr=new FileReader(application.getRealPath("chap2/source/src/" + strFle));
BufferedReader br=new BufferedReader(fr);
while(br.ready()){
	String strTmp=br.readLine();
%>
	<tr>
	<th align="right"><%=cnt %></th>
	<td><%=this.htmlEncode(strTmp) %></td>
	</tr>
<%
	++cnt;
}
%>
</table>
</body>
</html>
