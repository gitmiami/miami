<%@ page contentType="text/html;charset=EUC-JP"
         import="javax.mail.internet.*" %>
<%
boolean flag=false;
String strAth=request.getHeader("authorization");
if(strAth !=null && strAth.substring(0,6).equals("Basic ")){
	String strAth2=MimeUtility.decodeText("=?iso-8859-1?B?" + strAth.substring(6) + "?=");
	String uid   =strAth2.substring(0,strAth2.indexOf(":"));
	String passwd=strAth2.substring(strAth2.indexOf(":")+1);
	if(uid.equals("admin") && passwd.equals("admin")){flag=true;}
}
if(flag){
%>
	<html>
	<head>
	<title>�������ѥ��ƥʥ󥹲���</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=dateTypeCheck(document.fm.old.value,"����ϰ�");
		strErr+=rangeCheck(document.fm.num.value,999,1,"�����ֹ�");
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
	<img src="bbs.gif" width="30" height="30" />
	�������Ѳ���
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<hr />
	<form method="POST" action="/advanced/servlet/bbs.bbs_admin"
		name="fm" onsubmit="return chk()">
	<table border="1" width="600">
	<tr>
		<th>����</th>
		<th>����</th>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="�ǡ����١����κ�Ŭ��" /></th>
		<td>����Ѥߤε��������˺�����ޤ�</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="�Ť�����������" /></th>
		<td height="50"><input type="text" name="old"
				size="12" maxlength="10" style="ime-mode:disabled;" />
			��YYYY-MM-DD�ˤ�����ε������������ޤ�</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="���국���κ��" /></th>
		<td>No.<input type="text" name="num" size="3" maxlength="3"
			style="ime-mode:disabled;" />�ε�������Ū�˺�����ޤ�</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
}else{
	response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	response.setHeader("www-authenticate","basic realm=\"Threaded BBS\"");
	out.println("!!Access Is Denied!!");
}
%>
