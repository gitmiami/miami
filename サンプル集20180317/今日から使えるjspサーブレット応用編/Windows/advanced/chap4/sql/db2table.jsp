<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"  %>
<sql:setDataSource
	driver="org.gjt.mm.mysql.Driver" var="db"
	url="jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS" />
<sql:query var="rs" dataSource="${db}">SELECT * FROM ml_usr</sql:query>
<html>
<head>
<title>���[�����O���X�g�i�o�^�����o�ꗗ�j</title>
</head>
<body>
<h1>���[�����O���X�g�i�o�^�����o�ꗗ�j</h1>
<table border="1">
<tr>
<th>���[�U��</th><th>E-mail</th>
</tr>
<c:forEach var="rec" items="${rs.rows}">
	<tr>
	<td><c:out value="${rec.unam}" /></td>
	<td><c:out value="${rec.email}" /></td>
	</tr>
</c:forEach>
</table>
<p>
	<jsp:useBean id="today" class="java.util.Date" />
	<fmt:formatDate pattern="yyyy�NMM��dd��" value="${today}" />
	���_�o�^��
</p>
</body>
</html>
