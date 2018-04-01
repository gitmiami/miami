<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<html:html>
<head>
<title>簡易メモ帳（文書一覧）</title>
<base target="down" />
</head>
<body>
<h1>簡易メモ帳</h1>
<html:form action="/chap5/memo/strutsInput">
<table border="0">
<tr>
	<th align="right">読み込み文書名：</th>
	<td>
	<html:select property="doc">
		<html:options name="memo.docName" labelName="memo.docName" />
	</html:select>
	</td>
	<td>
		<html:submit property="proc" value="読み込み" />
		<html:submit property="proc" value="文書削除" />
	</td>
</tr>
<tr>
	<th align="right">新規文書名：</th>
	<td><html:text property="newDoc" size="20" /></td>
	<td><html:submit property="proc" value="新規作成" /></td>
</tr>
</table>
</html:form>
</body>
</html:html>
