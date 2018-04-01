<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*" %>
<jsp:useBean id="objSrc" class="srcEng.src_bean" scope="page" />
<html>
<head>
<title>カテゴリ検索</title>
<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
<script language="JavaScript">
<!--
function chk(){
	strErr="";
	strErr+=requiredCheck(document.fm.keywd.value,"キーワード");
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
<form method="POST" action="/advanced/servlet/srcEng.src_keywd"
	name="fm" onsubmit="return chk()">
<table border="0">
<tr bgcolor="#FFffDD">
	<td align="right">キーワード：</td>
	<td align="left">
		<input type="text" name="keywd" size="20"
			maxlength="100" style="ime-mode:active;" />
		<input type="submit" value="検索" />
	</td>
</tr>
<tr bgcolor="#FFffDD">
	<td colspan="2" align="right">
		<input type="radio" name="ordr" value="newer" checked />新しい順
		<input type="radio" name="ordr" value="more" />アクセスが多い順
	</td>
	</tr>
</table>
</form>
<%
if(request.getAttribute("cate")==null || request.getAttribute("cate").equals("")){
	int cnt=1;
	ResultSet rs=objSrc.getCategory("0");
	out.println("<table border='0'>");
	while(rs.next()){
		if(cnt % 2 == 1){out.println("<tr>");}
		out.println("<td valign='top' width='200'>");
		out.println("<dl>");
		out.println("<dt style='font-size:12pt;font-weight:bold;'>");
		out.println("<img src='./img/" + rs.getString("img") + "' width='22' height='25' />");
		out.println("&nbsp;<a href='index.jsp?cate=" + rs.getString("cid"));
		out.println("'>" + EncodeUtil.htmlEncode(rs.getString("cname")));
		out.println("</a></dt>");
		out.println("<dd style='font-size:10pt;'>");
		ResultSet rs2=objSrc.getCategory(rs.getString("cid"));
		while(rs2.next()){
			out.println("<a href='index.jsp?cate=" + rs2.getString("cid") + "'>");
			out.println(EncodeUtil.htmlEncode(rs2.getString("cname")) + "</a>,");
		}
		out.println("</dd>");
		out.println("</dl>");
		out.println("</td>");
		if(cnt % 2 == 0){out.println("</tr>");}
		cnt++;
	}
	out.println("</table>");
}else{
	boolean flag=false;
	String strCate=objSrc.getCategoryString((String)request.getAttribute("cate"));
	out.println("<br />");
	out.println("<h2>&nbsp;" + strCate + "</h2>");
	ResultSet rs0=objSrc.getCategory((String)request.getAttribute("cate"));
	while(rs0.next()){
		out.println("<h3>&nbsp;" + objSrc.getCategoryString(rs0.getString("cid")));
		out.println("</h3>");
	}
	ResultSet rs=objSrc.getSiteInfo((String)request.getAttribute("cate"));
	out.println("<dl>");
	while(rs.next()){
		out.print("<dt><a href='/advanced/servlet/srcEng.src_cnt?url=");
		out.print(rs.getString("url") + "'>");
		out.print(EncodeUtil.htmlEncode(rs.getString("title")) + "</a></dt>");
		out.print("<dd>" + EncodeUtil.htmlEncode(rs.getString("descript")));
		out.print("</dd>");
		flag=true;
	}
	out.println("</dl>");
	if(!flag){
		out.println("<div style='text-indent:20px;color:#FF0000'>");
		out.println("このカテゴリに属する情報はありません</div>");
	}
}
%>
<hr />
</body>
</html>
