<%@ page contentType="application/octet-stream; charset=EUC-JP"
				 import="java.util.*,java.net.*,java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<%
int i;
String strRoot="/chap2/cabinet/doc";
String strVal=strEncode(request.getParameter("path"));
String strNam=strVal.substring(strVal.lastIndexOf("/") + 1);
response.setHeader("Content-Disposition","attachment; filename=" + strNam);
FileInputStream objFis=new FileInputStream(application.getRealPath(strRoot + "/" + strVal));
ServletOutputStream objOut=response.getOutputStream();

while((i=objFis.read())!=-1){
	objOut.write(i);
}
objOut.close();
%>
