<%@ page contentType="text/html;charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>�\�v�Z�Ńf�[�^�x�[�X</title>
</head>
<body>
<table border="1">
<tr>
<th>���O</th><th>�Z��</th><th>�d�b�ԍ�</th><th>E-Mail</th>
</tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection db=DriverManager.getConnection("jdbc:odbc:excel","","");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM nam");
while(rs.next()){
%>
	<tr>
	<td><%=rs.getString("��") + rs.getString("��")%></td>
	<td><%=rs.getString("�Z��")%></td>
	<td><%=rs.getString("�d�b�ԍ�")%></td>
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
