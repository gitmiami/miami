<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>���ʥܡ���</title>
<script language="JavaScript">
<!--
function erase(){
	document.forms[0].plac.value="";
	document.forms[0].rTime.value="";
	document.forms[0].memo.value="";
}
//-->
</script>
<yam:ErrorDisplay display="DIALOG" />
</head>
<body>
<h1>���ҥܡ���</h1>
<yam:Form processFile="/servlet/board.brd_check_up"
	originalFile="/servlet/board.brd_check">
<table border="1">
<tr>
	<th align="right" bgcolor="#00ccff" colspan="2">̾��</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("unam")%></td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" colspan="2">����</th>
	<td bgcolor="#ffff99">
	<yam:RichInput name="present" type="radio" dataSource="prs_num"
		dataSourceValue="prs" requiredCheck="true" error="����" />
	</td>
</tr><tr>
	<th rowspan="3" bgcolor="#00ccff" align="right" valign="top">�Ժ߻�����</th>
	<th align="right" bgcolor="#ccffff">�Ԥ���</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="plac" type="text" size="20" maxLength="50"
			imeMode="active" lengthCheck="25" error="�Ԥ���" />
	</td>
</tr>
<tr>
	<th align="right" bgcolor="#ccffff">������</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="rTime" type="text" size="15" maxLength="15"
			imeMode="active" lengthCheck="8" error="������" />
	</td>
</tr><tr>
	<th align="right" bgcolor="#ccffff">���</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="memo" type="text" size="50" maxLength="255"
			imeMode="active" lengthCheck="255" error="���" />
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" colspan="2">�ǽ���������</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("uTime")%></td>
</tr>
</table>
<input type="hidden" name="uid" value="<%=request.getParameter("uid")%>" />
<input type="submit" name="sbm" value="�Ŀ;��󹹿�" />
<input type="button" value="�Ժ߻�����õ�" onclick="erase()" />
<input type="reset" value="���" />
</yam:Form>
</body>
</html>
