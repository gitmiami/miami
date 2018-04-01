<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String  uid   =(String)session.getAttribute("uid");
String  unam  =(String)session.getAttribute("unam");
String  depart=(String)session.getAttribute("depart");
String perms  =(String)session.getAttribute("perms");
String  flag  =(String)session.getAttribute("flag");
if(flag==null){
	response.sendRedirect("/advanced/chap3/mng/index.jsp");
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
	�񻺴��������ƥ�ʿ�������Ͽ��
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		��<a href="/advanced/chap3/mng/menu.jsp">��˥塼�����</a>��</div>
	<hr />
	<yam:Form
		processFile="/servlet/mng.mng_new_up" originalFile="/servlet/mng.mng_new">
	<table border="0">
		<tr>
			<th align="right">���ֹ桧</th>
			<td>
			<yam:RichInput name="id" type="text" size="12" maxLength="10"
				imeMode="disabled" requiredCheck="true" lengthCheck="10" 
				regexCheck="[0-9]{3}-[0-9A-Z]{6}"
				duplicateCheck="mng_master,id" error="���ֹ�" />
			</td>
		</tr><tr>
			<th align="right">��̾��</th>
			<td>
			<yam:RichInput name="nam" type="text" size="20" maxLength="25"
				imeMode="active" lengthCheck="25" error="��̾" />
			</td>
		</tr><tr>
			<th align="right">���֡�</th>
			<td>
			<yam:RichInput name="fnum" type="text" size="15" maxLength="50"
				imeMode="disabled" lengthCheck="50" error="����" />
			</td>
		</tr><tr>
			<th align="right">�ݴ���Ǥ���硧</th>
			<td>
			<yam:RichInput name="depart" type="select"
				dataSource="dpt" dataSourceValue="dpt" />
			</td>
		</tr><tr>
			<th align="right">���־�ꡧ</th>
			<td>
			<yam:RichInput name="plac" type="text" size="35" maxLength="15"
				imeMode="active"
				requiredCheck="true" lengthCheck="15" error="���־��" />
			</td>
		</tr><tr>
			<th align="right">����ǯ������</th>
			<td>
			<yam:RichInput name="dat" type="text" size="15" maxLength="10"
				imeMode="disabled" requiredCheck="true" dateTypeCheck="true"
				error="����ǯ����" />��YYYY-MM-DD��</td>
		</tr><tr>
			<th align="right">���͡�</th>
			<td>
			<yam:RichInput name="mem" type="text" size="50" maxLength="255"
				imeMode="active" lengthCheck="255" />
			</td>
		</tr><tr>
			<td colspan="2" align="center">
				<input type="submit" name="sbm" value="������Ͽ" />
				<input type="reset" value="���" />
			</td>
		</tr>
	</table>
	</yam:Form>
	</body>
	</html>
<%
}
%>
