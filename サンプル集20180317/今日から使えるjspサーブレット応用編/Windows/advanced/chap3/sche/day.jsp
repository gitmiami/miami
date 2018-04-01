<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<jsp:useBean id="objSche" class="sche.sche_bean" scope="page" />
<%
ResultSet rs=objSche.getSchedule((String)request.getAttribute("id"),(String)request.getAttribute("dat"));
%>
<html>
<head>
<title><%=request.getAttribute("dat")%>の予定
	［<%=EncodeUtil.htmlEncode((String)request.getAttribute("nam"))%>］</title>
<yam:ErrorDisplay display="DIALOG" />
</head>
<body>
<h1>
<img src="/advanced/chap3/sche/sche.gif" width="25" height="25" />
	<%=request.getAttribute("dat")%>の予定
<img src="/advanced/chap3/sche/sche.gif" width="25" height="25" />
</h1>
<table border="1">
<tr>
	<th>開始時刻</th><th>終了時刻</th><th>予定</th>
	<th>予定区分</th><th>メモ</th><th>中止</th>
</tr>
<% while(rs.next()){ %>
	<tr>
		<td><%=EncodeUtil.formatDate("HH時mm分",rs.getTime("bTim"))%></td>
		<td><%=EncodeUtil.formatDate("HH時mm分",rs.getTime("eTim"))%></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("pNam"))%><br /></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("nam"))%></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("memo"))%><br /></td>
		<td>
			<a href="/advanced/servlet/sche.sche_del?dat=<%=request.getAttribute("dat")%>&pid=<%=rs.getString("pid")%>">
			<img src="/advanced/chap3/sche/eraser.gif" border="0"
				width="15" height="15" alt="削除" /></a>
		</td>
	</tr>
<% } %>
</table>
<div align="right">
［<a href="/advanced/servlet/sche.sche_index">カレンダーに戻る</a>］
</div>
<hr />
<h2>予定を追加</h2>
<yam:Form
	processFile="/servlet/sche.sche_up" originalFile="/servlet/sche.sche_day"
	queryString="<%="dat=" + (String)request.getAttribute("dat")%>">
<table border="0">
<tr>
	<th align="right">予定：</th>
	<td>
		<yam:RichInput name="pNam" type="text" size="50" maxLength="50"
			imeMode="active" lengthCheck="50" error="予定" />
	</td>
</tr><tr>
	<th align="right">開始時間：</th>
	<td>
		<yam:RichInput name="bTim" type="select" dataSource="tim"
			dataSourceValue="tim" requiredCheck="true"
			compareCheck="eTim" error="開始時間,終了時間" />
	</td>
</tr><tr>
	<th align="right">終了時間：</th>
	<td>
		<yam:RichInput name="eTim" type="select" dataSource="tim"
			dataSourceValue="tim" requiredCheck="true" />
	</td>
</tr><tr>
	<th align="right">予定区分：</th>
	<td>
		<yam:RichInput name="cate" type="select"
			dataSource="category_id" dataSourceValue="category_nam" />
	</td>
</tr><tr>
	<th align="right">メモ：</th>
	<td>
		<yam:RichInput name="memo" type="text" size="100" maxLength="255"
			imeMode="active" lengthCheck="255" error="メモ" />
	</td>
</tr><tr>
	<td colspan="2" align="center">
		<input type="submit" name="sbm" value="スケジュール登録" />
		<input type="submit" name="src" value="他の人の予定を検索" />
		<input type="reset" value="　取消　" />
	</td>
</tr>
</table>
</yam:Form>
</body>
</html>
