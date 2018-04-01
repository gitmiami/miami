<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>伝言票</title>
<yam:ErrorDisplay display="DIALOG" />
</head>
<body>
<h1>伝言票</h1>
<h2><%=request.getAttribute("unam")%>さんへの伝言</h2>
<yam:Form processFile="/servlet/board.brd_memo_up"
	originalFile="/servlet/board.brd_memo">
<input type="hidden" name="uid" value="<%=request.getAttribute("uid")%>" />
<input type="hidden" name="uPsn" value="<%=request.getAttribute("uPsn")%>" />
<table border="1">
<tr>
	<th align="right" bgcolor="#00ccff">名前</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="sec" type="text" size="20" maxLength="15"
			imeMode="active" lengthCheck="15" error="部" />部
		<yam:RichInput name="psn" type="text" size="10" maxLength="12"
			imeMode="active" requiredCheck="true" lengthCheck="12" error="名前"/>様が
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" valign="top">伝言内容</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="dSec" type="radio" multi="true"
			dataSource="stt_num" dataSourceValue="stt_val" />
		<yam:RichInput name="comment" type="multiText" 
			cols="40" rows="5" imeMode="active" lengthCheck="100" error="伝言メモ" />
		<div style="text-align:right;">
		相手先電話番号：
		<yam:RichInput name="tel" type="text" size="20" maxLength="20"
			imeMode="disabled" lengthCheck="20" error="電話番号" />
		</div>
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff">受付日時</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("now")%></td>
</tr>
</table>
<input type="submit" name="sbm" value="伝言を置く" />
<input type="reset" value="取消" />
</yam:Form>
</body>
</html>
