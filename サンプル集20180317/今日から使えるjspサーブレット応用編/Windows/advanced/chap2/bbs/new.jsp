<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<% if(request.getAttribute("sbm")==null){ %>
	<html>
	<head>
	<title>掲示板新規作成</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.title.value,"件名");
		strErr+=lengthCheck(document.fm.title.value,25,"件名");
		strErr+=requiredCheck(document.fm.nam.value,"投稿者名");
		strErr+=lengthCheck(document.fm.nam.value,10,"投稿者名");
		strErr+=requiredCheck(document.fm.article.value,"本文");
		strErr+=requiredCheck(document.fm.passwd.value,"削除用パスワード");
		strErr+=lengthCheck(document.fm.passwd.value,15,"削除用パスワード");
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
	新規記事作成
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<form method="POST" action="new.jsp" name="fm" onsubmit="return chk()">
		<table border="1" width="500" cellpadding="5">
		<tr>
			<th align="right" nowrap>件名</th>
			<td><input type="text" name="title" size="70" maxlength="25"
						style="ime-mode:active;" /></td>
		</tr><tr>
			<th align="right">投稿者</th>
			<td><input type="text" name="nam" size="70" maxlength="10"
						style="ime-mode:active;" /></td>
		</tr><tr>
			<td colspan="2">
				<textarea name="article" cols="70" rows="15"></textarea>
			</td>
		</tr><tr>
			<th align="right" nowrap>削除用パスワード</th>
			<td><input type="password" name="passwd" size="15" maxlength="15"
						style="ime-mode:disabled;" /></td>
		</tr><tr>
		</table>
		<input type="submit" name="sbm" value="投稿" />
		<input type="reset" value="取消" />
	</form>
	</body>
	</html>
<%
}else{
	objBbs.setArticle((String)request.getAttribute("title"),(String)request.getAttribute("nam"),(String)request.getAttribute("article"),(String)request.getAttribute("passwd"),"0","0");
	response.sendRedirect("/advanced/servlet/bbs.bbs_index");
}
%>
