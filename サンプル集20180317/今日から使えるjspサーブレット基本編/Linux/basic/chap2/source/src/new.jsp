<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<html>
<head>
<title>新着情報の表示</title>
<base target="_blank">
</head>
<body>
<h1>新着情報の表示</h1>
<hr />
<%
boolean flag;
File fl=new File(application.getRealPath("data/doc"));
File[] aryFls=fl.listFiles();
Cookie[] aryCok=request.getCookies();
out.println("<ol>");
for(int i=0;i<aryFls.length;i++){
	flag=false;
	String strPth=aryFls[i].getName();
	String strKey="Rec" + strPth.replace('.','_');
	out.print("<li><a href='rec.jsp?doc=" + strPth + "'>" + strPth + "</a>");
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
		if(!flag){
			out.print("<img src='new.gif' width='38' height='6' alt='New' />");
		}
	}
	out.println("</li>");
}
out.println("</ol>");
%>
</body>
</html>
