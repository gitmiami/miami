<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="x"   uri="http://java.sun.com/jstl/xml" %>
<c:import var="xmlDoc" url="/data/xml/books.xml" charEncoding="Shift_JIS" />
<c:choose>
	<c:when test="<%=(request.getHeader("user-agent").indexOf("DoCoMo")==-1)%>">
		<c:import var="xslDoc" url="/data/xml/table.xsl"
			charEncoding="Shift_JIS" />
	</c:when>
	<c:otherwise>
		<c:import var="xslDoc" url="/data/xml/simple.xsl"
			charEncoding="Shift_JIS" />
	</c:otherwise>
</c:choose>
<x:transform xml="${xmlDoc}" xslt="${xslDoc}" />
<p>
	<c:set var="update" value="2002/10/14" />
	<fmt:parseDate value="${update}" type="date"
		dateStyle="short" timeZone="JST" var="updateDate" />
	<fmt:formatDate pattern="yyyy”NMMŒŽdd“ú" value="${updateDate}" />
</p>