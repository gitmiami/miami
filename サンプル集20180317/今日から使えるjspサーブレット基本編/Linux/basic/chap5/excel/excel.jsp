<%@ page contentType="text/html;charset=EUC-JP" import="java.sql.*" %>
<html>
<head>
<title>ɽ�׻��ǥǡ����١���</title>
</head>
<body>
<table border="1">
<tr>
<th>̾��</th><th>����</th><th>�����ֹ�</th><th>E-Mail</th>
</tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection db=DriverManager.getConnection("jdbc:odbc:excel","","");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM nam");
while(rs.next()){
%>
	<tr>
	<td><%=rs.getString("��") + rs.getString("̾")%></td>
	<td><%=rs.getString("����")%></td>
	<td><%=rs.getString("�����ֹ�")%></td>
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
