<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objCht" class="chat.cht_bean" scope="page" />
<html>
<head>
<title>����åȥ����ƥ�</title>
<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
<script language="JavaScript">
<!--
function chg(){
	namC.style.color=document.fm1.namI.value;
	timC.style.color=document.fm1.timI.value;
	comC.style.color=document.fm1.comI.value;
}
function chk_sbm(){
	strErr="";
	strErr+=requiredCheck(document.fm1.nam.value,"�롼��̾");
	strErr+=lengthCheck(document.fm1.nam.value,25,"�롼��̾");
	strErr+=requiredCheck(document.fm1.passwd.value,"�ѥ����");
	strErr+=lengthCheck(document.fm1.passwd.value,10,"�ѥ����");
	strErr+=HanCheck(document.fm1.passwd.value,"�ѥ����");
	strErr+=requiredCheck(document.fm1.namI.value,"̾��ʸ����");
	strErr+=regExCheck(document.fm1.namI.value,"^#[a-fA-F0-9]{6}$","̾��ʸ����");
	strErr+=requiredCheck(document.fm1.timI.value,"����ʸ����");
	strErr+=regExCheck(document.fm1.timI.value,"^#[a-fA-F0-9]{6}$","����ʸ����");
	strErr+=requiredCheck(document.fm1.namI.value,"��ʸʸ����");
	strErr+=regExCheck(document.fm1.comI.value,"^#[a-fA-F0-9]{6}$","��ʸʸ����");
	if(strErr==""){
		return true;
	}else{
		window.alert(strErr);
		return false;
	}
}
function chk_updel(){
	strErr="";
	strErr+=requiredCheck(document.fm2.passwd.value,"�ѥ����");
	strErr+=lengthCheck(document.fm2.passwd.value,10,"�ѥ����");
	strErr+=HanCheck(document.fm2.passwd.value,"�ѥ����");
	if(strErr==""){
		return true;
	}else{
		window.alert(strErr);
		return false;
	}
}
//-->
</script>
</head>
<body>
<h1>
<img src="icon1.gif" height="25" width="25" />
����åȥ����ƥ�ʴ������ѡ�
<img src="icon5.gif" height="25" width="25" />
</h1>
<hr />
<form method="POST" action="/advanced/servlet/chat.cht_create_del"
	name="fm1" onsubmit="return chk_sbm()">
<table hspace="15">
<caption align="left" valign="top"><h2>�����롼����Ͽ</h2></caption>
<tr>
	<td align="right">�롼��̾��</td>
	<td><input type="text" name="nam" size="25" maxlength="25"
				style="ime-mode:active;" /></td>
</tr>
<tr>
	<td align="right">�ѥ���ɡ�</td>
	<td><input type="password" name="passwd" size="15" maxlength="20"
				style="ime-mode:disabled;" /></td>
</tr>
<tr>
	<td rowspan=2 valign="top" align="right">ʸ������</td></tr>
	<td>̾����
			<input type="text" name="namI" size="9" maxlength="7" value="#191970"
				style="ime-mode:disabled;" onchange="return chg()" /><br />
			���֡�
			<input type="text" name="timI" size="9" maxlength="7" value="#DB7093"
				style="ime-mode:disabled;" onchange="return chg()" /><br />
			��ʸ��
			<input type="text" name="comI" size="9" maxlength="7" value="#556B2F"
				style="ime-mode:disabled;" onchange="return chg()" /><br />
			</td>
</tr>
<tr><td align="center">
	<input type="submit" name="ins" value="�롼����Ͽ">
</td></tr>
</table>
<dl>
<dt>��ʸ����ɽ�����
<dt><span id="namC"
			style="color:#191970;font-size:13pt;font-weight:bold;">���ܹ���</span>
		<span id="timC" style="color:#DB7093;font-size:9pt;">
			(<%="2002ǯ12��4�� 12:35:12" %>)</span></dt>
<dd id="comC" style="color:#556B2F;font-size:11pt;font-weight:demi-bold;">
		��������С���������С�������������������...��T T��</dd>
</dl>
</form>
<hr width="60%" />
<form method="POST" action="/advanced/servlet/chat.cht_create_del"
	name="fm2" onsubmit="return chk_updel()">
<table border="0">
<caption align="left" valign="top"><h2>��¸�롼����</h2></caption>
<tr>
	<td align="right">�롼��̾��</td>
		<td><select name="nam">
			<%
			ResultSet rs=objCht.getRoomInfo();
			while(rs.next()){
				out.print("<option value='" + rs.getString("id") + "'>");
				out.print(EncodeUtil.htmlEncode(rs.getString("nam")) + "</option>");
			}
			rs.close();
			%>
		</select></td>
</tr>
<tr>
	<td align="right">�ѥ���ɡ�</td>
	<td><input type="password" name="passwd" size="15" maxlength="10"
		style="ime-mode:disabled;" /></td>
</tr>
<tr><td><input type="submit" name="del" value="�롼����" /></td></tr>
</table>
</form>
<% if(request.getParameter("flag")!=null && !(request.getParameter("flag").equals(""))) { %>
	<script language="JavaScript">
	window.alert("����ѤΥѥ���ɤ��ְ�äƤ��ޤ�");
	</script>
<% } %>
</body>
</html>
