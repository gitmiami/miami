<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>����ɼ</title>
<yam:ErrorDisplay display="DIALOG" />
</head>
<body>
<h1>����ɼ</h1>
<h2><%=request.getAttribute("unam")%>����ؤ�����</h2>
<yam:Form processFile="/servlet/board.brd_memo_up"
	originalFile="/servlet/board.brd_memo">
<input type="hidden" name="uid" value="<%=request.getAttribute("uid")%>" />
<input type="hidden" name="uPsn" value="<%=request.getAttribute("uPsn")%>" />
<table border="1">
<tr>
	<th align="right" bgcolor="#00ccff">̾��</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="sec" type="text" size="20" maxLength="15"
			imeMode="active" lengthCheck="15" error="��" />��
		<yam:RichInput name="psn" type="text" size="10" maxLength="12"
			imeMode="active" requiredCheck="true" lengthCheck="12" error="̾��"/>�ͤ�
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff" valign="top">��������</th>
	<td bgcolor="#ffff99">
		<yam:RichInput name="dSec" type="radio" multi="true"
			dataSource="stt_num" dataSourceValue="stt_val" />
		<yam:RichInput name="comment" type="multiText" 
			cols="40" rows="5" imeMode="active" lengthCheck="100" error="�������" />
		<div style="text-align:right;">
		����������ֹ桧
		<yam:RichInput name="tel" type="text" size="20" maxLength="20"
			imeMode="disabled" lengthCheck="20" error="�����ֹ�" />
		</div>
	</td>
</tr><tr>
	<th align="right" bgcolor="#00ccff">��������</th>
	<td bgcolor="#ffff99"><%=request.getAttribute("now")%></td>
</tr>
</table>
<input type="submit" name="sbm" value="�������֤�" />
<input type="reset" value="���" />
</yam:Form>
</body>
</html>
