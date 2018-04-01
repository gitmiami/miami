<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%
String  uid   =(String)session.getAttribute("uid");
String  unam  =(String)session.getAttribute("unam");
String  depart=(String)session.getAttribute("depart");
String perms  =(String)session.getAttribute("perms");
String  flag  =(String)session.getAttribute("flag");
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
	<img src="cd.gif" width="25" height="25" />
	資産管理システム（資産情報検索）
	<img src="cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		［<a href="/advanced/chap3/mng/menu.jsp">メニューに戻る</a>］</div>
	<hr />
	<form method="POST" action="/advanced/servlet/mng.mng_result">
	<table border="0">
	<tr>
		<th>資産番号：</th>
		<td><input type="text" name="id" size="15" maxlength="10"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>型番：</th>
		<td><input type="text" name="fnum" size="20" maxlength="50"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>保管責任部門：</th>
		<td>
			<select name="depart">
				<option value="" selected>指定なし</option>
				<option value="総務">総務部</option>
				<option value="資材">資材部</option>
				<option value="技術">技術部</option>
				<option value="製造">製造部</option>
				<option value="システム">システム部</option>
			</select>
		</td>
	</tr><tr>
		<td colspan="2" align="center">
			<input type="submit" name="sbm" value="情報検索" />
			<input type="reset" value="取消" />
		</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
}
%>
