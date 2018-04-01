<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.net.*,java.util.*" %>
<%!
public String strEncode(String strVal) throws UnsupportedEncodingException{
	if(strVal==null){
		return (null);
	}else{
		return (new String(strVal.getBytes("ISO-8859-1"),"JISAutoDetect"));
	}
}
%>
<html>
<head>
<title>住所録検索</title>
</head>
<body>
<h1>住所録検索</h1>
<hr />
<%
if(request.getParameter("sbm")==null){
%>
<form method="POST" action="addSrch.jsp">
<table border="0">
<tr>
	<th align="right">名前：</th>
	<td><input type="text" name="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">性別：</th>
	<td>
		<select name="gendor">
			<option value="">指定なし</option>
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
	</td>
</tr>
<tr>
	<th align="right">都道府県：</th>
	<td>
		<select name="prefecture">
			<option value="">指定なし</option>
			<%
			String[] strNam={"北海道","青森","岩手","宮城","秋田","山形","福島","東京","神奈川","埼玉","千葉","茨城","栃木","群馬","山梨","新潟","長野","富山","石川","福井","愛知","岐阜","静岡","三重","大阪","兵庫","京都","滋賀","奈良","和歌山","鳥取","島根","岡山","広島","山口","徳島","香川","愛媛","高知","福岡","佐賀","長崎","熊本","大分","宮崎","鹿児島","沖縄"};
			for(int i=0;i<strNam.length;i++){
				out.println("<option value='" + strNam[i] + "'>");
				out.println(strNam[i] + "</option>");
			}
			%>
		</select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" name="sbm" value="検索" />
		<input type="reset" name="rst" value="クリア" />
	</td>
</tr>
</table>
</form>
<%
}else{
	String strNam=strEncode(request.getParameter("nam"));
	String strGnd=strEncode(request.getParameter("gendor"));
	String strPre=strEncode(request.getParameter("prefecture"));
	FileReader objFR=new FileReader(application.getRealPath("data/address.txt"));
	BufferedReader objBR=new BufferedReader(objFR);
	out.println("［<a href='detail.jsp?flag=new'>新規登録</a>］");
	out.println("<table border='1'>");
	out.println("<tr><th>名前</th><th>性別</th><th>生年月日</th><th>住所</th>");
	out.println("<th>電話番号</th><th>E-Mailアドレス</th><th>更新</th></tr>");
	while(objBR.ready()){
		String[] aryTmp=new String[6];
		StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),"\t");
		for(int i=0;i<6;i++){
			aryTmp[i]=objTkn.nextToken();
		}
		boolean flag=true;
		if(!strNam.equals("") && aryTmp[0].indexOf(strNam)==-1)  {flag=false;}
		if(!strGnd.equals("") && aryTmp[1].equals(strGnd)==false){flag=false;}
		if(!strPre.equals("") && aryTmp[3].indexOf(strPre)==-1)  {flag=false;}
		if(flag){
			out.println("<tr>");
			for(int j=0;j<6;j++){
				out.println("<td>" + aryTmp[j] + "</td>");
			}
			out.println("<td><a href='detail.jsp?nam=" + URLEncoder.encode(aryTmp[0]) + "'><img src='pen.gif' border='0' width='15' height='15' alt='更新'></a></td>");
			out.println("</tr>");
		}
	}
	out.println("</table>");
}
%>
</body>
</html>
