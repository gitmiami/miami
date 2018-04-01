<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*,java.util.*" %>
<jsp:useBean id="objSrc" class="srcEng.src_bean" scope="page" />
<% if(request.getAttribute("sbm")==null){ %>
	<html>
	<head>
	<title>表示カテゴリ選択</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredRadioCheck(document.fm.cid,"カテゴリ");
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
	<h3>デフォルトで表示したいカテゴリを選択してください</h3>
	<br />
	<form method="POST" action="bookmark.jsp" name="fm" onsubmit="return chk()">
	<table border="0" cellspacing="5">
	<% ResultSet rs=objSrc.getCategory("0");
		 while(rs.next()){ %>
		<tr>
		<th align="left">
			<img src="./img/<%=rs.getString("img")%>" width="18" height="20" />
			&nbsp;<%=EncodeUtil.htmlEncode(rs.getString("cname"))%>
		</th>
		<td>
			<input type="checkbox" name="cid" value="<%=rs.getString("cid")%>" />
		</td>
		</tr>
	<% } %>
	<tr>
	<td colspan="2">
		<input type="submit" name="sbm" value="登録" />
		<input type="reset" value="取消" />
	</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
}else{
	String strVal="";
	String strPrm=(String)request.getAttribute("cid");
	StringTokenizer objTkn=new StringTokenizer(strPrm,",");
	while(objTkn.hasMoreTokens()){
		strVal+=objTkn.nextToken() + "|";
	}
	Cookie objCok=new Cookie("bookmark",strVal.substring(0,strVal.length()-1));
	objCok.setMaxAge(60*60*24*180);
	objCok.setPath("/");
	response.addCookie(objCok);
	response.sendRedirect("disp.jsp");
}
%>
