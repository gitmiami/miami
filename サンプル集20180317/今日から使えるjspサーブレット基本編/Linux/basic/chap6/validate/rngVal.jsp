<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strOld=request.getParameter("old"); %>
<html>
<head>
<title>�ϰϸ��ڥ����å�</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">�ϰϸ��ڥ����å�</h1>
<hr />
<form action="rngVal.jsp" method="POST">
ǯ��
<input type="text" name="old" size="5"
       value="<%=(strOld==null) ? "" : strOld %>" />��
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RangeValidation controlToValidate="old"
	minValue="0" maxValue="120"
	errorMessage="ǯ���0�ʾ�120��������Ϥ��Ƥ���������"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
