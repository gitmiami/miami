<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<html>
<head>
<title>蔵書リスト検索</title>
</head>
<body>
<h1>蔵書リスト検索</h1>
<% if(request.getParameter("sbm")==null){ %>
<form method="POST" action="search.jsp">
<table border="0">
<tr>
	<th align="right">ISBNコード：</th>
	<td><input type="text" name="isbn" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">書名：</th>
	<td><input type="text" name="nam" size="40" maxlength="100" /></td>
</tr>
<tr>
	<th align="right">出版社：</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">価格：</th>
	<td><input type="text" name="price" size="5" maxlength="5" />円以上</td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="書籍検索" /></td>
</tr>
</table>
</form>
<% }else{ %>
	<table border="1">
	<tr>
		<th>ISBN</th><th>書名</th><th>出版社</th><th>価格</th><th>発刊日</th>
	</tr>
	<%=objXml.getBookInfo(application.getRealPath("data/xml/books.xml"),request.getParameter("isbn"),strEncode(request.getParameter("nam")),strEncode(request.getParameter("publish")),request.getParameter("price"))%>
	</table>
<% } %>
</body>
</html>
