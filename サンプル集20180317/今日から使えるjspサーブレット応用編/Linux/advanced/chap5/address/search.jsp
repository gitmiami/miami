<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>住所録検索</title>
</head>
<body>
<h1>住所録検索</h1>
<hr />
<html:form action="/chap5/address/SearchInput">
<table border="0">
<tr>
	<th align="right">名前：</th>
	<td><html:text property="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">性別：</th>
	<td>
		<html:select property="gender">
			<html:options name="address.gender" labelName="address.gender" />
		</html:select>
	</td>
</tr>
<tr>
	<th align="right">都道府県：</th>
	<td>
		<html:select property="prefecture">
			<html:options name="address.prefecture" labelName="address.prefecture" />
		</html:select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<html:submit property="submit" value="検索" />
		<html:reset value="クリア" />
	</td>
</tr>
</table>
</html:form>
</html:html>
