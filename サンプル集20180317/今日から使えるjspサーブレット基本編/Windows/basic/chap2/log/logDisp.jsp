<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.text.*,java.util.*" %>
<html>
<head>
<title>ログファイルの表示</title>
</head>
<body>
<table border="1">
<tr style="background:#00ccFF">
	<th>アクセス時刻</th><th>URL</th><th>リンク元</th>
	<th>ロケール</th><th>使用ブラウザ</th>
</tr>
<%
String strNam;
StringTokenizer objTkn;
if(request.getParameter("dat")==null){
	Calendar objCal=Calendar.getInstance();
	Date objDat=objCal.getTime();
	SimpleDateFormat objFmt=new SimpleDateFormat("yyyyMMdd");
	strNam="data/log/" + objFmt.format(objDat) + ".log";
}else{
	strNam="data/log/" + request.getParameter("dat") + ".log";
}
File objFle=new File(application.getRealPath(strNam));
if(objFle.exists()){
	FileReader objFR=new FileReader(objFle);
	BufferedReader objBR=new BufferedReader(objFR);
	while(objBR.ready()){
		out.println("<tr style='background:#ffffcc'>");
		objTkn=new StringTokenizer(objBR.readLine(),"\t");
		while(objTkn.hasMoreTokens()){
			out.println("<td>" + objTkn.nextToken() + "</td>");
		}
	}
	out.println("</tr>");
}else{
	out.println("<div style='color:Red'>指定されたファイルがありません</div>");
}
%>
</table>
</body>
</html>
