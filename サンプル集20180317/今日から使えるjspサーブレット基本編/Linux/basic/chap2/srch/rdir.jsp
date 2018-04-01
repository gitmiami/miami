<%@ page contentType="text/html;charset=EUC-JP" import="java.net.*" %>
<%@ include file="/bin/encode.jsp" %>
<%
String strUrl="";
String strKey=URLEncoder.encode(strEncode(request.getParameter("keywd")));
switch(request.getParameter("eng").charAt(0)){
	case 'Y' :
		strUrl="http://search.yahoo.co.jp/bin/search?p=";        break;
	case 'G' :
		strUrl="http://www.google.com/search?q=";                break;
	case 'I' :
		strUrl="http://www.infoseek.co.jp/Titles?qt=";           break;
	case 'L' :
		strUrl="http://www.lycos.co.jp/cgi-bin/pursuit?query=";  break;
	case 'O' :
		strUrl="http://www.goo.ne.jp/default.asp?MT=";           break;
}
response.sendRedirect(strUrl + strKey);
%>
