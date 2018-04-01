<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="x"   uri="http://java.sun.com/jstl/xml" %>
<c:import var="xmlDoc" url="/data/xml/books.xml" charEncoding="EUC-JP" />
<x:parse var="objDoc" xml="${xmlDoc}" />
<html>
<head>
<title>���Ҿ���ꥹ��</title>
</head>
<body>
<h1>���Ҿ���ꥹ��</h1>
<hr />
<table border="1">
<tr>
	<th>ISBN������</th><th>����</th><th>���Ǽ�</th>
	<th>����</th><th>ȯ����</th>
</tr>
<x:forEach select="$objDoc/books/book">
	<tr>
		<td><x:out select="@isbn" /></td>
		<td>
			<a href="<x:out select="url" />"><x:out select="name" /></a>
		</td>
		<td><x:out select="publish" /></td>
		<td><x:out select="price" />��</td>
		<td><x:out select="published" /></td>
	</tr>
</x:forEach>
</table>
</body>
</html>
