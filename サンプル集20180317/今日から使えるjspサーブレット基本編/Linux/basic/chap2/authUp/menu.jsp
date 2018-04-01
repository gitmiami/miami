<%@ page contentType="text/html;charset=EUC-JP" %>
<html>
<head>
<title>ユーザ認証メニュー</title>
</head>
<body>
<h1>ユーザ認証メニュー</h1>
<hr />
<ol>
<%
String[] aryMenu={"ユーザ（1+3）用","ユーザ（1+2）用","ユーザ（1+2+3）用"};
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
