<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.net.*" %>
<html>
<head>
<title>新着情報の表示</title>
<base target="_blank">
</head>
<body>
<h1>新着情報の表示</h1>
<hr />
<ol>
<%
boolean flag;
File fl=new File(application.getRealPath("chap2/cookie/doc"));
File[] aryFls=fl.listFiles();
Cookie[] aryCok=request.getCookies();
for(int i=0;i<aryFls.length;i++){
	flag=false;
	String strPth=aryFls[i].getName();
	String strKey="Rec" + strPth.replace('.','_');
	out.print("<li><a href='rec.jsp?doc=" + URLEncoder.encode(strPth) + "'>");
	out.print(strPth + "</a>");
	if(aryCok!=null){
		for(int j=0;j<aryCok.length;j++){
			if(aryCok[j].getName().equals(strKey)){
				flag=true;
				Long lngMod=new Long(aryFls[i].lastModified());
				if(!aryCok[j].getValue().equals(lngMod.toString())){
					out.print("<img src='new.gif' width='38' height='6' alt='New' />");
				}
			}
		}
	}
	if(!flag){
		out.print("<img src='new.gif' width='38' height='6' alt='New' />");
	}
	out.println("</li>");
}
%>
</ol>
</body>
</html>
