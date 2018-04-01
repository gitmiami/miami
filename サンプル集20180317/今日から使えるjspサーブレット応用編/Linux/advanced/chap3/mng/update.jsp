<%@ page contentType="text/html; charset=EUC-JP" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String bgcol =null;
String uid   =(String)session.getAttribute("uid");
String unam  =(String)session.getAttribute("unam");
String depart=(String)session.getAttribute("depart");
String perms =(String)session.getAttribute("perms");
String flag  =(String)session.getAttribute("flag");
if(flag==null){
	response.sendRedirect("index.jsp");
}else{
%>
	<html>
	<head>
	<title>資産管理システム
	［<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>］</title>
	<yam:ErrorDisplay display="DIALOG" />
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	資産管理システム（既存資産更新・削除）
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		［<a href="/advanced/chap3/mng/menu.jsp">メニューに戻る</a>］</div>
	<hr />
	<yam:Form processFile="/servlet/mng.mng_update_up"
		originalFile="/servlet/mng.mng_update">
	<input type="submit" value="更新・削除" />
	<input type="reset" value="取消" />
	<table border="0">
	<tr bgcolor="#00ccff">
		<th rowspan="2">資産番号</th><th>品名</th><th>部門</th>
		<th>取得年月日</th><th rowspan="2">備考</th>
	</tr><tr bgcolor="#00ccff">
		<th>型番</th><th>設置場所</th><th>削除サイン</th>
	</tr>
		<%
		int cnt=Integer.parseInt((String)(request.getAttribute("cnt")));
		for(int i=0;i<cnt;i++){
			if(i % 2 ==0){bgcol="#ffffcc";}else{bgcol="eeeeaa";}
		%>
		<tr bgcolor="<%=bgcol%>">
			<td rowspan="2">
				<%=request.getAttribute("id" + i)%>
				<input type="hidden" name="id<%=i%>"
					value="<%=request.getAttribute("id" + i)%>" />
			</td><td>
				<%=EncodeUtil.htmlEncode((String)(request.getAttribute("nam" + i)))%>
				<input type="hidden" name="nam<%=i%>"
					value="<%=request.getAttribute("nam" + i)%>" />
			</td><td>
				<yam:RichInput name="<%="depart" + i%>" type="select"
					dataSource="depart" dataSourceValue="depart_val" />
			</td><td>
				<yam:RichInput name="<%="dat" + i%>" type="text" size="12"
					maxLength="10" imeMode="disabled"
					dateTypeCheck="true" error="<%="取得年月日No." + (i+1)%>" />
			</td><td rowspan="2">
				<yam:RichInput name="<%="mem" + i%>" type="multiText"
					cols="15" rows="2" imeMode="active" lengthCheck="123"
					error="<%="メモNo." + (i+1)%>" />
			</td>
		</tr>
		<tr bgcolor="<%=bgcol%>">
			<td>
				<%=EncodeUtil.htmlEncode((String)request.getAttribute("fnum" + i))%>
				<input type="hidden" name="fnum<%=i%>"
					value="<%=request.getAttribute("fnum" + i)%>" />
			</td>
			<td>
				<yam:RichInput name="<%="plac" + i%>" type="text" size="15"
					maxLength="15" imeMode="active"
					lengthCheck="15" error="<%="設置場所No." + (i+1)%>" />
			</td><td>
				<input type="checkbox" name="del<%=i%>" value="true" />
			</td>
		</tr>
	<% } %>
	</table>
	<input type="hidden" name="cnt" value="<%=cnt%>" />
	</yam:Form>
	</body>
	</html>
<%
}
%>
