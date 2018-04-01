<%@page contentType="text/html;charset=Shift_JIS" %>
<html>
<head>
<title>ユーザ認証メニュー</title>
</head>
<body>
<h1>ユーザ認証メニュー</h1>
<hr />
<ol>
<%
String[] aryMenu={"システム管理者用","部門管理者用","ユーザ用"};
String[] aryUrl ={"admin.jsp","super.jsp","usr.jsp"};
String[] aryAuth={"administrator","supervisor","user"};
for(int i=0;i<aryMenu.length;i++){
	if(request.isUserInRole(aryAuth[i])){
		out.println("<li>");
		out.println("<a href='" + aryUrl[i] + "'>" + aryMenu[i] + "</a>");
		out.println("</li>");
	}
}
%>
</ol>
</body>
</html>
