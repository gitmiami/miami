<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ include file="/bin/encode.jsp" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String strLNam=strEncode(request.getParameter("lnam"));
String strFNam=strEncode(request.getParameter("fnam"));
%>
<html>
<head>
<title>�K�{���؃`�F�b�N�i�T�}���j</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">
�K�{���؃`�F�b�N�i�T�}���j</h1>
<hr />
<form action="sumVal.jsp" method="POST">
�����F
<input type="text" name="lnam" size="5"
       value="<%=(strLNam==null) ? "" : strLNam %>" />
<input type="text" name="fnam" size="5"
       value="<%=(strFNam==null) ? "" : strFNam %>" />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
	<yam:SummaryValidation
		leadMsg="�ȉ��̃G���[���������܂���" terminate="true">
		<yam:ReqValidation controlToValidate="lnam"
			errorMessage="���͕K�{���ڂł�" />
		<yam:ReqValidation controlToValidate="fnam"
			errorMessage="���͕K�{���ڂł�" />
	</yam:SummaryValidation>
<% } %>
</form>
</body>
</html>
