<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<jsp:useBean id="objXml" class="xml.book_bean" scope="page" />
<% if(request.getParameter("sbm")==null){ %>
<html>
<head>
<title>¢��ꥹ����Ͽ</title>
</head>
<body>
<h1>¢��ꥹ����Ͽ</h1>
<form method="POST" action="submit.jsp">
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
	<th align="right">URL��</th>
	<td><input type="text" name="url" size="90" maxlength="255" /></td>
</tr>
<tr>
	<th align="right">���Ǽҡ�</th>
	<td><input type="text" name="publish" size="15" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���ʡ�</th>
	<td><input type="text" name="price" size="5" maxlength="5" />��</td>
</tr>
<tr>
	<th align="right">ȯ������</th>
	<td><input type="text" name="published" size="12" maxlength="12" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" name="sbm" value="������Ͽ" /></td>
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
