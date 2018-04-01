<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<%
FileWriter objFW=new FileWriter(strEncode(request.getParameter("doc")),false);
BufferedWriter objBR=new BufferedWriter(objFW,10);
objBR.write(strEncode(request.getParameter("memo")));
objBR.close();
response.sendRedirect("index.html");
%>