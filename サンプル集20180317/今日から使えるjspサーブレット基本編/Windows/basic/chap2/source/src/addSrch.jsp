<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.net.*,java.util.*" %>
<%!
public String strEncode(String strVal) throws UnsupportedEncodingException{
	if(strVal==null){
		return (null);
	}else{
		return (new String(strVal.getBytes("ISO-8859-1"),"JISAutoDetect"));
	}
}
%>
<html>
<head>
<title>�Z���^����</title>
</head>
<body>
<h1>�Z���^����</h1>
<hr />
<%
if(request.getParameter("sbm")==null){
%>
<form method="POST" action="addSrch.jsp">
<table border="0">
<tr>
	<th align="right">���O�F</th>
	<td><input type="text" name="nam" size="20" maxlength="20" /></td>
</tr>
<tr>
	<th align="right">���ʁF</th>
	<td>
		<select name="gendor">
			<option value="">�w��Ȃ�</option>
			<option value="�j">�j</option>
			<option value="��">��</option>
		</select>
	</td>
</tr>
<tr>
	<th align="right">�s���{���F</th>
	<td>
		<select name="prefecture">
			<option value="">�w��Ȃ�</option>
			<%
			String[] strNam={"�k�C��","�X","���","�{��","�H�c","�R�`","����","����","�_�ސ�","���","��t","���","�Ȗ�","�Q�n","�R��","�V��","����","�x�R","�ΐ�","����","���m","��","�É�","�O�d","���","����","���s","����","�ޗ�","�a�̎R","����","����","���R","�L��","�R��","����","����","���Q","���m","����","����","����","�F�{","�啪","�{��","������","����"};
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
		<input type="reset" name="rst" value="�N���A" />
	</td>
</tr>
</table>
</form>
<%
}else{
	String strNam=strEncode(request.getParameter("nam"));
	String strGnd=strEncode(request.getParameter("gendor"));
	String strPre=strEncode(request.getParameter("prefecture"));
	FileReader objFR=new FileReader(application.getRealPath("data/address.txt"));
	BufferedReader objBR=new BufferedReader(objFR);
	out.println("�m<a href='detail.jsp?flag=new'>�V�K�o�^</a>�n");
	out.println("<table border='1'>");
	out.println("<tr><th>���O</th><th>����</th><th>���N����</th><th>�Z��</th>");
	out.println("<th>�d�b�ԍ�</th><th>E-Mail�A�h���X</th><th>�X�V</th></tr>");
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
			out.println("<td><a href='detail.jsp?nam=" + URLEncoder.encode(aryTmp[0]) + "'><img src='pen.gif' border='0' width='15' height='15' alt='�X�V'></a></td>");
			out.println("</tr>");
		}
	}
	out.println("</table>");
}
%>
</body>
</html>
