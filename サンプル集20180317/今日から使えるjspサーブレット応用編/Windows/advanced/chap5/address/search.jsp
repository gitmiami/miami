<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>�Z���^����</title>
</head>
<body>
<h1>�Z���^����</h1>
<hr />
<html:form action="/chap5/address/SearchInput">
<table border="0">
<tr>
	<th align="right">���O�F</th>
	<td><html:text property="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���ʁF</th>
	<td>
		<html:select property="gender">
			<html:options name="address.gender" labelName="address.gender" />
		</html:select>
	</td>
</tr>
<tr>
	<th align="right">�s���{���F</th>
	<td>
		<html:select property="prefecture">
			<html:options name="address.prefecture" labelName="address.prefecture" />
		</html:select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<html:submit property="submit" value="����" />
		<html:reset value="�N���A" />
	</td>
</tr>
</table>
</html:form>
</html:html>
