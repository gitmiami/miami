<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strZip=request.getParameter("zip"); %>
<html>
<head>
<title>���K�\�����؃`�F�b�N</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">���K�\�����؃`�F�b�N</h1>
<hr />
<form action="regVal.jsp" method="POST">
�X�֔ԍ��F
<input type="text" name="zip" size="15"
       value="<%=(strZip==null) ? "" : strZip %>" />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RegExpValidation controlToValidate="zip"
	pattern="^[0-9]{3}-[0-9]{4}$"
	errorMessage="�X�֔ԍ��́u3���v-�u4���v�̌`���œ��͂��Ă�������"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
