<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%
String  uid   =(String)session.getAttribute("uid");
String  unam  =(String)session.getAttribute("unam");
String  depart=(String)session.getAttribute("depart");
String perms  =(String)session.getAttribute("perms");
String  flag  =(String)session.getAttribute("flag");
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
	<img src="cd.gif" width="25" height="25" />
	�񻺴��������ƥ�ʻ񻺾��󸡺���
	<img src="cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		��<a href="/advanced/chap3/mng/menu.jsp">��˥塼�����</a>��</div>
	<hr />
	<form method="POST" action="/advanced/servlet/mng.mng_result">
	<table border="0">
	<tr>
		<th>���ֹ桧</th>
		<td><input type="text" name="id" size="15" maxlength="10"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>���֡�</th>
		<td><input type="text" name="fnum" size="20" maxlength="50"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>�ݴ���Ǥ���硧</th>
		<td>
			<select name="depart">
				<option value="" selected>����ʤ�</option>
				<option value="��̳">��̳��</option>
				<option value="���">�����</option>
				<option value="����">������</option>
				<option value="��¤">��¤��</option>
				<option value="�����ƥ�">�����ƥ���</option>
			</select>
		</td>
	</tr><tr>
		<td colspan="2" align="center">
			<input type="submit" name="sbm" value="���󸡺�" />
			<input type="reset" value="���" />
		</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
}
%>
