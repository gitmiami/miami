<%@ page contentType="text/html;charset=EUC-JP" %>
<jsp:useBean id="objCnt" class="beanYama.bean_grhCnt" scope="page" />
<html>
<head>
<title>�ڡ���ñ�̤Υ���������ʬ��</title>
</head>
<body>
<h1>�ƥڡ�������������</h1>
<table border="1">
<tr>
	<th>�ڡ���̾</th><th>10</th><th>20</th><th>30</th><th>40</th><th>50</th>
	<th>60</th><th>70</th><th>80</th><th>90</th><th>100</th>
</tr>
<%
String[] aryPag={"cnt1","cnt2","cnt3","cnt4","cnt5"};
for(int i=0;i<aryPag.length;i++){
	String strPath=application.getRealPath("chap3/grhCnt/cnt.dat");
	int intCnt=objCnt.hits(strPath,"/chap3/grhCnt/" + aryPag[i] + ".jsp");
	int tmpCnt=(intCnt / 10) + 1;
	if(tmpCnt>10){tmpCnt=10;}
%>
<tr>
	<th><%=aryPag[i] + ".jsp" %></th>
	<td bgcolor="#FFbbEE" colspan="<%=tmpCnt%>"><%=intCnt%></td>
</tr>
<%
}
%>
</table>
</body>
</html>
