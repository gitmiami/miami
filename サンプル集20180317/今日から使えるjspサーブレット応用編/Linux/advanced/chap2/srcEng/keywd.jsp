<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objSrc" class="srcEng.src_bean" scope="request" />
<html>
<head>
<title>キーワード検索</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true" />
<h2>
	<img src="/advanced/chap2/srcEng/img/ame.gif" width="20" height="20" />&nbsp;
	検索キーワード：<%=request.getAttribute("strKey")%>
</h2>
<dl>
<%
ResultSet rs=(ResultSet)request.getAttribute("rs");
while(rs.next()){
%>
	<dt><a href="/advanced/servlet/srcEng.src_cnt?url=<%=rs.getString("url")%>">
		<%=EncodeUtil.htmlEncode(rs.getString("title"))%></a></dt>
	<dd><%=EncodeUtil.htmlEncode(rs.getString("descript"))%></dd>
<%
}
%>
</dl>
<hr />
</body>
</html>
