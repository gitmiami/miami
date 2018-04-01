<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*,java.util.*" %>
<jsp:useBean id="objSrc" class="srcEng.src_bean" scope="page" />
<html>
<head>
<title>My Search</title>
</head>
<body>
<h1>
<img src="srch.gif" width="30" height="30" />
My Search
<img src="srch.gif" width="30" height="30" />
</h1>
[<a href="index.jsp">¥Û¡¼¥à</a>]¡Ã[<a href="bookmark.jsp">ÅÐÏ¿ÊÑ¹¹</a>]
<hr />
<%
String strVal=null;
Cookie[] aryCok=request.getCookies();
if(aryCok!=null){
	for(int i=0;i<aryCok.length;i++){
		if(aryCok[i].getName().equals("bookmark")){
			strVal=aryCok[i].getValue();
			break;
		}
	}
}
StringTokenizer objTkn=new StringTokenizer(strVal,"|");
while(objTkn.hasMoreTokens()){
	String strTmp=objTkn.nextToken();
	ResultSet rs=objSrc.getNewSite(strTmp,5);
%>
	<h2><img src="./img/<%=objSrc.getCategoryImage(strTmp)%>"
			width="18" height="20" />&nbsp;
			<%=EncodeUtil.htmlEncode(objSrc.getCategoryName(strTmp))%></h2>
	<dl>
	<% while(rs.next()) { %>
		<dt>
			<a href="<%=rs.getString("url")%>">
				<%=EncodeUtil.htmlEncode(rs.getString("title"))%></a>
		</dt>
		<dd><%=EncodeUtil.htmlEncode(rs.getString("descript"))%></dd>
	<% } %>
	</dl>
<% } %>
</body>
</html>
