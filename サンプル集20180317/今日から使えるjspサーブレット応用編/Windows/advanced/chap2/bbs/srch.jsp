<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<html>
<head>
<title>��������</title>
</head>
<h1>
<img src="bbs.gif" width="30" height="30" />
Q&A�f����
<img src="bbs.gif" width="30" height="30" />
</h1>
<hr />
<h2>�L�[���[�h�u<%=request.getAttribute("keywd")%>�v�ɂ�錟������</h2>
<%
ResultSet rs=objBbs.search((String)request.getAttribute("keywd"));
while(rs.next()){
	objBbs.getArticle(rs.getString("id"));
%>
	<h3>
	<%=objBbs.getId() + "�F" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
	</h3>
	<table border="1" width="500" cellpadding="5">
	<tr>
		<th align="right" width="80" height="15">���e��</th>
		<td><%=EncodeUtil.htmlEncode(objBbs.getNam())%></td>
	</tr>
	<tr>
		<th align="right" width="80" height="15">���e����</th>
		<td><%=objBbs.getSdat()%></td>
	</tr>
	<tr>
		<td colspan="2" height="300" valign="top"><%=objBbs.getBody(false)%></td>
	</tr>
	</table>
	<div align="center">
	<%
	if(objBbs.getParent()!=0){
		out.println("[<a href='disp.jsp?id=" + objBbs.getParent() + "'>");
		out.println("�e�L���ֈړ�</a>]");
	}
	%>
	</div>
	<br />
	<hr />
<% } %>
<body>
</html>
