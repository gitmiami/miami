<%@ page contentType="text/html; charset=EUC-JP" import="beanYama.*" %>
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
	<title>�񻺴��������ƥ�
		��<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>��</title>
	<yam:ErrorDisplay display="DIALOG" />
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	�񻺴��������ƥ�ʥ桼��������
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		��<a href="/advanced/chap3/mng/menu.jsp">��˥塼�����</a>��</div>
	<hr />
	<yam:Form processFile="/servlet/mng.mng_usr_up"
		originalFile="/servlet/mng.mng_usr">
	<input type="submit" value="��Ͽ������" />
	<input type="reset" value="���" />
	<table border="0">
	<tr bgcolor="#00ccff">
		<th>������ʬ</th><th>�桼��ID</th><th>�ѥ����</th><th>�桼��̾</th>
		<th>��°����̾</th><th>������</th><th>�������</th><th>�桼��</th>
	</tr>
	<tr bgcolor="#ffffcc">
		<td>
			<yam:RichInput name="mid0" type="select"
				dataSource="mid_new" dataSourceValue="mid_newV" />
		</td><td>
			<yam:RichInput name="uid0" type="text" size="15" maxLength="10"
				imeMode="disabled" lengthCheck="10" zenHanCheck="Han"
				duplicateCheck="mng_usr,uid" error="�桼��IDNo.0" />
		</td><td>
			<yam:RichInput name="passwd0" type="password" size="20" maxLength="20"
				imeMode="disabled" lengthCheck="20" zenHanCheck="Han"
				error="�ѥ����No.0" />
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
					lengthCheck="20" zenHanCheck="Han" error="<%="�ѥ����No." + i%>"/>
			</td><td>
				<yam:RichInput name="<%="unam" + i%>" type="text"
					size="25" maxLength="25" imeMode="active"
					lengthCheck="25" error="<%="�桼��̾No." + i%>" />
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
