<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ include file="/bin/encode.jsp" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String strLNam=strEncode(request.getParameter("lnam"));
String strFNam=strEncode(request.getParameter("fnam"));
%>
<html>
<head>
<title>必須検証チェック（サマリ）</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">
必須検証チェック（サマリ）</h1>
<hr />
<form action="sumVal.jsp" method="POST">
氏名：
<input type="text" name="lnam" size="5"
       value="<%=(strLNam==null) ? "" : strLNam %>" />
<input type="text" name="fnam" size="5"
       value="<%=(strFNam==null) ? "" : strFNam %>" />
<input type="submit" name="val" value="検証" />
<% if(request.getParameter("val")!=null){ %>
	<yam:SummaryValidation
		leadMsg="以下のエラーが発生しました" terminate="true">
		<yam:ReqValidation controlToValidate="lnam"
			errorMessage="氏は必須項目です" />
		<yam:ReqValidation controlToValidate="fnam"
			errorMessage="名は必須項目です" />
	</yam:SummaryValidation>
<% } %>
</form>
</body>
</html>
