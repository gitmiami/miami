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
<title>�ʰץ��Ģ�ʥ�����ϡ�</title>
<base target="_parent" />
</head>
<body>
<form method="POST" action="save.jsp">
<%
String strTmp;
strTmp=application.getRealPath("data/memo/" + request.getParameter("doc"));
File objFle=new File(strTmp);
switch(strEncode(request.getParameter("proc")).charAt(0)){
	case '��' :
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
	case 'ʸ' :
		if(objFle.exists()){
			objFle.delete();
		}
		out.println("<script language='JavaScript'>");
		out.println("parent.location.href='index.html';");
		out.println("</script>");
		break;
	case '��' :
		strTmp=application.getRealPath("data/memo/" + request.getParameter("newDoc"));
		objFle=new File(strTmp);
		if(!objFle.exists()){
			objFle.createNewFile();
			out.print("<textarea name='memo' cols='80' rows='20'>");
			out.print("</textarea>");
		}else{
			out.println("<div style='color:#FF0000'>");
			out.println("�����ٹ𡪡�Ʊ̾�Υե����뤬����¸�ߤ��ޤ�</div>");
			out.close();
		}
		break;
}
%>
<br />
<input type="hidden" name="doc" value="<%=strTmp %>" />
<input type="submit" value="��¸" />
</form>
</body>
</html>
