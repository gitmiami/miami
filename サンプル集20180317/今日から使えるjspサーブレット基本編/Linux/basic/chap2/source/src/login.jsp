<%@ page contentType="text/html;charset=EUC-JP" %>
<html>
<head>
<title>�桼��ǧ�ڥ�����</title>
</head>
<h1 align="center">�桼��ǧ�ڥ�����</h1>
<hr />
<form method="POST" action="j_security_check">
<table border="0" align="center">
<tr>
<th align="right">�桼��ID��</th>
<td>
	<input type="text" name="j_username" size="20" maxlength="30" />
</td>
</tr><tr>
<th align="right">�ѥ���ɡ�</th>
<td>
	<input type="password" name="j_password" size="20" maxlength="30" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
	<input type="submit" name="submit" value="������" />
	<input type="submit" name="submit" value="���ꥢ" />
</td>
</tr>
</table>
<% if(request.getParameter("err")!=null){ %>
<script language="JavaScript">
<!--
	window.alert("�桼��ID���ѥ���ɤ��ְ�äƤ��ޤ�");
//-->
</script>
<% } %>
</table>
</html>
