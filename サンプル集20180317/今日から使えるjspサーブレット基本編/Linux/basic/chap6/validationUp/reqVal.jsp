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
	<yam:ValidationUp id="objVal"
		controlToValidate="nam"
		errorMessage="̾����ɬ�ܹ��ܤǤ�" />
	<% if(objVal.getFlag()){ %>
		<script language="JavaScript">
		window.alert("<jsp:getProperty name="objVal" property="errorMessage" />");
		</script>
	<% } %>
<% } %>
</form>
</body>
</html>
