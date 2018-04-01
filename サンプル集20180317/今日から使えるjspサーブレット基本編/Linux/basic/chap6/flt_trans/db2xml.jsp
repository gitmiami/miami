<?xml version="1.0" encoding="EUC-JP" ?>
<%@ page contentType="text/xml;charset=EUC-JP" import="java.sql.*" %>
<output>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM mng_usr");
ResultSetMetaData rsScm=rs.getMetaData();
while(rs.next()){
	out.println("<record>");
	for(int i=1;i<=rsScm.getColumnCount();i++){
		out.print("<" + rsScm.getColumnName(i) + ">");
		out.print(rs.getString(i));
		out.print("</" + rsScm.getColumnName(i) + ">");
	}
	out.println("</record>");
}
objSql.close();
db.close();
%>
</output>
