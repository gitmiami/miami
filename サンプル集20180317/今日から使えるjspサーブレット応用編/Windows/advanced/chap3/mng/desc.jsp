<%@ page contentType="text/html; charset=Shift_JIS" import="beanYama.*" %>
<jsp:useBean id="objMng" class="mng.mng_bean" scope="request" />
<%
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
	���Y�t�����
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<hr />
	<% if(objMng.getId().equals("")){ %>
		�Y��������͂���܂���
	<% }else{ %>
	<table border="0">
	<tr>
		<th align="right" bgcolor="#00ccff">���Y�ԍ�</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getId())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">IP�A�h���X</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getIp())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">�v���_�N�gNo.</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getPnum())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">���ڃ�����</th>
		<td bgcolor="#ffffcc"><%=objMng.getMemory()%>MB</td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">����HDD</th>
		<td bgcolor="#ffffcc"><%=objMng.getHdd()%>GB</td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">���l</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getMem())%></td>
	</table>
	<% } %>
	<form>
		<input type="button" value="����" onclick="self.close();" />
	</form>
	</body>
	</html>
<%
}
%>
