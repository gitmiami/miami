<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="req" uri="http://jakarta.apache.org/taglibs/request-1.0" %>
<html>
<head>
<title>���͕�����̃N�b�L�[�ۑ�</title>
</head>
<body>
<h1>���͕�����̃N�b�L�[�ۑ�</h1>
<form method="POST" action="cookie2.jsp">
	<table border="0">
	<tr>
		<th align="right">���[�UID�F</th>
		<td><input type="text" name="unam" size="15"
					value="<req:cookie name="unam"/>" /></td>
	</tr>
	<tr>
		<th align="right">�p�X���[�h�F</th>
		<td><input type="password" name="pass" size="15" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="sbm" value="���O�C��" />
			<input type="reset" name="sbm" value="�N���A" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
