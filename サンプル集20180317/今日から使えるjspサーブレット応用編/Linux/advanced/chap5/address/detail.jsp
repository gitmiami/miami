<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>����Ͽ�����ʷ�̰�����</title>
</head>
<body>
<h1>����Ͽ����</h1>
<hr />
��<a href="Update.do">��������</a>��
<table border="1">
	<tr>
		<th>̾��</th><th>����</th><th>��ǯ����</th><th>����</th>
		<th>�����ֹ�</th><th>E-Mail���ɥ쥹</th><th>����</th>
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
				<img src="pen.gif" border="0" width="15" height="15" alt="����">
			</a></td>
		</tr>
	</logic:iterate>
</table>
</html:html>
