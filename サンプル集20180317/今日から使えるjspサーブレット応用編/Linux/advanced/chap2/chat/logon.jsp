<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objCht" class="chat.cht_bean" scope="page" />
<html>
<head>
<title>����åȥ롼������</title>
</head>
<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
<script language="JavaScript">
<!--
function chk(){
	strErr="";
	strErr+=requiredCheck(document.fm.nam.value,"̾��");
	strErr+=lengthCheck(document.fm.nam.value,10,"̾��");
	strErr+=requiredRadioCheck(document.fm.face,"�饢������");
	strErr+=requiredCheck(document.fm.rTime.value,"��ե�å���ֳ�");
	strErr+=lengthCheck(document.fm.rTime.value,4,"��ե�å���ֳ�");
	strErr+=numberTypeCheck(document.fm.rTime.value,"��ե�å���ֳ�");
	if(strErr==""){
		return true;
	}else{
		window.alert(strErr);
		return false;
	}
}
//-->
</script>
<body>
<h1>
<img src="icon1.gif" height="25" width="25" />
����åȥ롼��
<img src="icon5.gif" height="25" width="25" />
</h1>
<hr />
��<a href="admin.jsp" target="_parent">����åȥ롼����Ͽ/���</a>��<br />
<form name="fm" method="POST"	action="/advanced/servlet/chat.cht_forum"
	target="down" onsubmit="return chk()">
<table bgcolor="#FFffCC">
<tr>
	<th align="right">�롼��̾��</th>
	<td><select name="frmNam">
		<%
		ResultSet rs=objCht.getRoomInfo();
		while(rs.next()){
			out.print("<option value='" + rs.getString("id") + "'>");
			out.print(EncodeUtil.htmlEncode(rs.getString("nam"))+ "</option>");
		}
		rs.close();
		%>
	</select></td>
</tr><tr>
	<th align="right">̾����</th>
	<td>
		<input type="text" name="nam" size="15" maxlength="10"
			value="guest" style="ime-mode:active;" />
	</td>
</tr><tr>
	<th align="right">�饢������</th>
	<td>
		<% for(int i=0;i<7;i++){ %>
			<input type="radio" name="face" value="<%=i%>" />
			<img src="icon<%=i%>.gif" width="25" height="25" />��
		<% } %>
	</td>
</tr><tr>
	<th align="right">��ե�å���ֳ֡�</th>
	<td>
		<input type="text" name="rTime" size="4" maxlength="5" value="30"
			style="ime-mode:disabled;" />��
	</td>
</tr><tr>
	<td></td>
	<td>
		<input type="submit" value="�롼������">
		<input type="reset" value="���">
	</td>
</tr>
</table>
<p><img src="tape.gif" width="500" height="30" alt="�饤��" /></p>
</form>
</body>
</html>
