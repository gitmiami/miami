<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<html>
<head>
<title> Xgυ</title>
</head>
<body>
<h1> Xgυ</h1>
<% if(request.getParameter("sbm")==null){ %>
<form method="POST" action="search.jsp">
<table border="0">
<tr>
	<th align="right">ISBNR[hF</th>
	<td><input type="text" name="isbn" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">ΌF</th>
	<td><input type="text" name="nam" size="40" maxlength="100" /></td>
</tr>
<tr>
	<th align="right">oΕΠF</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">ΏiF</th>
	<td><input type="text" name="price" size="5" maxlength="5" />~Θγ</td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="Πυ" /></td>
</tr>
</table>
</form>
<% }else{ %>
	<table border="1">
	<tr>
		<th>ISBN</th><th>Ό</th><th>oΕΠ</th><th>Ώi</th><th>­§ϊ</th>
	</tr>
	<%=objXml.getBookInfo(application.getRealPath("data/xml/books.xml"),request.getParameter("isbn"),strEncode(request.getParameter("nam")),strEncode(request.getParameter("publish")),request.getParameter("price"))%>
	</table>
<% } %>
</body>
</html>
