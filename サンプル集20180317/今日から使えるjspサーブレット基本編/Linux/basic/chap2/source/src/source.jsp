<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%@ include file="/common/bin/encode.jsp" %>
<html>
<head>
<title>�������ե������ɽ��</title>
</head>
<body>
<table border="0">
<%
int cnt=1;
String strFle=strEncode(request.getParameter("strFle"));
FileReader fr=new FileReader(application.getRealPath("common/data/src/" + strFle));
BufferedReader br=new BufferedReader(fr);
while(br.ready()){
	String strTmp=br.readLine();
%>
	<tr>
	<td align="right"><%=cnt %></td>
	<td><%=this.htmlEncode(strTmp) %></td>
	</tr>
<%
	++cnt;
}
%>
</table>
</body>
</html>
