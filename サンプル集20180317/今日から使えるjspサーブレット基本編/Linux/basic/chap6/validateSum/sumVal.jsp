<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ include file="/bin/encode.jsp" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String strLNam=strEncode(request.getParameter("lnam"));
String strFNam=strEncode(request.getParameter("fnam"));
%>
<html>
<head>
<title>ɬ�ܸ��ڥ����å��ʥ��ޥ��</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">
ɬ�ܸ��ڥ����å��ʥ��ޥ��</h1>
<hr />
<form action="sumVal.jsp" method="POST">
��̾��
<input type="text" name="lnam" size="5"
       value="<%=(strLNam==null) ? "" : strLNam %>" />
<input type="text" name="fnam" size="5"
       value="<%=(strFNam==null) ? "" : strFNam %>" />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
	<yam:SummaryValidation
		leadMsg="�ʲ��Υ��顼��ȯ�����ޤ���" terminate="true">
		<yam:ReqValidation controlToValidate="lnam"
			errorMessage="���ɬ�ܹ��ܤǤ�" />
		<yam:ReqValidation controlToValidate="fnam"
			errorMessage="̾��ɬ�ܹ��ܤǤ�" />
	</yam:SummaryValidation>
<% } %>
</form>
</body>
</html>
