<%@ page contentType="text/html;charset=EUC-JP" import="java.io.*" %>
<%
String strPth=request.getParameter("doc");
String strKey="Rec" + strPth.replace('.','_');
File objFle=new File(application.getRealPath("data/doc/" + strPth));
Long lngMod=new Long(objFle.lastModified());
Cookie objCok=new Cookie(strKey,lngMod.toString());
objCok.setMaxAge(60*60*24*180);
response.addCookie(objCok);
response.sendRedirect("/jsp/data/doc/" + strPth);
%>
