<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String strNMn=request.getParameter("minNum");
String strNMx=request.getParameter("maxNum");
String strDMn=request.getParameter("minDate");
String strDMx=request.getParameter("maxDate");
%>
<html>
<head>
<title>��Ӹ��ڥ����å�</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">��Ӹ��ڥ����å�</h1>
<hr />
<form action="cmpVal.jsp" method="POST">
�Ǿ����̡���
<input type="text" name="minNum" size="5"
       value="<%=(strNMn==null) ? "" : strNMn %>" />��
������̡���
<input type="text" name="maxNum" size="5"
       value="<%=(strNMx==null) ? "" : strNMx %>" /><br />
����ǯ������
<input type="text" name="minDate" size="12"
       value="<%=(strDMn==null) ? "" : strDMn %>" />��
��λǯ������
<input type="text" name="maxDate" size="12"
       value="<%=(strDMx==null) ? "" : strDMx %>" /><br />
<input type="submit" name="val" value="����" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:CompareValidation
	controlToValidate="minNum" controlToCompare="maxNum"
	dataType="number" operator="less"
	errorMessage="�Ǿ����̤Ϻ�����̤�꾮�����ͤǤʤ��ƤϤʤ�ޤ���"
	terminate="false" />
<yam:CompareValidation
	controlToValidate="minDate" controlToCompare="maxDate"
	dataType="dateTime" operator="less"
	errorMessage="����ǯ�����Ͻ�λǯ����������Ǥʤ��ƤϤʤ�ޤ���"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
