<%@ page contentType="text/html;charset=Shift_JIS"
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
	<title>�Ǘ��җp�����e�i���X���</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=dateTypeCheck(document.fm.old.value,"�폜�͈�");
		strErr+=rangeCheck(document.fm.num.value,999,1,"�L���ԍ�");
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
	�Ǘ��җp���
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<hr />
	<form method="POST" action="/advanced/servlet/bbs.bbs_admin"
		name="fm" onsubmit="return chk()">
	<table border="1" width="600">
	<tr>
		<th>����</th>
		<th>�T�v</th>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="�f�[�^�x�[�X�̍œK��" /></th>
		<td>�폜�ς݂̋L�������S�ɍ폜���܂�</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="�Â��L���̐���" /></th>
		<td height="50"><input type="text" name="old"
				size="12" maxlength="10" style="ime-mode:disabled;" />
			�iYYYY-MM-DD�j���O�̋L�����ꊇ�폜���܂�</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="����L���̍폜" /></th>
		<td>No.<input type="text" name="num" size="3" maxlength="3"
			style="ime-mode:disabled;" />�̋L���������I�ɍ폜���܂�</td>
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
