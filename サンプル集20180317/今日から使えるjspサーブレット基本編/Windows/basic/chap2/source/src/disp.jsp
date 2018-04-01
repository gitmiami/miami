<%@ page contentType="text/plain; charset=Shift_JIS"
				 import="java.util.*,java.net.*,java.io.*" %><%!
public String strEncode(String strVal) throws UnsupportedEncodingException{
	if(strVal==null){
		return (null);
	}else{
		return (new String(strVal.getBytes("ISO_8859_1"),"JISAutoDetect"));
	}
}
%><%
String strRoot="chap2/cabinet/doc";
String strVal=strEncode(request.getParameter("path"));
FileReader fr=new FileReader(application.getRealPath(strRoot + strVal));
BufferedReader br=new BufferedReader(fr);
while(br.ready()){
	out.println(br.readLine());
}
%>
