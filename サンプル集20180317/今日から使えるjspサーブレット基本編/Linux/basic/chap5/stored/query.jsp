<%@ page contentType="text/html;charset=EUC-JP"
         import="java.sql.*,java.text.*" %>
<html>
<head>
<title>ストアドプロシージャを活用する</title>
</head>
<body>
<table border="1">
<tr>
	<th>サイト名</th><th>登録日</th><th>カウント</th>
</tr>
<%
SimpleDateFormat objFmt=new SimpleDateFormat("yyyy年MM月dd日（E）");
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
