<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.io.*,java.util.*,java.text.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<%
if(request.getAttribute("res")==null){
	objBbs.getArticle((String)request.getAttribute("id"));
%>
	<html>
	<head>
	<title>������
	<%=objBbs.getId() + "��" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
	�פ��ֿ�</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.title.value,"��̾");
		strErr+=lengthCheck(document.fm.title.value,25,"��̾");
		strErr+=requiredCheck(document.fm.nam.value,"��Ƽ�̾");
		strErr+=lengthCheck(document.fm.nam.value,10,"��Ƽ�̾");
		strErr+=requiredCheck(document.fm.article.value,"��ʸ");
		strErr+=requiredCheck(document.fm.passwd.value,"����ѥѥ����");
		strErr+=lengthCheck(document.fm.passwd.value,15,"����ѥѥ����");
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
	������
	<%=objBbs.getId() + "��" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
	�פ��ֿ�
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<form method="POST" action="res.jsp" name="fm" onsubmit="return chk()">
	<table border="1" width="500" cellpadding="5">
	<tr>
		<th align="right" nowrap>��̾</th>
		<td><input type="text" name="title" size="70" maxlength="25"
			value="<%="Re:��" + EncodeUtil.htmlEncode(objBbs.getTitle())%>"
			style="ime-mode:active;" /></td>
	</tr>
	<tr>
		<th align="right" nowrap>��Ƽ�</th>
		<td><input type="text" name="nam" size="70" maxlength="10"
			style="ime-mode:active;" /></td>
	</tr>
	<tr>
		<th align="right" nowrap>�������</th>
		<td><%=EncodeUtil.formatDate("yyyyǯMM��dd�� HH��mmʬss��")%></td>
	</tr>
	<tr>
		<td colspan="2" valign="top">
			<textarea cols="70" rows="15" name="article"><%=objBbs.getBody(true)%></textarea>
		</td>
	</tr>
	<tr>
		<th align="right" nowrap>����ѥѥ����</th>
		<td><input type="password" name="passwd" size="15" maxlength="15"
			style="ime-mode:disabled;" /></td>
	</tr>
	</table>
	<input type="hidden" name="parent" value="<%=objBbs.getId()%>" />
	<input type="hidden" name="level" value="<%=objBbs.getLevel()+1%>" />
	<input type="submit" name="res" value="���" />
	<input type="reset" value="���" />
	</form>
</body>
</html>
<%
}else{
	objBbs.setArticle((String)request.getAttribute("title"),(String)request.getAttribute("nam"),(String)request.getAttribute("article"),(String)request.getAttribute("passwd"),(String)request.getAttribute("parent"),(String)request.getAttribute("level"));
	response.sendRedirect("/advanced/servlet/bbs.bbs_index");
}
%>
