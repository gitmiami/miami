<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"  %>
<sql:setDataSource
	driver="org.gjt.mm.mysql.Driver" var="db"
	url="jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP" />
<sql:query var="rs" dataSource="${db}">SELECT * FROM ml_usr</sql:query>
<html>
<head>
<title>�᡼��󥰥ꥹ�ȡ���Ͽ���а�����</title>
</head>
<body>
<h1>�᡼��󥰥ꥹ�ȡ���Ͽ���а�����</h1>
<table border="1">
<tr>
<th>�桼��̾</th><th>E-mail</th>
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
	<fmt:formatDate pattern="yyyyǯMM��dd��" value="${today}" />
	������Ͽ����
</p>
</body>
</html>
