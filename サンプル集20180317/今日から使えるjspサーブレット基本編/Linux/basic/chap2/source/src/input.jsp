<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
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
<title>簡易メモ帳（メモ入力）</title>
<base target="_parent" />
</head>
<body>
<form method="POST" action="save.jsp">
<%
String strTmp;
strTmp=application.getRealPath("data/memo/" + request.getParameter("doc"));
File objFle=new File(strTmp);
switch(strEncode(request.getParameter("proc")).charAt(0)){
	case '読' :
		if(objFle.exists()){
			out.print("<textarea name='memo' cols='80' rows='20'>");
			FileReader objFR=new FileReader(strTmp);
			BufferedReader objBR=new BufferedReader(objFR);
			while(objBR.ready()){
				out.println(objBR.readLine());
			}
			out.print("</textarea>");
			objBR.close();
		}
		break;
	case '文' :
		if(objFle.exists()){
			objFle.delete();
		}
		out.println("<script language='JavaScript'>");
		out.println("parent.location.href='index.html';");
		out.println("</script>");
		break;
	case '新' :
		strTmp=application.getRealPath("data/memo/" + request.getParameter("newDoc"));
		objFle=new File(strTmp);
		if(!objFle.exists()){
			objFle.createNewFile();
			out.print("<textarea name='memo' cols='80' rows='20'>");
			out.print("</textarea>");
		}else{
			out.println("<div style='color:#FF0000'>");
			out.println("！！警告！！同名のファイルが既に存在します</div>");
			out.close();
		}
		break;
}
%>
<br />
<input type="hidden" name="doc" value="<%=strTmp %>" />
<input type="submit" value="保存" />
</form>
</body>
</html>
