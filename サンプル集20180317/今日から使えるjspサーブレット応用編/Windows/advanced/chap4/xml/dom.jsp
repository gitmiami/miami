<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="x"   uri="http://java.sun.com/jstl/xml" %>
<c:import var="xmlDoc" url="/data/xml/books.xml" charEncoding="Shift_JIS" />
<x:parse var="objDoc" xml="${xmlDoc}" />
<html>
<head>
<title>���Џ�񃊃X�g</title>
</head>
<body>
<h1>���Џ�񃊃X�g</h1>
<hr />
<table border="1">
<tr>
	<th>ISBN�R�[�h</th><th>����</th><th>�o�Ŏ�</th>
	<th>���i</th><th>������</th>
</tr>
<x:forEach select="$objDoc/books/book">
	<tr>
		<td><x:out select="@isbn" /></td>
		<td>
			<a href="<x:out select="url" />"><x:out select="name" /></a>
		</td>
		<td><x:out select="publish" /></td>
		<td><x:out select="price" />�~</td>
		<td><x:out select="published" /></td>
	</tr>
</x:forEach>
</table>
</body>
</html>
