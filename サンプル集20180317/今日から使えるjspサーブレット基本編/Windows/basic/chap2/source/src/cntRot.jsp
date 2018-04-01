<%@page contentType="text/html;charset=Shift_JIS" import="java.util.*" %>
<html>
<head>
<title>¡“ú‚ÌƒfƒUƒCƒ“</title>
<style>
<!--
body{
<%
int intNum;
Random objRnd=new Random();
objRnd.setSeed(System.currentTimeMillis());
intNum=objRnd.nextInt(4);
switch(intNum) {
	case 1 : %>
		background:url(galaxy.jpg);
		font-size:12pt;
		font-family:OCR A Extended;
		color:#f0f8ff;
<%
		break;
	case 2 :
%>
		background:#ffffff;
		font-size:12pt;
		font-family:‚c‚ePOP‘Ì,HG‘n‰pŠpÎß¯Ìß‘Ì;
		color:#2F4F4F;
<%
		break;
	case 3 :
%>
		font-size:12pt;
		background:url(sumie.jpg);
		font-family:HG³²‘‘Ì-PRO,‚l‚r –¾’©,×–¾’©‘Ì;
		color:#006666;
<%
	break;
}
%>
}
-->
</style>
</head>
<body>
<h1>The Recent State</h1>
Hello,This Is Yamada.<br />
I'm busy writing a book about JSP(JavaServer Pages).<br />
Actually, It was decided that a manuscript I wrote would be published. <br>
(Price:2800yen Title:&quot;The Collection of JSP's Sample&quot; Date:2002/09/17)<br /><br />
So I must write 1500 manuscript paper with squares for four hundred characters by Jun.4. Everyday I make a JSP's source sample, read a specifications written in English, and, of cource,write a manuscript.<br />
I don't have any time to spare!
</body>
</html>
