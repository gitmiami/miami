<%@ page contentType="text/html; charset=Shift_JIS" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
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
	<yam:ErrorDisplay display="DIALOG" />
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	���Y�Ǘ��V�X�e���i���[�U�Ǘ��j
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		�m<a href="/advanced/chap3/mng/menu.jsp">���j���[�ɖ߂�</a>�n</div>
	<hr />
	<yam:Form processFile="/servlet/mng.mng_usr_up"
		originalFile="/servlet/mng.mng_usr">
	<input type="submit" value="�o�^�E�X�V" />
	<input type="reset" value="���" />
	<table border="0">
	<tr bgcolor="#00ccff">
		<th>�����敪</th><th>���[�UID</th><th>�p�X���[�h</th><th>���[�U��</th>
		<th>�������喼</th><th>�Ǘ���</th><th>����Ǘ�</th><th>���[�U</th>
	</tr>
	<tr bgcolor="#ffffcc">
		<td>
			<yam:RichInput name="mid0" type="select"
				dataSource="mid_new" dataSourceValue="mid_newV" />
		</td><td>
			<yam:RichInput name="uid0" type="text" size="15" maxLength="10"
				imeMode="disabled" lengthCheck="10" zenHanCheck="Han"
				duplicateCheck="mng_usr,uid" error="���[�UIDNo.0" />
		</td><td>
			<yam:RichInput name="passwd0" type="password" size="20" maxLength="20"
				imeMode="disabled" lengthCheck="20" zenHanCheck="Han"
				error="�p�X���[�hNo.0" />
		</td><td>
			<yam:RichInput name="unam0" type="text" size="25" maxLength="25"
				imeMode="active" lengthCheck="25" />
		</td><td>
			<yam:RichInput name="depart0" type="select"
				dataSource="depart" dataSourceValue="depart" />
		</td><td align="center">
			<yam:RichInput name="admin0" type="check"
				dataSource="admin" dataSourceValue="blank" />
		</td><td align="center">
			<yam:RichInput name="super0" type="check"
				dataSource="super" dataSourceValue="blank" />
		</td><td align="center">
			<yam:RichInput name="user0" type="check"
				dataSource="user" dataSourceValue="blank" />
		</td>
	</tr>
	<%
	int cnt=Integer.parseInt((String)(request.getAttribute("cnt")));
	for(int i=1;i<cnt;i++){
		if(i % 2 ==1){bgcol="#ffffcc";}else{bgcol="#eeeeaa";}
	%>
		<tr bgcolor="<%=bgcol%>">
			<td>
				<yam:RichInput name="<%="mid" + i%>" type="select"
					dataSource="mid_up" dataSourceValue="mid_upV" />
			</td><td>
				<%=request.getAttribute("uid" + i)%>
				<input type="hidden" name="uid<%=i%>"
					value="<%=request.getAttribute("uid" + i)%>" />
			</td><td>
				<yam:RichInput name="<%="passwd" + i%>" type="password"
					size="20" maxLength="20" imeMode="disabled"
					lengthCheck="20" zenHanCheck="Han" error="<%="�p�X���[�hNo." + i%>"/>
			</td><td>
				<yam:RichInput name="<%="unam" + i%>" type="text"
					size="25" maxLength="25" imeMode="active"
					lengthCheck="25" error="<%="���[�U��No." + i%>" />
			</td><td>
				<yam:RichInput name="<%="depart" + i%>" type="select"
					dataSource="depart" dataSourceValue="depart" />
			</td><td align="center">
				<yam:RichInput name="<%="admin" + i%>" type="check"
					dataSource="admin" dataSourceValue="blank" />
			</td><td align="center">
				<yam:RichInput name="<%="super" + i%>" type="check"
					dataSource="super" dataSourceValue="blank" />
			</td><td align="center">
				<yam:RichInput name="<%="user" + i%>" type="check"
					dataSource="user" dataSourceValue="blank" />
			</td>
		</tr>
	<% } %>
	</table>
	<input type="hidden" name="cnt" value="<%=cnt%>" />
	</yam:Form>
	</body>
	</html>
<%
}
%>
