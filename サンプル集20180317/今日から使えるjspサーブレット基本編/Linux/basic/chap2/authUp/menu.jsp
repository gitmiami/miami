<%@ page contentType="text/html;charset=EUC-JP" %>
<html>
<head>
<title>�桼��ǧ�ڥ�˥塼</title>
</head>
<body>
<h1>�桼��ǧ�ڥ�˥塼</h1>
<hr />
<ol>
<%
String[] aryMenu={"�桼����1+3����","�桼����1+2����","�桼����1+2+3����"};
String[] aryUrl ={"usr1.jsp","usr2.jsp","usr3.jsp"};
String[] aryUsr ={"user1","user2","user3"};
boolean[][] aryAuth={{true,false,true},{true,true,false},{true,true,true}};
for(int i=0;i<aryMenu.length;i++){
	for(int j=0;j<aryUsr.length;j++){
		if(aryAuth[i][j] && request.isUserInRole(aryUsr[j])){
			out.println("<li>");
			out.println("<a href='" + aryUrl[i] + "'>" + aryMenu[i] + "</a>");
			out.println("</li>");
			break;
		}
	}
}
%>
</ol>
</body>
</html>
