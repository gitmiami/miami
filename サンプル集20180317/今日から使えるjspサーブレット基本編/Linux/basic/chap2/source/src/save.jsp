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
<%
FileWriter objFW=new FileWriter(request.getParameter("doc"),false);
BufferedWriter objBR=new BufferedWriter(objFW,10);
objBR.write(strEncode(request.getParameter("memo")));
objBR.close();
response.sendRedirect("index.html");
%>