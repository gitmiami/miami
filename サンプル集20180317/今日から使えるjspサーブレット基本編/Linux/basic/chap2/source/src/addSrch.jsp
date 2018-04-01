<%@ page contentType="text/html;charset=EUC-JP"
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
<title>½»½êÏ¿¸¡º÷</title>
</head>
<body>
<h1>½»½êÏ¿¸¡º÷</h1>
<hr />
<%
if(request.getParameter("sbm")==null){
%>
<form method="POST" action="addSrch.jsp">
<table border="0">
<tr>
	<th align="right">Ì¾Á°¡§</th>
	<td><input type="text" name="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">À­ÊÌ¡§</th>
	<td>
		<select name="gendor">
			<option value="">»ØÄê¤Ê¤·</option>
			<option value="ÃË">ÃË</option>
			<option value="½÷">½÷</option>
		</select>
	</td>
</tr>
<tr>
	<th align="right">ÅÔÆ»ÉÜ¸©¡§</th>
	<td>
		<select name="prefecture">
			<option value="">»ØÄê¤Ê¤·</option>
			<%
			String[] strNam={"ËÌ³¤Æ»","ÀÄ¿¹","´ä¼ê","µÜ¾ë","½©ÅÄ","»³·Á","Ê¡Åç","Åì¶ ","¿ÀÆàÀî","ºë¶Ì","ÀéÍÕ","°ñ¾ë","ÆÊÌÚ","·²ÇÏ","»³Íü","¿·³ã","Ä¹Ìî","ÉÙ»³","ÀĞÀî","Ê¡°æ","°¦ÃÎ","´ôÉì","ÀÅ²¬","»°½Å","Âçºå","Ê¼¸Ë","¶ ÅÔ","¼¢²ì","ÆàÎÉ","ÏÂ²Î»³","Ä»¼è","Åçº¬","²¬»³","¹­Åç","»³¸ı","ÆÁÅç","¹áÀî","°¦É²","¹âÃÎ","Ê¡²¬","º´²ì","Ä¹ºê","·§ËÜ","ÂçÊ¬","µÜºê","¼¯»ùÅç","²­Æì"};
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
		<input type="submit" name="sbm" value="¸¡º÷" />
		<input type="reset" name="rst" value="¥¯¥ê¥¢" />
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
	out.println("¡Î<a href='detail.jsp?flag=new'>¿·µ¬ÅĞÏ¿</a>¡Ï");
	out.println("<table border='1'>");
	out.println("<tr><th>Ì¾Á°</th><th>À­ÊÌ</th><th>À¸Ç¯·îÆü</th><th>½»½ê</th>");
	out.println("<th>ÅÅÏÃÈÖ¹æ</th><th>E-Mail¥¢¥É¥ì¥¹</th><th>¹¹¿·</th></tr>");
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
			out.println("<td><a href='detail.jsp?nam=" + URLEncoder.encode(aryTmp[0]) + "'><img src='pen.gif' border='0' width='15' height='15' alt='¹¹¿·'></a></td>");
			out.println("</tr>");
		}
	}
	out.println("</table>");
}
%>
</body>
</html>
