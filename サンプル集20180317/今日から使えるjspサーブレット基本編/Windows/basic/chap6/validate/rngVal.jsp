<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strOld=request.getParameter("old"); %>
<html>
<head>
<title>範囲検証チェック</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">範囲検証チェック</h1>
<hr />
<form action="rngVal.jsp" method="POST">
年齢：
<input type="text" name="old" size="5"
       value="<%=(strOld==null) ? "" : strOld %>" />歳
<input type="submit" name="val" value="検証" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RangeValidation controlToValidate="old"
	minValue="0" maxValue="120"
	errorMessage="年齢は0以上120以内で入力してください"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
