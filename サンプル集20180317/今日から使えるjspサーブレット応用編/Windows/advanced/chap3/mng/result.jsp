<%@ page contentType="text/html; charset=Shift_JIS" import="beanYama.*" %>
<jsp:useBean id="objMng" class="mng.mng_bean" scope="request" />
<%
String bgcol =null;
String uid   =(String)session.getAttribute("uid");
String unam  =(String)session.getAttribute("unam");
String depart=(String)session.getAttribute("depart");
String perms =(String)session.getAttribute("perms");
String flag  =(String)session.getAttribute("flag");
if(flag==null){
	response.sendRedirect("index.jsp");
}else{
%>
	<html>
	<head>
	<title>���Y�Ǘ��V�X�e��
		�m<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>�n</title>
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	���Y�Ǘ��V�X�e���i���Y��񌟍��j
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		�m<a href="/advanced/chap3/mng/menu.jsp">���j���[�ɖ߂�</a>�n</div>
	<hr />
	<%=objMng.getResultCount() %>���̃f�[�^����������܂����B
	<table border="0">
	<tr bgcolor="#00ccff">
		<th rowspan="2">���Y�ԍ�</th><th>�i��</th><th>����</th>
		<th>�擾�N����</th><th rowspan="2">���l</th>
	</tr><tr bgcolor="#00ccff">
		<th>�^��</th><th>�ݒu�ꏊ</th><th></th>
	</tr>
	<% for(int i=0;i<objMng.getResultCount();i++){
			if(i % 2 ==0){bgcol="#ffffcc";}else{bgcol="eeeeaa";}
		%>
		<tr bgcolor="<%=bgcol%>">
			<td rowspan="2">
				<a href="JavaScript:void(0)" onclick="window.open('/advanced/servlet/mng.mng_desc?id=<%=objMng.getId(i)%>','','width=250,height=250')">
				<%=objMng.getId(i)%></a></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getNam(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getDepart(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getDat(i))%></td>
			<td rowspan="2"><%=EncodeUtil.htmlEncode(objMng.getMem(i))%></td>
		</tr>
		<tr bgcolor="<%=bgcol%>">
			<td><%=EncodeUtil.htmlEncode(objMng.getFnum(i))%></td>
			<td><%=EncodeUtil.htmlEncode(objMng.getPlac(i))%></td>
			<td></td>
		</tr>
	<% } %>
	</table>
	</body>
	</html>
<%
}
%>
