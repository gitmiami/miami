<%@ page contentType="text/html;charset=EUC-JP" import="java.sql.*" %>
<%!
String[] aryTyp={"TINYINT","INT","DOUBLE","VARCHAR","TEXT","DATETIME","DATE","TIME"};
%>
<html>
<head>
<title>�ơ��֥���ƥʥ�</title>
<base target="_parent" />
</head>
<body>
<form method="POST" action="/basic/servlet/db.db_update">
<table border="0" align="center">
<tr><td>
<table border="1" align="center">
<% if(request.getParameter("new")!=null){ %>
	<input type="hidden" name="flag" value="new" />
	<tr>
	<th>�ե������̾</th><th>�ǡ�����</th>
	<th>���</th><th>��������</th><th>�祭��</th>
	</tr>
	<% for(int i=0;i<11;i++){ %>
		<tr>
		<td><input type="text" name="fld<%=i%>" size="15" /></td>
		<td><select name="dat<%=i%>">
			<% for(int j=0;j<aryTyp.length;j++){
					out.print("<option value='" + j + "'>" + aryTyp[j]);
					out.print("</option>");
				} %>
		</select></td>
		<td><input type="text" name="siz<%=i%>" size="5" /></td>
		<td><input type="text" name="dec<%=i%>" size="5" /></td>
		<td><input type="checkbox" name="prm<%=i%>" value="P" /></td>
		</tr>
	<% } %>
	<tr>
	<th align="right">�ơ��֥�̾</th>
	<td colspan="4"><input type="text" name="tbl" size="40" /></td>
	</tr>
<% }else{
	Class.forName("org.gjt.mm.mysql.Driver");
	Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
	Statement objSql=db.createStatement();
	if(request.getParameter("up")!=null){
		ResultSet rs=objSql.executeQuery("SELECT * FROM " + request.getParameter("tbl") + " LIMIT 1");
		ResultSetMetaData rsScm=rs.getMetaData(); %>
		<input type="hidden" name="flag" value="update" />
		<input type="hidden" name="tbl" value="<%=request.getParameter("tbl")%>" />
		<input type="hidden" name="cnt" value="<%=rsScm.getColumnCount()%>" />
		<tr>
		<th rowspan="2">����<br />��ʬ</th>
		<th colspan="2">��¸����</th><th colspan="5">������</th>
		</tr>
		<tr>
		<th>�ե������̾</th><th>�ǡ�����</th>
		<th>�ե������̾</th><th>�ǡ�����</th>
		<th>���</th><th>��������</th><th>�祭��</th>
		</tr>
		<% for(int i=1;i<=rsScm.getColumnCount();i++){ %>
			<tr>
			<td><select name="mid<%=i%>">
			<option value="">-</option>
			<option value="modify">�����ѹ�</option>
			<option value="add">�����ɲ�</option>
			<option value="del">������</option>
			</select>
			</td>
			<td>
				<%=rsScm.getColumnName(i)%>
				<input type="hidden" name="old<%=i%>" value="<%=rsScm.getColumnName(i)%>" />
			</td>
			<td><%=rsScm.getColumnTypeName(i)%></td>
			<td><input type="text" name="fld<%=i%>" size="15" /></td>
			<td><select name="dat<%=i%>">
				<% for(int j=0;j<aryTyp.length;j++){
						out.print("<option value='" + j + "'>");
						out.print(aryTyp[j] + "</option>");
					} %>
			</select></td>
			<td><input type="text" name="siz<%=i%>" size="5" /></td>
			<td><input type="text" name="dec<%=i%>" size="5" /></td>
			<td><input type="checkbox" name="prm<%=i%>" value="P" /></td>
			</tr>
		<% }
	}else{
		objSql.executeUpdate("DROP TABLE IF EXISTS " + request.getParameter("tbl"));		out.println("<script language='JavaScript'>");
		out.println("parent.location.href='index.html';");
		out.println("</script>");
	}
}
%>
</table>
<input type="submit" value="��Ͽ" />
<input type="reset" value="���" />
</td></tr>
</table>
</form>
</body>
</html>
