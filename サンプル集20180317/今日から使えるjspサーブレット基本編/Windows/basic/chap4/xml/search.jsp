<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<html>
<head>
<title>�������X�g����</title>
</head>
<body>
<h1>�������X�g����</h1>
<% if(request.getParameter("sbm")==null){ %>
<form method="POST" action="search.jsp">
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
	<th align="right">�o�ŎЁF</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���i�F</th>
	<td><input type="text" name="price" size="5" maxlength="5" />�~�ȏ�</td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="���Ќ���" /></td>
</tr>
</table>
</form>
<% }else{ %>
	<table border="1">
	<tr>
		<th>ISBN</th><th>����</th><th>�o�Ŏ�</th><th>���i</th><th>������</th>
	</tr>
	<%=objXml.getBookInfo(application.getRealPath("data/xml/books.xml"),request.getParameter("isbn"),strEncode(request.getParameter("nam")),strEncode(request.getParameter("publish")),request.getParameter("price"))%>
	</table>
<% } %>
</body>
</html>
