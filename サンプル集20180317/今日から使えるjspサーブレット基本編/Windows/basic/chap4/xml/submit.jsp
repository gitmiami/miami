<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<% if(request.getParameter("sbm")==null){ %>
<html>
<head>
<title>蔵書リスト登録</title>
</head>
<body>
<h1>蔵書リスト登録</h1>
<form method="POST" action="submit.jsp">
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
	<th align="right">URL：</th>
	<td><input type="text" name="url" size="90" maxlength="255" /></td>
</tr>
<tr>
	<th align="right">出版社：</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">価格：</th>
	<td><input type="text" name="price" size="5" maxlength="5" />円</td>
</tr>
<tr>
	<th align="right">発刊日：</th>
	<td><input type="text" name="published" size="12" maxlength="12" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="書籍登録" /></td>
</tr>
</table>
</form>
</body>
</html>
<%
}else{
	objXml.setBookInfo(application.getRealPath("data/xml/books.xml"),request.getParameter("isbn"),strEncode(request.getParameter("nam")),strEncode(request.getParameter("url")),strEncode(request.getParameter("publish")),request.getParameter("price"),request.getParameter("published"));
	response.sendRedirect("submit.jsp");
}
%>
