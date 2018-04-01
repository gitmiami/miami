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
	<title>管理者用メンテナンス画面</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=dateTypeCheck(document.fm.old.value,"削除範囲");
		strErr+=rangeCheck(document.fm.num.value,999,1,"記事番号");
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
	管理者用画面
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<hr />
	<form method="POST" action="/advanced/servlet/bbs.bbs_admin"
		name="fm" onsubmit="return chk()">
	<table border="1" width="600">
	<tr>
		<th>処理</th>
		<th>概要</th>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="データベースの最適化" /></th>
		<td>削除済みの記事を完全に削除します</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="古い記事の整理" /></th>
		<td height="50"><input type="text" name="old"
				size="12" maxlength="10" style="ime-mode:disabled;" />
			（YYYY-MM-DD）より前の記事を一括削除します</td>
	</tr>
	<tr height="50">
		<th><input type="submit" name="sbm" value="特定記事の削除" /></th>
		<td>No.<input type="text" name="num" size="3" maxlength="3"
			style="ime-mode:disabled;" />の記事を強制的に削除します</td>
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
