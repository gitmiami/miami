<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.net.*,java.util.regex.*" %>
<%@ include file="/bin/encode.jsp" %>
<html>
<head>
<title>�������</title>
<base target="right" />
</head>
<body>
<div style="font-weight:bold;">�������</div>
<ol>
<%
String strDoc="chap2/regex/doc/";
String strKey=strEncode(request.getParameter("keywd"));
File objFl=new File(application.getRealPath(strDoc));
File[] aryFl=objFl.listFiles();
for(int i=0;i<aryFl.length;i++){
	boolean flag=false;
	File tmpFl=new File(application.getRealPath(strDoc + aryFl[i].getName()));
	FileReader objFR=new FileReader(tmpFl);
	BufferedReader objBR=new BufferedReader(objFR);
	Pattern ptn=Pattern.compile(strKey,Pattern.CASE_INSENSITIVE);
	while(objBR.ready()){
		Matcher mtch=ptn.matcher(objBR.readLine());
		if(mtch.find()){
			flag=true;
			break;
		}
	}
	if(flag){
		out.print("<li>");
		out.print("<a href='disp.jsp?doc=" + strDoc + aryFl[i].getName());
		out.print("&keywd=" + URLEncoder.encode(strKey) + "'>");
		out.print(aryFl[i].getName() + "</a>");
		out.println("</li>");
	}
}
%>
</ol>
</body>
</html>
