<%@ page contentType="text/html;charset=Shift_JIS"
        import="java.util.*,java.sql.*" %>
<html>
<head>
<title>�X�L�[�}���\��</title>
</head>
<body>
<h1><%="�e�[�u�����F" + request.getParameter("tbl")%></h1>
<table border="1">
<tr>
	<th>No.</th><th>�t�B�[���h��</th><th>�f�[�^�^</th><th>�ő�o�C�g��</th>
	<th>�����_�ȉ�</th><th>�f�t�H���g�l</th><th>��L�[</th><th>Is Null</th>
</tr>
<%
Class.forName("org.gjt.mm.mysql.Driver");
Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
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
	<%=aryPk.contains(rs.getString("COLUMN_NAME")) ? "�Z" : "<br />" %>
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
