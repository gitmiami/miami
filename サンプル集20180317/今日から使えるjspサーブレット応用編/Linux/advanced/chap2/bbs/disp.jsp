<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<% objBbs.getArticle((String)request.getAttribute("id")); %>
<html>
<head>
<title>
<%=objBbs.getId() + "：" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
</title>
</head>
<body>
<h1>
<img src="bbs.gif" width="30" height="30" />
<%=objBbs.getId() + "：" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
<img src="bbs.gif" width="30" height="30" />
</h1>
<table border="1" width="500" cellpadding="5">
<tr>
	<th align="right" width="80" height="15">投稿者</th>
	<td><%=EncodeUtil.htmlEncode(objBbs.getNam())%></td>
</tr>
<tr>
	<th align="right" width="80" height="15">投稿日時</th>
	<td><%=objBbs.getSdat()%></td>
</tr>
<tr>
<td colspan="2" height="300" valign="top"><%=objBbs.getBody(false)%></td>
</tr>
</table>
<form>
	<input type="button" value="記事に返信"
		onclick="location.href='res.jsp?id=<%=objBbs.getId()%>'" />
	<input type="button" value="記事を削除"
		onclick="location.href='del.jsp?id=<%=objBbs.getId()%>'" />
</form>
</body>
</html>
