<%@ page contentType="text/html;charset=EUC-JP" import="java.sql.*" %>
<html>
<head>
<title>�ơ��֥�����ʾ�����ϡ�</title>
<base target="down" />
</head>
<body>
<h1>�ơ��֥�����ʾ�����ϡ�</h1>
<hr />
<form method="POST" action="up.jsp">
<select name="tbl">
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
DatabaseMetaData objScm=db.getMetaData();
ResultSet rsTbl=objScm.getTables("jsp","","%",null);
while(rsTbl.next()){
	out.println("<option value='" + rsTbl.getString("TABLE_NAME") + "'>");
	out.println(rsTbl.getString("TABLE_NAME") + "</option>");
}
%>
</select>
<input type="submit" name="new" value="��������" />
<input type="submit" name="up" value="���󹹿�" />
<input type="submit" name="del" value="������" />
</form>
</body>
</html>
