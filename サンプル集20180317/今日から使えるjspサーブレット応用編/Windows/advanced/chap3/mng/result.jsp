<%@ page contentType="text/html; charset=Shift_JIS" import="beanYama.*" %>
<jsp:useBean id="objMng" class="mng.mng_bean" scope="request" />
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
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	資産管理システム（資産情報検索）
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		［<a href="/advanced/chap3/mng/menu.jsp">メニューに戻る</a>］</div>
	<hr />
	<%=objMng.getResultCount() %>件のデータが検索されました。
	<table border="0">
	<tr bgcolor="#00ccff">
		<th rowspan="2">資産番号</th><th>品名</th><th>部門</th>
		<th>取得年月日</th><th rowspan="2">備考</th>
	</tr><tr bgcolor="#00ccff">
		<th>型番</th><th>設置場所</th><th></th>
	</tr>
	<% for(int i=0;i<objMng.getResultCount();i++){
			if(i % 2 ==0){bgcol="#ffffcc";}else{bgcol="eeeeaa";}
		%>
		<tr bgcolor="<%=bgcol%>">
			<td rowspan="2">
				<a href="JavaScript:void(0)" onclick="window.open('/advanced/servlet/mng.mng_desc?id=<%=objMng.getId(i)%>','','width=250,height=250')">
				<%=objMng.getId(i)%></a></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getNam(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getDepart(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getDat(i))%></td>
			<td rowspan="2"><%=EncodeUtil.htmlEncode(objMng.getMem(i))%></td>
		</tr>
		<tr bgcolor="<%=bgcol%>">
			<td><%=EncodeUtil.htmlEncode(objMng.getFnum(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getPlac(i))%></td>
			<td></td>
		</tr>
	<% } %>
	</table>
	</body>
	</html>
<%
}
%>
