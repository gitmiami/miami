<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<html:html>
<head>
<title>�ʰץ��Ģ��ʸ�������</title>
<base target="down" />
</head>
<body>
<h1>�ʰץ��Ģ</h1>
<html:form action="/chap5/memo/strutsInput">
<table border="0">
<tr>
	<th align="right">�ɤ߹���ʸ��̾��</th>
	<td>
	<html:select property="doc">
		<html:options name="memo.docName" labelName="memo.docName" />
	</html:select>
	</td>
	<td>
		<html:submit property="proc" value="�ɤ߹���" />
		<html:submit property="proc" value="ʸ����" />
	</td>
</tr>
<tr>
	<th align="right">����ʸ��̾��</th>
	<td><html:text property="newDoc" size="20" /></td>
	<td><html:submit property="proc" value="��������" /></td>
</tr>
</table>
</html:form>
</body>
</html:html>
