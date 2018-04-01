<%@ page contentType="text/html;charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>表計算でデータベース</title>
</head>
<body>
<table border="1">
<tr>
<th>名前</th><th>住所</th><th>電話番号</th><th>E-Mail</th>
</tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection db=DriverManager.getConnection("jdbc:odbc:excel","","");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM nam");
while(rs.next()){
%>
	<tr>
	<td><%=rs.getString("氏") + rs.getString("名")%></td>
	<td><%=rs.getString("住所")%></td>
	<td><%=rs.getString("電話番号")%></td>
	<td><%=rs.getString("E-Mail")%></td>
	</tr>
<%
}
objSql.close();
db.close();
%>
</table>
</body>
</html>
