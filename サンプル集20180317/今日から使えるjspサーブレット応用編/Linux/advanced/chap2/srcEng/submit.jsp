<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.io.*" %>
<jsp:useBean id="objSrc" class="srcEng.src_bean" scope="page" />
<%
if(request.getAttribute("sbm")==null){
	String strNam=objSrc.getCategoryName((String)request.getAttribute("cate"));
%>
	<html>
	<head>
	<title>������������Ͽ</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.title.value,"������̾");
		strErr+=lengthCheck(document.fm.title.value,50,"������̾");
		strErr+=requiredCheck(document.fm.url.value,"URL");
		strErr+=lengthCheck(document.fm.url.value,255,"URL");
		strErr+=regExCheck(document.fm.url.value,"(http://|https://|ftp://){1}[A-Za-z0-9\.\-/_]+","URL");
		strErr+=requiredCheck(document.fm.descript.value,"�Ҳ�ʸ");
		strErr+=lengthCheck(document.fm.descript.value,255,"�Ҳ�ʸ");
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
	<jsp:include page="header.jsp" flush="true" />
	<form method="POST" action="submit.jsp" name="fm" onsubmit="return chk()">
	<table border="0">
	<tr>
		<th nowrap>������̾��</th>
		<td><input type="text" name="title" size="30" maxlength="50"
			style="ime-mode:active;" /></td>
	</tr><tr>
		<th nowrap>URL��</th>
		<td><input type="text" name="url" size="60" maxlength="255" value="http://"
			style="ime-mode:disabled;" /></td>
	</tr><tr>
		<th nowrap>���ƥ��ꡧ</th>
		<td>
			<%=EncodeUtil.htmlEncode(strNam)%>
			<input type="hidden" name="category"
				value="<%=request.getAttribute("cate")%>" />
		</td>
	</tr><tr>
		<th nowrap>�Ҳ�ʸ��</th>
		<td><input type="text" name="descript" size="80" maxlength="255"
			style="ime-mode:active;" /></td>
	</tr><tr>
		<td colspan="2" align="center">
			<input type="submit" name="sbm" value="��Ͽ" />
			<input type="reset" value="���" />
		</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
} else {
	boolean flag=objSrc.setSiteInfo((String)request.getAttribute("title"),(String)request.getAttribute("url"),(String)request.getAttribute("category"),(String)request.getAttribute("descript"));
	if(flag){
		response.sendRedirect("index.jsp");
	}else{
		out.println("<font color='red'>�������Υ����Ȥ���Ͽ�ѤߤǤ�����</font>");
	}
}
%>
