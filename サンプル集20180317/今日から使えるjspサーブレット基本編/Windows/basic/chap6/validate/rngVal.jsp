<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strOld=request.getParameter("old"); %>
<html>
<head>
<title>�͈͌��؃`�F�b�N</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">�͈͌��؃`�F�b�N</h1>
<hr />
<form action="rngVal.jsp" method="POST">
�N��F
<input type="text" name="old" size="5"
       value="<%=(strOld==null) ? "" : strOld %>" />��
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RangeValidation controlToValidate="old"
	minValue="0" maxValue="120"
	errorMessage="�N���0�ȏ�120�ȓ��œ��͂��Ă�������"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
