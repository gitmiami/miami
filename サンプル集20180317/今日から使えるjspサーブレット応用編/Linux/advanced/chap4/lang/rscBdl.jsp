<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<fmt:setLocale value="${header['accept-language']}" />
<fmt:setBundle basename="msg" var="message"/>
<html>
<head>
<title><fmt:message key="msg.title" bundle="${message}" /></title>
</head>
<body>
<h1><fmt:message key="msg.title" bundle="${message}" /></h1>
<div align="right">
	<fmt:message key="msg.author" bundle="${message}" />
	(<fmt:message key="msg.date" bundle="${message}" />)
</div>
<hr />
<fmt:message key="msg.body" bundle="${message}" />
<hr />
<div align="right"><c:out value="${header['accept-language']}" /></div>
</body>
</html>
