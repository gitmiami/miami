<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>�Z���^�����i���ʈꗗ�j</title>
</head>
<body>
<h1>�Z���^����</h1>
<hr />
�m<a href="Update.do">�V�K�쐬</a>�n
<table border="1">
	<tr>
		<th>���O</th><th>����</th><th>���N����</th><th>�Z��</th>
		<th>�d�b�ԍ�</th><th>E-Mail�A�h���X</th><th>�X�V</th>
	</tr>
	<logic:iterate id="AddDat" name="address.data" scope="request">
		<tr>
			<td><bean:write name="AddDat" property="nam" /></td>
			<td><bean:write name="AddDat" property="gender" /></td>
			<td><bean:write name="AddDat" property="birth" /></td>
			<td><bean:write name="AddDat" property="address" /></td>
			<td><bean:write name="AddDat" property="tel" /></td>
			<td><bean:write name="AddDat" property="email" /></td>
			<td><a href="Update.do?id=<bean:write name="AddDat" property="id" />">
				<img src="pen.gif" border="0" width="15" height="15" alt="�X�V">
			</a></td>
		</tr>
	</logic:iterate>
</table>
</html:html>
