<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<% if(request.getAttribute("sbm")==null){ %>
	<html>
	<head>
	<title>�f���V�K�쐬</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.title.value,"����");
		strErr+=lengthCheck(document.fm.title.value,25,"����");
		strErr+=requiredCheck(document.fm.nam.value,"���e�Җ�");
		strErr+=lengthCheck(document.fm.nam.value,10,"���e�Җ�");
		strErr+=requiredCheck(document.fm.article.value,"�{��");
		strErr+=requiredCheck(document.fm.passwd.value,"�폜�p�p�X���[�h");
		strErr+=lengthCheck(document.fm.passwd.value,15,"�폜�p�p�X���[�h");
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
	�V�K�L���쐬
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<form method="POST" action="new.jsp" name="fm" onsubmit="return chk()">
		<table border="1" width="500" cellpadding="5">
		<tr>
			<th align="right" nowrap>����</th>
			<td><input type="text" name="title" size="70" maxlength="25"
						style="ime-mode:active;" /></td>
		</tr><tr>
			<th align="right">���e��</th>
			<td><input type="text" name="nam" size="70" maxlength="10"
						style="ime-mode:active;" /></td>
		</tr><tr>
			<td colspan="2">
				<textarea name="article" cols="70" rows="15"></textarea>
			</td>
		</tr><tr>
			<th align="right" nowrap>�폜�p�p�X���[�h</th>
			<td><input type="password" name="passwd" size="15" maxlength="15"
						style="ime-mode:disabled;" /></td>
		</tr><tr>
		</table>
		<input type="submit" name="sbm" value="���e" />
		<input type="reset" value="���" />
	</form>
	</body>
	</html>
<%
}else{
	objBbs.setArticle((String)request.getAttribute("title"),(String)request.getAttribute("nam"),(String)request.getAttribute("article"),(String)request.getAttribute("passwd"),"0","0");
	response.sendRedirect("/advanced/servlet/bbs.bbs_index");
}
%>
