<%@page contentType="text/html;charset=EUC-JP" %>
<html>
<head>
<title>�桼��ǧ�ڥ�˥塼</title>
</head>
<body>
<h1>�桼��ǧ�ڥ�˥塼</h1>
<hr />
<ol>
<%
String[] aryMenu={"�����ƥ��������","�����������","�桼����"};
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
