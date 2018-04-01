<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.util.*" %>
<%
if(session.getAttribute("quest_flag")!=null){
	out.println("<div style='color:Red;'>警告：二重投稿はできません</div>");
	out.close();
}
%>
<html>
<head>
<title>アンケート集計結果</title>
</head>
<body>
<h1>アンケート集計</h1>
<table border="1">
<tr>
<th width="20">No.</th><th width="60">項目</th>
<th width="20">5</th><th width="20">4</th><th width="20">3</th>
<th width="20">2</th><th width="20">1</th>
</tr>
<%
int cnt=1;
ByteArrayOutputStream objBops=new ByteArrayOutputStream();
PrintStream objPStr=new PrintStream(objBops,true);
File objFl=new File(application.getRealPath("chap2/quest/data.dat"));
FileReader objFR=new FileReader(objFl);
BufferedReader objBR=new BufferedReader(objFR);
while(objBR.ready()){
	String[] strTmp=new String[7];
	StringBuffer objSB=new StringBuffer();
	StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),",");
	for(int i=0;i<7;i++){strTmp[i]=objTkn.nextToken();}
	String reqTmp=request.getParameter(new Integer(cnt).toString());
	if(reqTmp!=null){
		int intNum=Integer.parseInt(reqTmp);
		int intTmp=(Integer.parseInt(strTmp[6-intNum+1]))+1;
		strTmp[6-intNum+1]=(new Integer(intTmp)).toString();
	}
	out.println("<tr>");
	for(int j=0;j<7;j++){
		out.println("<td nowrap>" + strTmp[j] + "</td>");
		objSB.append(strTmp[j] + ",");
	}
	out.println("</tr>");
	String strResult=objSB.toString();
	objPStr.println(strResult.substring(0,strResult.length()-1));
	cnt++;
}
objBR.close();
ByteArrayInputStream objBips=new ByteArrayInputStream(objBops.toByteArray());
FileOutputStream objFos=new FileOutputStream(objFl);
int x;
while((x=objBips.read())!=-1){objFos.write(x);}
objBips.close();
objFos.close();
session.setAttribute("quest_flag","1");
%>
</table>
</form>
</body>
</html>