<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<html>
<head>
<title>�ȈՃ������i�����ꗗ�j</title>
<base target="down" />
</head>
<body>
<h1>�ȈՃ�����</h1>
<form method="POST" action="input.jsp">
<table border="0">
<tr>
	<th align="right">�ǂ݂��ݕ������F</th>
	<td>
	<select name="doc">
	<%
	String strNam;
	File fl=new File(application.getRealPath("chap2/memo/doc"));
	File[] aryFls=fl.listFiles();
	for(int i=0;i<aryFls.length;i++){
		strNam=aryFls[i].getName();
		out.println("<option value='" + strNam + "'>" + strNam + "</option>");
	}
	%>
	</select>
	</td>
	<td>
		<input type="submit" name="proc" value="�ǂ݂���" />
		<input type="submit" name="proc" value="�����폜" />
	</td>
</tr>
<tr>
	<th align="right">�V�K�������F</th>
	<td><input type="text" name="newDoc" size="20" /></td>
	<td><input type="submit" name="proc" value="�V�K�쐬" /></td>
</tr>
</table>
</form>
</body>
</html>
