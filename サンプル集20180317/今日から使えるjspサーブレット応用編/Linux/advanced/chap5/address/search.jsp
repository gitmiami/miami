<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>����Ͽ����</title>
</head>
<body>
<h1>����Ͽ����</h1>
<hr />
<html:form action="/chap5/address/SearchInput">
<table border="0">
<tr>
	<th align="right">̾����</th>
	<td><html:text property="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���̡�</th>
	<td>
		<html:select property="gender">
			<html:options name="address.gender" labelName="address.gender" />
		</html:select>
	</td>
</tr>
<tr>
	<th align="right">��ƻ�ܸ���</th>
	<td>
		<html:select property="prefecture">
			<html:options name="address.prefecture" labelName="address.prefecture" />
		</html:select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<html:submit property="submit" value="����" />
		<html:reset value="���ꥢ" />
	</td>
</tr>
</table>
</html:form>
</html:html>
