<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strZip=request.getParameter("zip"); %>
<html>
<head>
<title>����ɽ�����ڥ����å�</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">����ɽ�����ڥ����å�</h1>
<hr />
<form action="regVal.jsp" method="POST">
͹���ֹ桧
<input type="text" name="zip" size="15"
       value="<%=(strZip==null) ? "" : strZip %>" />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RegExpValidation controlToValidate="zip"
	pattern="^[0-9]{3}-[0-9]{4}$"
	errorMessage="͹���ֹ�ϡ�3���-��4��פη��������Ϥ��Ƥ�������"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
