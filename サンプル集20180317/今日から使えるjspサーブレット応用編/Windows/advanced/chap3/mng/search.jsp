<%@ page contentType="text/html;charset=Shift_JIS" import="beanYama.*" %>
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
	<title>���Y�Ǘ��V�X�e��
		�m<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>�n</title>
	</head>
	<body>
	<h1>
	<img src="cd.gif" width="25" height="25" />
	���Y�Ǘ��V�X�e���i���Y��񌟍��j
	<img src="cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		�m<a href="/advanced/chap3/mng/menu.jsp">���j���[�ɖ߂�</a>�n</div>
	<hr />
	<form method="POST" action="/advanced/servlet/mng.mng_result">
	<table border="0">
	<tr>
		<th>���Y�ԍ��F</th>
		<td><input type="text" name="id" size="15" maxlength="10"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>�^�ԁF</th>
		<td><input type="text" name="fnum" size="20" maxlength="50"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th>�ۊǐӔC����F</th>
		<td>
			<select name="depart">
				<option value="" selected>�w��Ȃ�</option>
				<option value="����">������</option>
				<option value="����">���ޕ�</option>
				<option value="�Z�p">�Z�p��</option>
				<option value="����">������</option>
				<option value="�V�X�e��">�V�X�e����</option>
			</select>
		</td>
	</tr><tr>
		<td colspan="2" align="center">
			<input type="submit" name="sbm" value="��񌟍�" />
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
