<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%
String strDoc="/chap2/cookie/doc/";
String strPth=request.getParameter("doc");
String strKey="Rec" + strPth.replace('.','_');
File objFle=new File(application.getRealPath(strDoc + strPth));
Long lngMod=new Long(objFle.lastModified());
Cookie objCok=new Cookie(strKey,lngMod.toString());
objCok.setMaxAge(60*60*24*180);
response.addCookie(objCok);
response.sendRedirect("/basic" + strDoc + strPth);
%>
