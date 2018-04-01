<%@ page contentType="text/html;charset=Shift_JIS" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>在席ボード</title>
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
<h1>在籍ボード</h1>
<yam:Form processFile="/servlet/board.brd_check_up"
	originalFile="/servlet/board.brd_check">
<table border="1">
<tr>
	<th align="right" bgcolor="#00ccff" colspan="2">名前</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("unam")%></td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" colspan="2">状況</th>
	<td bgcolor="#ffff99">
	<yam:RichInput name="present" type="radio" dataSource="prs_num"
		dataSourceValue="prs" requiredCheck="true" error="状況" />
	</td>
</tr><tr>
	<th rowspan="3" bgcolor="#00ccff" align="right" valign="top">不在時情報</th>
	<th align="right" bgcolor="#ccffff">行き先</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="plac" type="text" size="20" maxLength="50"
			imeMode="active" lengthCheck="25" error="行き先" />
	</td>
</tr>
<tr>
	<th align="right" bgcolor="#ccffff">戻り時間</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="rTime" type="text" size="15" maxLength="15"
			imeMode="active" lengthCheck="8" error="戻り時間" />
	</td>
</tr><tr>
	<th align="right" bgcolor="#ccffff">メモ</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="memo" type="text" size="50" maxLength="255"
			imeMode="active" lengthCheck="255" error="メモ" />
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" colspan="2">最終更新日時</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("uTime")%></td>
</tr>
</table>
<input type="hidden" name="uid" value="<%=request.getParameter("uid")%>" />
<input type="submit" name="sbm" value="個人情報更新" />
<input type="button" value="不在時情報消去" onclick="erase()" />
<input type="reset" value="取消" />
</yam:Form>
</body>
</html>
