<%@ page contentType="text/html;charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>�X�L�[�}���\���i�����������́j</title>
</head>
<body>
<h1>�X�L�[�}���\���i�����������́j</h1>
<form method="POST" action="disp.jsp">
<select name="tbl">
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
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
<input type="submit" value="��񌟍�" />
<input type="reset" value="���" />
</form>
</body>
</html>
