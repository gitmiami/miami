<?xml version="1.0" encoding="Shift_JIS" ?>
<?xml-stylesheet type="text/xsl" href="table.xsl" ?>
<%@ page contentType="text/xml;charset=Shift_JIS" import="java.sql.*" %>
<output>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
Statement objSql=db.createStatement();
ResultSet rs=objSql.executeQuery("SELECT * FROM mng_usr");
ResultSetMetaData rsScm=rs.getMetaData();
while(rs.next()){
%>
	<record>
	<% for(int i=1;i<=rsScm.getColumnCount();i++){ %>
		<<%=rsScm.getColumnName(i)%>>
			<%=rs.getString(i)%>
		</<%=rsScm.getColumnName(i)%>>
	<% } %>
	</record>
<%
}
objSql.close();
db.close();
%>
</output>
