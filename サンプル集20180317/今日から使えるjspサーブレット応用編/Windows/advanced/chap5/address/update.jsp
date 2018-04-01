<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>�Z���^�o�^�E�X�V</title>
</head>
<body>
<h1>�Z���^�o�^�E�X�V</h1>
<hr />
<html:form action="/chap5/address/SubmitInput">
<html:hidden property="flag" />
<table border="0">
<tr>
	<th align="right">���O�F</th>
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
	<th align="right">���ʁF</th>
	<td>
		<html:select property="gender">
			<html:options name="address.gender" labelName="address.gender" />
		</html:select>
	</td>
</tr>
<tr>
	<th align="right">���N�����F</th>
	<td>
		<html:text property="birth" size="12" maxlength="10" />
	</td>
</tr>
<tr>
	<th align="right">�Z���F</th>
	<td>
		<html:text property="address" size="75" maxlength="100" />
	</td>
</tr>
<tr>
	<th align="right">�d�b�ԍ��F</th>
	<td>
		<html:text property="tel" size="18" maxlength="20" />
	</td>
</tr>
<tr>
	<th align="right">E-Mail�F</th>
	<td>
		<html:text property="email" size="50" maxlength="100" />
	</td>
</tr>
<tr>
	<td colspan="2">
		<html:submit property="sbm" value="�o�^�E�X�V" />
		<logic:notEqual name="address.data.flag" value="new">
			<html:submit property="del" value="�폜" />
		</logic:notEqual>
		<html:reset value="�N���A" />
	</td>
</tr>
</table>
</html:form>
<logic:equal name="address.data.uperr" value="true">
	<script language="JavaScript">
	<!--
	window.alert("���������ŐV�K�o�^�͂ł��܂���B");
	//-->
	</script>
</logic:equal>
<html:errors />
</body>
</html:html>
