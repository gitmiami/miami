<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<% String strZip=request.getParameter("zip"); %>
<html>
<head>
<title>正規表現検証チェック</title>
</head>
<body>
<h1 style="color:white;background-color:#0086b2;">正規表現検証チェック</h1>
<hr />
<form action="regVal.jsp" method="POST">
郵便番号：
<input type="text" name="zip" size="15"
       value="<%=(strZip==null) ? "" : strZip %>" />
<input type="submit" name="val" value="検証" />
<% if(request.getParameter("val")!=null){ %>
<p>
<textarea cols="50" rows="5">
<yam:RegExpValidation controlToValidate="zip"
	pattern="^[0-9]{3}-[0-9]{4}$"
	errorMessage="郵便番号は「3桁」-「4桁」の形式で入力してください"
	terminate="true" />
</textarea>
</p>
<% } %>
</form>
</body>
</html>
