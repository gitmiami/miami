<%@ page contentType="text/html;charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>�e�[�u���I���i�������́j</title>
<base target="down" />
</head>
<body>
<h1>�e�[�u���I���i�������́j</h1>
<hr />
<form method="POST" action="up.jsp">
<select name="tbl">
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
DatabaseMetaData objScm=db.getMetaData();
ResultSet rsTbl=objScm.getTables("jsp","","%",null);
while(rsTbl.next()){
	out.println("<option value='" + rsTbl.getString("TABLE_NAME") + "'>");
	out.println(rsTbl.getString("TABLE_NAME") + "</option>");
}
%>
</select>
<input type="submit" name="new" value="�V�K�쐬" />
<input type="submit" name="up" value="���X�V" />
<input type="submit" name="del" value="���폜" />
</form>
</body>
</html>
