<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.sql.*,java.text.*" %>
<html>
<head>
<title>�X�g�A�h�v���V�[�W�������p����</title>
</head>
<body>
<table border="1">
<tr>
	<th>�T�C�g��</th><th>�o�^��</th><th>�J�E���g</th>
</tr>
<%
SimpleDateFormat objFmt=new SimpleDateFormat("yyyy�NMM��dd���iE�j");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection db=DriverManager.getConnection("jdbc:odbc:query","","");
CallableStatement objSql=db.prepareCall("{call qry_Url (?)}");
objSql.setInt(1,20000);
ResultSet rs=objSql.executeQuery();
while(rs.next()){
%>
	<tr>
	<td>
		<a href="<%=rs.getString("url")%>"><%=rs.getString("title")%></a>
	</td>
	<td><%=objFmt.format(rs.getDate("sDate"))%></td>
	<td align="right"><%=rs.getLong("cnt")%></td>
	</tr>
<%
}
objSql.close();
db.close();
%>
</table>
</body>
</html>
