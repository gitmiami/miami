<%@ page contentType="text/html;charset=EUC-JP" import="java.util.*" %>
<html>
<head>
<title>¹­¹ğ¤ÎÉ½¼¨</title>
</head>
<body>
<%
String[][] aryVal={
	{"asp.gif","http://member.nifty.ne.jp/Y-Yamada/asp/"},
	{"web.gif","http://member.nifty.ne.jp/Y-Yamada/webware/"},
	{"xml.gif","http://member.nifty.ne.jp/Y-Yamada/xml/"}
};
Random objRnd=new Random();
objRnd.setSeed(System.currentTimeMillis());
int intNum=objRnd.nextInt(3);
out.println("<a href='" + aryVal[intNum][1] + "'>");
out.println("<img src='" + aryVal[intNum][0] + "' border='0' /></a>");
%>
</body>
</html>
