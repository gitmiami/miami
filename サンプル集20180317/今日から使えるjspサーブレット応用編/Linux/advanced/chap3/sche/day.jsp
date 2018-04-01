<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<jsp:useBean id="objSche" class="sche.sche_bean" scope="page" />
<%
ResultSet rs=objSche.getSchedule((String)request.getAttribute("id"),(String)request.getAttribute("dat"));
%>
<html>
<head>
<title><%=request.getAttribute("dat")%>��ͽ��
	��<%=EncodeUtil.htmlEncode((String)request.getAttribute("nam"))%>��</title>
<yam:ErrorDisplay display="DIALOG" />
</head>
<body>
<h1>
<img src="/advanced/chap3/sche/sche.gif" width="25" height="25" />
	<%=request.getAttribute("dat")%>��ͽ��
<img src="/advanced/chap3/sche/sche.gif" width="25" height="25" />
</h1>
<table border="1">
<tr>
	<th>���ϻ���</th><th>��λ����</th><th>ͽ��</th>
	<th>ͽ���ʬ</th><th>���</th><th>���</th>
</tr>
<% while(rs.next()){ %>
	<tr>
		<td><%=EncodeUtil.formatDate("HH��mmʬ",rs.getTime("bTim"))%></td>
		<td><%=EncodeUtil.formatDate("HH��mmʬ",rs.getTime("eTim"))%></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("pNam"))%><br /></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("nam"))%></td>
		<td><%=EncodeUtil.htmlEncode(rs.getString("memo"))%><br /></td>
		<td>
			<a href="/advanced/servlet/sche.sche_del?dat=<%=request.getAttribute("dat")%>&pid=<%=rs.getString("pid")%>">
			<img src="/advanced/chap3/sche/eraser.gif" border="0"
				width="15" height="15" alt="���" /></a>
		</td>
	</tr>
<% } %>
</table>
<div align="right">
��<a href="/advanced/servlet/sche.sche_index">�������������</a>��
</div>
<hr />
<h2>ͽ����ɲ�</h2>
<yam:Form
	processFile="/servlet/sche.sche_up" originalFile="/servlet/sche.sche_day"
	queryString="<%="dat=" + (String)request.getAttribute("dat")%>">
<table border="0">
<tr>
	<th align="right">ͽ�ꡧ</th>
	<td>
		<yam:RichInput name="pNam" type="text" size="50" maxLength="50"
			imeMode="active" lengthCheck="50" error="ͽ��" />
	</td>
</tr><tr>
	<th align="right">���ϻ��֡�</th>
	<td>
		<yam:RichInput name="bTim" type="select" dataSource="tim"
			dataSourceValue="tim" requiredCheck="true"
			compareCheck="eTim" error="���ϻ���,��λ����" />
	</td>
</tr><tr>
	<th align="right">��λ���֡�</th>
	<td>
		<yam:RichInput name="eTim" type="select" dataSource="tim"
			dataSourceValue="tim" requiredCheck="true" />
	</td>
</tr><tr>
	<th align="right">ͽ���ʬ��</th>
	<td>
		<yam:RichInput name="cate" type="select"
			dataSource="category_id" dataSourceValue="category_nam" />
	</td>
</tr><tr>
	<th align="right">��⡧</th>
	<td>
		<yam:RichInput name="memo" type="text" size="100" maxLength="255"
			imeMode="active" lengthCheck="255" error="���" />
	</td>
</tr><tr>
	<td colspan="2" align="center">
		<input type="submit" name="sbm" value="�������塼����Ͽ" />
		<input type="submit" name="src" value="¾�οͤ�ͽ��򸡺�" />
		<input type="reset" value="����á�" />
	</td>
</tr>
</table>
</yam:Form>
</body>
</html>
