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
<%
String[] aryTmp=new String[6];
if(request.getParameter("sbm")==null){
	if(request.getParameter("flag")==null){
		FileReader objFR=new FileReader(application.getRealPath("data/address.txt"));
		BufferedReader objBR=new BufferedReader(objFR);
		while(objBR.ready()){
			StringTokenizer objTkn=new StringTokenizer(objBR.readLine(),"\t");
			for(int i=0;i<6;i++){aryTmp[i]=objTkn.nextToken();}
			if(aryTmp[0].equals(strEncode(request.getParameter("nam")))){break;}
		}
	}
%>
	<html>
	<head>
	<title>�Z���^�o�^�E�X�V</title>
	</head>
	<body>
	<h1>�Z���^�o�^�E�X�V</h1>
	<hr />
	<form method="POST" action="detail.jsp">
	<table border="0">
	<tr>
		<th align="right">���O�F</th>
		<td>
		<% if(request.getParameter("flag")!=null){ %>
			<input type="text" name="nam" size="20" maxlength="20" />
		<% }else{ %>
			<input type="hidden" name="nam" value="<%=aryTmp[0] %>" />
			<%=aryTmp[0] %>
		<% } %>
		</td>
	</tr>
	<tr>
		<th align="right">���ʁF</th>
		<td>
			<select name="gendor">
				<option value="">�w��Ȃ�</option>
				<option value="�j"
				<% if(aryTmp[1]!=null && aryTmp[1].equals("�j")){out.print("selected");} %>>�j</option>
				<option value="��"
				<% if(aryTmp[1]!=null && aryTmp[1].equals("��")){out.print("selected");} %>>��</option>
			</select>
		</td>
	</tr>
	<tr>
		<th align="right">���N�����F</th>
		<td>
			<input type="text" name="birth" size="12" maxlength="10"
				value="<%=(aryTmp[2]==null) ? "" : aryTmp[2] %>" />
		</td>
	</tr>
	<tr>
		<th align="right">�Z���F</th>
		<td>
			<input type="text" name="address" size="75" maxlength="100"
				value="<%=(aryTmp[3]==null) ? "" : aryTmp[3] %>" />
		</td>
	</tr>
	<tr>
		<th align="right">�d�b�ԍ��F</th>
		<td>
			<input type="text" name="tel" size="18" maxlength="20"
				value="<%=(aryTmp[4]==null) ? "" : aryTmp[4] %>" />
		</td>
	</tr>
	<tr>
		<th align="right">E-Mail�F</th>
		<td>
			<input type="text" name="email" size="50" maxlength="100"
				value="<%=(aryTmp[5]==null) ? "" : aryTmp[5] %>" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="sbm" value="�o�^�E�X�V" />
			<input type="reset" name="rst" value="�N���A" />
		</td>
	</tr>
	</table>
	</form>
	</body>
	</html>
<%
}else{
	boolean flag=false;
	String strLne;
	String strNam=strEncode(request.getParameter("nam"));
	String strGdr=strEncode(request.getParameter("gendor"));
	String strBth=request.getParameter("birth");
	String strAdd=strEncode(request.getParameter("address"));
	String strTel=request.getParameter("tel");
	String strEml=request.getParameter("email");
	File objFl1=new File(application.getRealPath("data/address.txt"));
	FileReader objFR=new FileReader(objFl1);
	BufferedReader objBR=new BufferedReader(objFR);
	File objFl2=new File(application.getRealPath("data/address.tmp"));
	FileWriter objFW=new FileWriter(objFl2,false);
	BufferedWriter objBW=new BufferedWriter(objFW,10);
	while(objBR.ready()){
		strLne=objBR.readLine();
		StringTokenizer objTkn=new StringTokenizer(strLne,"\t");
		for(int i=0;i<6;i++){aryTmp[i]=objTkn.nextToken();}
		if(aryTmp[0].equals(strNam)){
			flag=true;
			objBW.write(strNam + "\t" + strGdr + "\t" + strBth + "\t" + strAdd + "\t" + strTel + "\t" + strEml);
		}else{
			objBW.write(strLne);
		}
		objBW.newLine();
	}
	if(!flag){
		objBW.write(strNam + "\t" + strGdr + "\t" + strBth + "\t" + strAdd + "\t" + strTel + "\t" + strEml);
		objBW.newLine();
	}
	objBR.close();
	objBW.close();
	objBR=new BufferedReader(new FileReader(objFl2));
	objBW=new BufferedWriter(new FileWriter(objFl1));
	while(objBR.ready()){
		objBW.write(objBR.readLine());
		objBW.newLine();
	}
	objBR.close();
	objBW.close();
	response.sendRedirect("addSrch.jsp");
}
%>
