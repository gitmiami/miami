<%@ page contentType="text/html;charset=EUC-JP"
        import="java.util.*,java.sql.*" %>
<html>
<head>
<title>�������޾���ɽ��</title>
</head>
<body>
<h1><%="�ơ��֥�̾��" + request.getParameter("tbl")%></h1>
<table border="1">
<tr>
	<th>No.</th><th>�ե������̾</th><th>�ǡ�����</th><th>����Х��ȿ�</th>
	<th>�������ʲ�</th><th>�ǥե������</th><th>�祭��</th><th>Is Null</th>
</tr>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
DatabaseMetaData objScm=db.getMetaData();
ResultSet rs=objScm.getColumns("jsp",null,request.getParameter("tbl"),"%");
ArrayList aryPk=new ArrayList();
ResultSet objPk=objScm.getPrimaryKeys("jsp",null,request.getParameter("tbl"));
while(objPk.next()){aryPk.add(objPk.getString("COLUMN_NAME"));}
while(rs.next()){
%>
	<tr>
	<td><%=rs.getString("ORDINAL_POSITION")%></td>
	<td><%=rs.getString("COLUMN_NAME")%></td>
	<td><%=rs.getString("TYPE_NAME")%></td>
	<td align="right"><%=rs.getString("COLUMN_SIZE")%>Byte</td>
	<td align="right"><%=rs.getString("DECIMAL_DIGITS")%></td>
	<td><%=rs.getString("COLUMN_DEF")%><br /></td>
	<td align="center">
	<%=aryPk.contains(rs.getString("COLUMN_NAME")) ? "��" : "<br />" %>
	</td>
	<td><%=rs.getString("IS_NULLABLE")%></td>
	</tr>
<%
}
db.close();
%>
</table>
</body>
</html>
