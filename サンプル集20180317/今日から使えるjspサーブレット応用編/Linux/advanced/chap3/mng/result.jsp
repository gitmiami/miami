<%@ page contentType="text/html; charset=EUC-JP" import="beanYama.*" %>
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
	<title>�񻺴��������ƥ�
		��<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>��</title>
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	�񻺴��������ƥ�ʻ񻺾��󸡺���
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		��<a href="/advanced/chap3/mng/menu.jsp">��˥塼�����</a>��</div>
	<hr />
	<%=objMng.getResultCount() %>��Υǡ�������������ޤ�����
	<table border="0">
	<tr bgcolor="#00ccff">
		<th rowspan="2">���ֹ�</th><th>��̾</th><th>����</th>
		<th>����ǯ����</th><th rowspan="2">����</th>
	</tr><tr bgcolor="#00ccff">
		<th>����</th><th>���־��</th><th></th>
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
