<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="req" uri="http://jakarta.apache.org/taglibs/request-1.0" %>
<%@ taglib prefix="res" uri="http://jakarta.apache.org/taglibs/response-1.0" %>
<fmt:requestEncoding value="Shift_JIS" />
<res:addCookie name="unam">
	<res:value><req:parameter name="unam" /></res:value>
	<res:maxAge>15552000</res:maxAge>
</res:addCookie>
<c:redirect url="cookie1.jsp" />