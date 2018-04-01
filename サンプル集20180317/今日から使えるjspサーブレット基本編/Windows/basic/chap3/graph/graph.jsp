<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.util.*" %>
<%! String dat="chap3/graph/data.dat"; %>
<html>
<head>
<title>データのグラフへの変換</title>
</head>
<body>
<h1>「今日からつかえる～」アンケート結果</h1>
<table border="0">
<tr>
<td>
	<img src="/basic/servlet/srv_graph?dat=<%=dat%>" width="300" height="300" />
</td>
<td width="50"></td>
<td valign="middle">
	<table border="1">
	<caption align="left">凡例</caption>
	<%
	String[] aryColor={"#FF0000","#FF8C00","#00FF00","#FFFF00","#0000FF"};
	int num=0;
	FileReader objFR=new FileReader(application.getRealPath(dat));
	BufferedReader objBR=new BufferedReader(objFR);
	while(objBR.ready()){
		StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),"\t");
		while(objTkn.hasMoreTokens()){
			out.println("<tr>");
			out.println("<th bgcolor='" + aryColor[num] + "'>");
			out.println(objTkn.nextToken() + "</th>");
			out.println("<td align='right'>" + objTkn.nextToken() + "</td>");
			out.println("</tr>");
		}
		num++;
	}
	objBR.close();
	%>
	</table>
</td>
</tr>
</table>
</body>
</html>
