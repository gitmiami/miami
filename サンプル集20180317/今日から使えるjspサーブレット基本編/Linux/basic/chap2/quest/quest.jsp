<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.util.*" %>
<html>
<head>
<title>アンケート集計</title>
</head>
<body>
<h1>アンケート集計</h1>
<form method="POST" action="result.jsp">
<table border="1">
<tr>
<th>No.</th><th>項目</th><th>5</th><th>4</th><th>3</th><th>2</th><th>1</th>
</tr>
<%
String strPath=application.getRealPath("chap2/quest/data.dat");
FileReader objFR=new FileReader(strPath);
BufferedReader objBR=new BufferedReader(objFR);
while(objBR.ready()){
	StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),",");
	String strTmp=objTkn.nextToken();
	out.println("<tr>");
	out.println("<td>" + strTmp + "</td>");
	out.println("<td>" + objTkn.nextToken() + "</td>");
	for(int i=5;i>0;i--){
		out.print("<td><input type='radio' name='" + strTmp + "'");
		out.print(" value='" + i + "' /></td>");
	}
}
%>
</table>
<input type="submit" value="送信" />
</form>
</body>
</html>
