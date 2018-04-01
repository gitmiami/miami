<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>簡易メモ帳（メモ入力）</title>
<base target="_parent" />
</head>
<body>
<logic:equal name="memo.flag" value="newError">
	<div style="color:#FF0000">
	！！警告！！同名のファイルがすでに存在します
	</div>
</logic:equal>
<logic:notEqual name="memo.flag" value="newError">
	<html:form action="/chap5/memo/strutsSave">
	<html:textarea property="memo" cols="80" rows="20" />
	<br />
	<html:hidden property="doc" />
	<html:submit property="submit" value="保存" />
	</html:form>
</logic:notEqual>
<logic:equal name="memo.flag" value="delProcess">
	<script language="JavaScript">
	<!--
	parent.location.href="index.html";
	//-->
	</script>
</logic:equal>
</body>
</html:html>
