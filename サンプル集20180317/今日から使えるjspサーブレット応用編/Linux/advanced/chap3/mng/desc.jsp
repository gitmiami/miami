<%@ page contentType="text/html; charset=EUC-JP" import="beanYama.*" %>
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
	<title>�񻺴��������ƥ�
		��<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>��</title>
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	���տ����
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<hr />
	<% if(objMng.getId().equals("")){ %>
		�����������Ϥ���ޤ���
	<% }else{ %>
	<table border="0">
	<tr>
		<th align="right" bgcolor="#00ccff">���ֹ�</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getId())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">IP���ɥ쥹</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getIp())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">�ץ������No.</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getPnum())%></td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">��ܥ���</th>
		<td bgcolor="#ffffcc"><%=objMng.getMemory()%>MB</td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">���HDD</th>
		<td bgcolor="#ffffcc"><%=objMng.getHdd()%>GB</td>
	</tr><tr>
		<th align="right" bgcolor="#00ccff">����</th>
		<td bgcolor="#ffffcc"><%=EncodeUtil.htmlEncode(objMng.getMem())%></td>
	</table>
	<% } %>
	<form>
		<input type="button" value="�Ĥ���" onclick="self.close();" />
	</form>
	</body>
	</html>
<%
}
%>
