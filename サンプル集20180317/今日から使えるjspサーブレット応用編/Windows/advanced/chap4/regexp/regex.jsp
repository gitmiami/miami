<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="req" uri="http://jakarta.apache.org/taglibs/request-1.0" %>
<%@ taglib prefix="rx"  uri="http://jakarta.apache.org/taglibs/regexp-1.0" %>
<rx:regexp id="objReg">/[A-Z0-9\.\-]+@([A-Z0-9\-]+\.)+[A-Z0-9\-]+/i</rx:regexp>
<rx:text id="strMemo">
<%
FileReader objFR=new FileReader(application.getRealPath("chap4/regexp/org.txt"));
BufferedReader objBR=new BufferedReader(objFR);
while(objBR.ready()){out.println(objBR.readLine());}
%>
</rx:text>
<html>
<head>
<title>メールアドレスの抽出（結果表示）</title>
</head>
<body>
<h1>メールアドレスの抽出</h1>
<table border="5">
<tr><td style="background-color:#EEFFEE;width:150pt;">
<rx:match id="objMch" text="strMemo" regexp="objReg">
	<jsp:getProperty name="objMch" property="match"/><br />
</rx:match>
</td></tr>
</table>
</body>
</html>
