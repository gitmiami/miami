<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<html>
<head>
<title>�ʰץ��Ģ��ʸ�������</title>
<base target="down" />
</head>
<body>
<h1>�ʰץ��Ģ</h1>
<form method="POST" action="input.jsp">
<table border="0">
<tr>
	<th align="right">�ɤߤ���ʸ��̾��</th>
	<td>
	<select name="doc">
	<%
	String strNam;
	File fl=new File(application.getRealPath("data/memo"));
	File[] aryFls=fl.listFiles();
	for(int i=0;i<aryFls.length;i++){
		strNam=aryFls[i].getName();
		out.println("<option value='" + strNam + "'>" + strNam + "</option>");
	}
	%>
	</select>
	</td>
	<td>
		<input type="submit" name="proc" value="�ɤߤ���" />
		<input type="submit" name="proc" value="ʸ����" />
	</td>
</tr>
<tr>
	<th align="right">����ʸ��̾��</th>
	<td><input type="text" name="newDoc" size="20" /></td>
	<td><input type="submit" name="proc" value="��������" /></td>
</tr>
</table>
</form>
</body>
</html>
