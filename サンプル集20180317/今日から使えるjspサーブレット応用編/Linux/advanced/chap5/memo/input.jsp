<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/tags/struts-html"  prefix="html" %>
<%@ taglib uri="/tags/struts-bean"  prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<html:html>
<head>
<title>�ʰץ��Ģ�ʥ�����ϡ�</title>
<base target="_parent" />
</head>
<body>
<logic:equal name="memo.flag" value="newError">
	<div style="color:#FF0000">
	�����ٹ𡪡�Ʊ̾�Υե����뤬���Ǥ�¸�ߤ��ޤ�
	</div>
</logic:equal>
<logic:notEqual name="memo.flag" value="newError">
	<html:form action="/chap5/memo/strutsSave">
	<html:textarea property="memo" cols="80" rows="20" />
	<br />
	<html:hidden property="doc" />
	<html:submit property="submit" value="��¸" />
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
