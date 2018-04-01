<%@page contentType="text/html;charset=EUC-JP"
        import="java.io.*,java.util.*" %>
<html>
<head>
<title>今日のデザイン</title>
<style>
<!--
<%
int intTmp=0;
StringBuffer objSB=new StringBuffer();
Random objRnd=new Random();
objRnd.setSeed(System.currentTimeMillis());
int intRnd=objRnd.nextInt(101);
FileReader objFle=new FileReader(application.getRealPath("chap2/contRot/cntSche.dat"));
BufferedReader objBR=new BufferedReader(objFle);
while(objBR.ready()){
	String strTmp=objBR.readLine();
	if(strTmp.indexOf("%%#")!=-1){
		intTmp+=Integer.parseInt(strTmp.substring(3));
		if(intRnd<=intTmp){
			while(objBR.ready()){
				strTmp=objBR.readLine();
				if(strTmp.indexOf("%%#")!=-1){
					break;
				}else{
					objSB.append(strTmp + System.getProperty("line.separator"));
				}
			}
			break;
		}
	}
}
out.println(objSB.toString());
%>
-->
</style>
</head>
<body>
<h1>The Recent State</h1>
Hello,This is Yamada.<br />
I'm busy writing a book about JSP(JavaServer Pages).<br />
Actually, It was decided that a manuscript I wrote would be published. <br>
(Price:2800yen Title:&quot;The Collection of JSP's Sample&quot; Date:2003/02/14)<br /><br />
So I must write 1500 manuscript paper with squares for four hundred characters by Nov.30. Everyday I make a JSP's source sample, read a specifications Written in English, and, of cource,write a manuscript.<br />
I don't have any time to spare!
</body>
</html>
