<%@ page contentType="text/html;charset=Shift_JIS" import="java.sql.*" %>
<html>
<head>
<title>テーブル選択（条件入力）</title>
<base target="down" />
</head>
<body>
<h1>テーブル選択（条件入力）</h1>
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
<input type="submit" name="new" value="新規作成" />
<input type="submit" name="up" value="情報更新" />
<input type="submit" name="del" value="情報削除" />
</form>
</body>
</html>
