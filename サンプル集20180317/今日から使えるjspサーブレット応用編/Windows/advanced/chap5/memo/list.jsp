<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<html:html>
<head>
<title>�ȈՃ������i�����ꗗ�j</title>
<base target="down" />
</head>
<body>
<h1>�ȈՃ�����</h1>
<html:form action="/chap5/memo/strutsInput">
<table border="0">
<tr>
	<th align="right">�ǂݍ��ݕ������F</th>
	<td>
	<html:select property="doc">
		<html:options name="memo.docName" labelName="memo.docName" />
	</html:select>
	</td>
	<td>
		<html:submit property="proc" value="�ǂݍ���" />
		<html:submit property="proc" value="�����폜" />
	</td>
</tr>
<tr>
	<th align="right">�V�K�������F</th>
	<td><html:text property="newDoc" size="20" /></td>
	<td><html:submit property="proc" value="�V�K�쐬" /></td>
</tr>
</table>
</html:form>
</body>
</html:html>
