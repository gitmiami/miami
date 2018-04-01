<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>住所録登録・更新</title>
</head>
<body>
<h1>住所録登録・更新</h1>
<hr />
<html:form action="/chap5/address/SubmitInput">
<html:hidden property="flag" />
<table border="0">
<tr>
	<th align="right">名前：</th>
	<td>
		<html:hidden property="id" />
		<logic:equal name="address.data.flag" value="new">
			<html:text property="nam" size="20" maxlength="20" />
		</logic:equal>
		<logic:equal name="address.data.flag" value="update">
			<html:hidden property="nam" />
			<html:text property="nam" size="20" maxlength="20"
				style="background:#DDddDD" readonly="true" />
		</logic:equal>
	</td>
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
	<th align="right">生年月日：</th>
	<td>
		<html:text property="birth" size="12" maxlength="10" />
	</td>
</tr>
<tr>
	<th align="right">住所：</th>
	<td>
		<html:text property="address" size="75" maxlength="100" />
	</td>
</tr>
<tr>
	<th align="right">電話番号：</th>
	<td>
		<html:text property="tel" size="18" maxlength="20" />
	</td>
</tr>
<tr>
	<th align="right">E-Mail：</th>
	<td>
		<html:text property="email" size="50" maxlength="100" />
	</td>
</tr>
<tr>
	<td colspan="2">
		<html:submit property="sbm" value="登録・更新" />
		<logic:notEqual name="address.data.flag" value="new">
			<html:submit property="del" value="削除" />
		</logic:notEqual>
		<html:reset value="クリア" />
	</td>
</tr>
</table>
</html:form>
<logic:equal name="address.data.uperr" value="true">
	<script language="JavaScript">
	<!--
	window.alert("同姓同名で新規登録はできません。");
	//-->
	</script>
</logic:equal>
<html:errors />
</body>
</html:html>
