<%@ page contentType="text/html;charset=EUC-JP" import="java.sql.*" %>
<html>
<head>
<title>�������޾���ɽ���ʸ���������ϡ�</title>
</head>
<body>
<h1>�������޾���ɽ���ʸ���������ϡ�</h1>
<form method="POST" action="disp.jsp">
<select name="tbl">
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
Statement objSql=db.createStatement();
DatabaseMetaData objScm=db.getMetaData();
ResultSet rsTbl=objScm.getTables("jsp","","%",null);
while(rsTbl.next()){
	out.println("<option value='" + rsTbl.getString("TABLE_NAME") + "'>");
	out.println(rsTbl.getString("TABLE_NAME") + "</option>");
}
db.close();
%>
</select>
<input type="submit" value="���󸡺�" />
<input type="reset" value="���" />
</form>
</body>
</html>
