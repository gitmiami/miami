<%@ page contentType="text/html; charset=EUC-JP" import="java.sql.*" %>
<html>
<head>
<title>�ǡ����١��������Ƥ������</title>
</head>
<body>
<table border="1">
<tr>
<th>ID</th><th>�ѥ����</th><th>�桼��̾</th><th>����</th><th>����</th>
</tr>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
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
