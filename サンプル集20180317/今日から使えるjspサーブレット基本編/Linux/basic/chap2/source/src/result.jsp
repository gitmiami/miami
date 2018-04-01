<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.util.*" %>
<html>
<head>
<title>アンケート集計</title>
</head>
<body>
<h1>アンケート集計</h1>
<table border="1">
<tr>
<th>No.</th><th>項目</th><th>5</th><th>4</th><th>3</th><th>2</th><th>1</th>
</tr>
<%
int cnt=1;
String strPath=application.getRealPath("chap2/quest/data.dat");
String strBackPath=application.getRealPath("chap2/quest/data.tmp");
File objFlR=new File(strPath);
FileReader objFR=new FileReader(objFlR);
BufferedReader objBR=new BufferedReader(objFR);
File objFlW=new File(strBackPath);
FileWriter objFW=new FileWriter(objFlW);
BufferedWriter objBW=new BufferedWriter(objFW,10);
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
	objBW.write(strResult.substring(0,strResult.length()-1));
	objBW.newLine();
	cnt++;
}
objBR.close();
objBW.close();
objBR=new BufferedReader(new FileReader(objFlW));
objBW=new BufferedWriter(new FileWriter(objFlR));
while(objBR.ready()){
	objBW.write(objBR.readLine());
	objBW.newLine();
}
objBR.close();
objBW.close();
%>
</table>
</form>
</body>
</html>