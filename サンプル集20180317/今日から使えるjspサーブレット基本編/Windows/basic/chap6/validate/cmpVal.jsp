<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String strNMn=request.getParameter("minNum");
String strNMx=request.getParameter("maxNum");
String strDMn=request.getParameter("minDate");
String strDMx=request.getParameter("maxDate");
%>
<html>
<head>
<title>��r���؃`�F�b�N</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">��r���؃`�F�b�N</h1>
<hr />
<form action="cmpVal.jsp" method="POST">
�ŏ����ʁ@�F
<input type="text" name="minNum" size="5"
       value="<%=(strNMn==null) ? "" : strNMn %>" />�`
�ő吔�ʁ@�F
<input type="text" name="maxNum" size="5"
       value="<%=(strNMx==null) ? "" : strNMx %>" /><br />
�J�n�N�����F
<input type="text" name="minDate" size="12"
       value="<%=(strDMn==null) ? "" : strDMn %>" />�`
�I���N�����F
<input type="text" name="maxDate" size="12"
       value="<%=(strDMx==null) ? "" : strDMx %>" /><br />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:CompareValidation
	controlToValidate="minNum" controlToCompare="maxNum"
	dataType="number" operator="less"
	errorMessage="�ŏ����ʂ͍ő吔�ʂ�菬�����l�łȂ��Ă͂Ȃ�܂���"
	terminate="false" />
<yam:CompareValidation
	controlToValidate="minDate" controlToCompare="maxDate"
	dataType="dateTime" operator="less"
	errorMessage="�J�n�N�����͏I���N�������O�łȂ��Ă͂Ȃ�܂���"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
