<%@ page contentType="text/html; charset=EUC-JP"
				 import="java.util.*,java.net.*,java.io.*" %>
<%!
public String strEncode(String strVal) throws UnsupportedEncodingException{
	if(strVal==null){
		return (null);
	}else{
		return (new String(strVal.getBytes("ISO_8859_1"),"JISAutoDetect"));
	}
}
%>
<html>
<head>
<title>ファイルキャビネット</title>
</head>
<body>
<table border="0">
<%
String strNam,strExt;
String strRoot="chap2/cabinet/doc";
String curPath="";
if(request.getParameter("path")==null || request.getParameter("path")==""){
	curPath=strRoot;
}else{
	curPath=strRoot + strEncode(request.getParameter("path"));
}
File fl=new File(application.getRealPath(curPath));
File[] aryFls=fl.listFiles();
if(request.getParameter("path")!=null){
	String strTmp=fl.getParent().replace('\\','/');
	strTmp=strTmp.substring(strTmp.indexOf(strRoot) + strRoot.length());
	out.println("<tr><td align='right'>");
	out.println("[<a href='cabi.jsp?path=" + URLEncoder.encode(strTmp) + "'>");
	out.println("上のフォルダへ</a>]</td></tr>");
}
out.println("<tr><td>");
out.println("<table border='1'>");
out.println("<tr><th>名前</th><th>種類</th><th>サイズ</th><th>最終更新日</th></tr>");
for(int i=0;i<aryFls.length;i++){
	strNam=aryFls[i].getName();
	strExt=strNam.substring(strNam.lastIndexOf(".")+1);
	out.println("<tr>");
	String strVal=aryFls[i].getPath().replace('\\','/');
	strVal=strVal.substring(strVal.indexOf(strRoot) + strRoot.length());
	if(aryFls[i].isDirectory()){
		out.println("<td><a href='cabi.jsp?path=" + URLEncoder.encode(strVal) + "'>");
		out.println(strNam + "</a></td>");
		out.println("<td>フォルダ</td>");
	}else{
		out.println("<td><a href='disp.jsp?path=" + URLEncoder.encode(strVal) + "'>");
		out.println(strNam + "</a></td>");
		out.println("<td>" + strExt + "ファイル</td>");
	}
	out.println("<td align='right'>");
	out.println((aryFls[i].length() / 1024 + 1) + "KB</td>");
	out.println("<td>" + (new Date(aryFls[i].lastModified())).toString() + "</td>");
	out.println("</tr>");
}
%>
</table>
</td>
</tr>
</table>
</body>
</html>
