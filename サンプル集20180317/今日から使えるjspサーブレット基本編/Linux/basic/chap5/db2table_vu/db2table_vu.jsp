<%@ page contentType="text/html;charset=EUC-JP"
         import="java.sql.*,java.util.*" %>
<html>
<head>
<title>データベースの内容を一覧化</title>
</head>
<body>
<table border="1">
<%
ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
Class.forName(objRB.getString("jdbcDriver"));
Connection db=DriverManager.getConnection(objRB.getString("conStr"));
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM mng_usr");
ResultSetMetaData rsScm=rs.getMetaData();
out.print("<tr>");
for(int i=1;i<=rsScm.getColumnCount();i++){
	out.print("<th>" + rsScm.getColumnName(i) + "</th>");
}
out.print("</tr>");
while(rs.next()){
	out.print("<tr>");
	for(int j=1;j<=rsScm.getColumnCount();j++){
		out.print("<td>" + rs.getString(j) + "</td>");
	}
	out.write("</tr>");
}
%>
</table>
</body>
</html>
