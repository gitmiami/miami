<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<% if(request.getParameter("sbm")==null){ %>
<html>
<head>
<title>�������X�g�o�^</title>
</head>
<body>
<h1>�������X�g�o�^</h1>
<form method="POST" action="submit.jsp">
<table border="0">
<tr>
	<th align="right">ISBN�R�[�h�F</th>
	<td><input type="text" name="isbn" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">�����F</th>
	<td><input type="text" name="nam" size="40" maxlength="100" /></td>
</tr>
<tr>
	<th align="right">URL�F</th>
	<td><input type="text" name="url" size="90" maxlength="255" /></td>
</tr>
<tr>
	<th align="right">�o�ŎЁF</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���i�F</th>
	<td><input type="text" name="price" size="5" maxlength="5" />�~</td>
</tr>
<tr>
	<th align="right">�������F</th>
	<td><input type="text" name="published" size="12" maxlength="12" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="���Гo�^" /></td>
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
