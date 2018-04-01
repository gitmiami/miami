<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="x"   uri="http://java.sun.com/jstl/xml" %>
<c:import var="xmlDoc" url="/data/xml/books.xml" charEncoding="Shift_JIS" />
<x:parse var="objDoc" xml="${xmlDoc}" />
<html>
<head>
<title>書籍情報リスト</title>
</head>
<body>
<h1>書籍情報リスト</h1>
<hr />
<table border="1">
<tr>
	<th>ISBNコード</th><th>書籍</th><th>出版社</th>
	<th>価格</th><th>発刊日</th>
</tr>
<x:forEach select="$objDoc/books/book">
	<tr>
		<td><x:out select="@isbn" /></td>
		<td>
			<a href="<x:out select="url" />"><x:out select="name" /></a>
		</td>
		<td><x:out select="publish" /></td>
		<td><x:out select="price" />円</td>
		<td><x:out select="published" /></td>
	</tr>
</x:forEach>
</table>
</body>
</html>
