<%@page contentType="text/html;charset=Shift_JIS" %>
<html>
<head>
<title>���[�U�F�؃��j���[</title>
</head>
<body>
<h1>���[�U�F�؃��j���[</h1>
<hr />
<ol>
<%
String[] aryMenu={"�V�X�e���Ǘ��җp","����Ǘ��җp","���[�U�p"};
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
