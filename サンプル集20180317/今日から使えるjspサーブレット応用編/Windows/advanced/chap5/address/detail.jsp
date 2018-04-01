<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>住所録検索（結果一覧）</title>
</head>
<body>
<h1>住所録検索</h1>
<hr />
［<a href="Update.do">新規作成</a>］
<table border="1">
	<tr>
		<th>名前</th><th>性別</th><th>生年月日</th><th>住所</th>
		<th>電話番号</th><th>E-Mailアドレス</th><th>更新</th>
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
				<img src="pen.gif" border="0" width="15" height="15" alt="更新">
			</a></td>
		</tr>
	</logic:iterate>
</table>
</html:html>
