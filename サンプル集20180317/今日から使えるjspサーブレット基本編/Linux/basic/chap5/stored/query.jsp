<%@ page contentType="text/html;charset=EUC-JP"
         import="java.sql.*,java.text.*" %>
<html>
<head>
<title>���ȥ��ɥץ����������Ѥ���</title>
</head>
<body>
<table border="1">
<tr>
	<th>������̾</th><th>��Ͽ��</th><th>�������</th>
</tr>
<%
SimpleDateFormat objFmt=new SimpleDateFormat("yyyyǯMM��dd����E��");
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
