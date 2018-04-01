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
<title>比較検証チェック</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">比較検証チェック</h1>
<hr />
<form action="cmpVal.jsp" method="POST">
最小数量　：
<input type="text" name="minNum" size="5"
       value="<%=(strNMn==null) ? "" : strNMn %>" />～
最大数量　：
<input type="text" name="maxNum" size="5"
       value="<%=(strNMx==null) ? "" : strNMx %>" /><br />
開始年月日：
<input type="text" name="minDate" size="12"
       value="<%=(strDMn==null) ? "" : strDMn %>" />～
終了年月日：
<input type="text" name="maxDate" size="12"
       value="<%=(strDMx==null) ? "" : strDMx %>" /><br />
<input type="submit" name="val" value="検証" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:CompareValidation
	controlToValidate="minNum" controlToCompare="maxNum"
	dataType="number" operator="less"
	errorMessage="最小数量は最大数量より小さい値でなくてはなりません"
	terminate="false" />
<yam:CompareValidation
	controlToValidate="minDate" controlToCompare="maxDate"
	dataType="dateTime" operator="less"
	errorMessage="開始年月日は終了年月日より前でなくてはなりません"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
