<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.util.*,java.text.*" %>
<%
StringBuffer objBuf=new StringBuffer();

Calendar objCal=Calendar.getInstance();

Date objDat=objCal.getTime();

SimpleDateFormat objFmt=new SimpleDateFormat("yyyyMMdd");

String strNam="data/log/" + objFmt.format(objDat).toString() + ".log";

FileWriter objFle=new FileWriter(application.getRealPath(strNam),true);
BufferedWriter objWrt=new BufferedWriter(objFle,10);

SimpleDateFormat objFmt2=new SimpleDateFormat("H:m:s");
objBuf.append(objFmt2.format(objDat).toString());objBuf.append("\t");
objBuf.append(request.getServletPath());         objBuf.append("\t");
objBuf.append(request.getHeader("referer"));     objBuf.append("\t");
objBuf.append(request.getLocale());              objBuf.append("\t");
objBuf.append(request.getHeader("user-agent"));
objWrt.write(objBuf.toString());
objWrt.newLine();
objWrt.close();
%>
