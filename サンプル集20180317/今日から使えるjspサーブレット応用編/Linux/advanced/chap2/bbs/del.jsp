<%@ page contentType="text/html;charset=EUC-JP" import="beanYama.*" %>
<jsp:useBean id="objBbs" class="bbs.bbs_bean" scope="page" />
<%
if(request.getAttribute("del")==null){
	objBbs.getArticle((String)request.getAttribute("id"));
%>
	<html>
	<head>
	<title>������
	<%=objBbs.getId() + "��" + EncodeUtil.htmlEncode(objBbs.getTitle())%>
	�פκ��</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.passwd.value,"����ѥ����");
		strErr+=lengthCheck(document.fm.passwd.value,15,"����ѥ����");
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
	�פκ��
	<img src="bbs.gif" width="30" height="30" />
	</h1>
	<table border="1" width="500" cellpadding="5">
	<tr>
	<th align="right" width="80" height="15">��Ƽ�</th>
	<td><%=EncodeUtil.htmlEncode(objBbs.getNam())%></td>
	</tr>
	<tr>
		<th align="right" width="80" height="15">�������</th>
		<td><%=objBbs.getSdat()%></td>
	</tr>
	<tr>
		<td colspan="2" height="300" valign="top">
			<%=objBbs.getBody(false)%>
		</td>
	</tr>
	</table>
	<form method="POST" action="del.jsp?id=<%=objBbs.getId()%>"
		name="fm" onsubmit="return chk()">
		����ѥѥ���ɡ�
		<input type="password" name="passwd" size="10" maxlength="15" />
		<input type="submit" name="del" value="���" />
	</form>
	</body>
	</html>
<%
}else{
	boolean flag=objBbs.removeArticle((String)request.getAttribute("id"),(String)request.getAttribute("passwd"));
	if(flag){
		response.sendRedirect("/advanced/servlet/bbs.bbs_index");
	}else{
		out.println("<font color='Red'>�����κ���˼��Ԥ��ޤ���</font>");
	}
}
%>
