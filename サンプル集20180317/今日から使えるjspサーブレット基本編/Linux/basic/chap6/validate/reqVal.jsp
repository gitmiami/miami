<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ include file="/bin/encode.jsp" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strNam=strEncode(request.getParameter("nam")); %>
<html>
<head>
<title>ɬ�ܸ��ڥ����å�</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">ɬ�ܸ��ڥ����å�</h1>
<hr />
<form action="reqVal.jsp" method="POST">
̾����
<input type="text" name="nam" size="15"
       value="<%=(strNam==null) ? "" : strNam %>" />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RequiredValidation controlToValidate="nam"
	errorMessage="̾����ɬ�ܹ��ܤǤ�"
	terminate="false" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
