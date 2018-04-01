<%@ page contentType="text/html; charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>データベースの内容を一覧化</title>
</head>
<body>
<table border="1">
<tr>
<th>ID</th><th>パスワード</th><th>ユーザ名</th><th>部門</th><th>権限</th>
</tr>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM mng_usr");
while(rs.next()){
%>
	<tr>
	<td><%=rs.getString("uid")%></td>
	<td><%=rs.getString("passwd")%></td>
	<td><%=rs.getString("unam")%></td>
	<td><%=rs.getString("depart")%></td>
	<td><%=rs.getString("perms")%></td>
	</tr>
<%
}
objSql.close();
db.close();
%>
</table>
</body>
</html>
