<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<html>
<head>
<title>¢��ꥹ�ȸ���</title>
</head>
<body>
<h1>¢��ꥹ�ȸ���</h1>
<% if(request.getParameter("sbm")==null){ %>
<form method="POST" action="search.jsp">
<table border="0">
<tr>
	<th align="right">ISBN�����ɡ�</th>
	<td><input type="text" name="isbn" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">��̾��</th>
	<td><input type="text" name="nam" size="40" maxlength="100" /></td>
</tr>
<tr>
	<th align="right">���Ǽҡ�</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���ʡ�</th>
	<td><input type="text" name="price" size="5" maxlength="5" />�߰ʾ�</td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="���Ҹ���" /></td>
</tr>
</table>
</form>
<% }else{ %>
	<table border="1">
	<tr>
		<th>ISBN</th><th>��̾</th><th>���Ǽ�</th><th>����</th><th>ȯ����</th>
	</tr>
	<%=objXml.getBookInfo(application.getRealPath("data/xml/books.xml"),request.getParameter("isbn"),strEncode(request.getParameter("nam")),strEncode(request.getParameter("publish")),request.getParameter("price"))%>
	</table>
<% } %>
</body>
</html>
