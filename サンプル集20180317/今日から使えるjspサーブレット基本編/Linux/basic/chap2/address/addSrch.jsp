<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.net.*,java.util.*" %>
<%@ include file="/bin/encode.jsp" %>
<html>
<head>
<title>����Ͽ����</title>
</head>
<body>
<h1>����Ͽ����</h1>
<hr />
<%
if(request.getParameter("sbm")==null){
%>
<form method="POST" action="addSrch.jsp">
<table border="0">
<tr>
	<th align="right">̾����</th>
	<td><input type="text" name="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���̡�</th>
	<td>
		<select name="gendor">
			<option value="">����ʤ�</option>
			<option value="��">��</option>
			<option value="��">��</option>
		</select>
	</td>
</tr>
<tr>
	<th align="right">��ƻ�ܸ���</th>
	<td>
		<select name="prefecture">
			<option value="">����ʤ�</option>
			<%
			String[] strNam={"�̳�ƻ","�Ŀ�","���","�ܾ�","����","����","ʡ��","���","������","���","����","���","����","����","����","����","Ĺ��","�ٻ�","����","ʡ��","����","����","�Ų�","����","���","ʼ��","����","����","����","�²λ�","Ļ��","�纬","����","����","����","����","����","��ɲ","����","ʡ��","����","Ĺ��","����","��ʬ","�ܺ�","������","����"};
			for(int i=0;i<strNam.length;i++){
				out.println("<option value='" + strNam[i] + "'>");
				out.println(strNam[i] + "</option>");
			}
			%>
		</select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" name="sbm" value="����" />
		<input type="reset" name="rst" value="���ꥢ" />
	</td>
</tr>
</table>
</form>
<%
}else{
	String strNam=strEncode(request.getParameter("nam"));
	String strGnd=strEncode(request.getParameter("gendor"));
	String strPre=strEncode(request.getParameter("prefecture"));
	FileReader objFR=new FileReader(application.getRealPath("chap2/address/address.txt"));
	BufferedReader objBR=new BufferedReader(objFR);
	out.println("��<a href='detail.jsp?flag=new'>������Ͽ</a>��");
	out.println("<table border='1'>");
	out.println("<tr><th>̾��</th><th>����</th><th>��ǯ����</th><th>����</th>");
	out.println("<th>�����ֹ�</th><th>E-Mail���ɥ쥹</th><th>����</th></tr>");
	while(objBR.ready()){
		String[] aryTmp=new String[6];
		StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),"\t");
		for(int i=0;i<6;i++){
			aryTmp[i]=objTkn.nextToken();
		}
		boolean flag=true;
		if(!strNam.equals("") && aryTmp[0].indexOf(strNam)==-1)  {flag=false;}
		if(!strGnd.equals("") && aryTmp[1].equals(strGnd)==false){flag=false;}
		if(!strPre.equals("") && aryTmp[3].indexOf(strPre)==-1)  {flag=false;}
		if(flag){
			out.println("<tr>");
			for(int j=0;j<6;j++){
				out.println("<td>" + aryTmp[j] + "</td>");
			}
			out.println("<td><a href='detail.jsp?nam=" + URLEncoder.encode(aryTmp[0]) + "'><img src='pen.gif' border='0' width='15' height='15' alt='����'></a></td>");
			out.println("</tr>");
		}
	}
	out.println("</table>");
}
%>
</body>
</html>
