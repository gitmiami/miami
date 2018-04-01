<%@ page contentType="text/html;charset=EUC-JP"
         import="java.io.*,java.text.*,java.sql.*" %>
<jsp:useBean id="objEc" class="ec.ec_bean" scope="page" />
<% if(request.getAttribute("sbm")==null){ %>
	<html>
	<head>
	<title>������</title>
	<script language="JavaScript" src="../../bin/CheckUtil.js"></script>
	<script language="JavaScript">
	<!--
	function chk(){
		strErr="";
		strErr+=requiredCheck(document.fm.nam.value,"̾��");
		strErr+=lengthCheck(document.fm.nam.value,15,"̾��");
		strErr+=requiredCheck(document.fm.zip.value,"͹���ֹ�");
		strErr+=regExCheck(document.fm.zip.value,"^[0-9]{3}-[0-9]{4}$","͹���ֹ�");
		strErr+=requiredCheck(document.fm.address.value,"����");
		strErr+=lengthCheck(document.fm.address.value,50,"����");
		strErr+=requiredCheck(document.fm.tel.value,"TEL");
		strErr+=HanCheck(document.fm.tel.value,"TEL");
		strErr+=lengthCheck(document.fm.tel.value,15,"TEL");
		if(strErr==""){
			return true;
		}else{
			window.alert(strErr);
			return false;
		}
	}
	//-->
	</script>
	</head>
	<body>
	<form method="POST" action="account.jsp" name="fm" onsubmit="return chk()">
	<input type="submit" name="sbm" value="����" />
	<table border="1">
	<tr bgcolor="#00ccff">
		<th>����̾</th><th>ñ��</th><th>�Ŀ�</th><th>����</th>
	</tr>
	<%
	int cnt=1;
	int sum=0;
	boolean flag=false;
	DecimalFormat objFmt=new DecimalFormat("###,###,##0 ��");
	ResultSet rs=objEc.getProduct();
	while(rs.next()){
		String strVal=(String)session.getAttribute(rs.getString("code"));
		if(strVal!=null && !strVal.equals("") && !strVal.equals("0")){
	%>
			<tr bgcolor="#ffff99">
			<td>
				<%=rs.getString("nam")%>
				<input type="hidden" name="code<%=cnt%>"
					value="<%=rs.getString("code")%>" />
				<input type="hidden" name="num<%=cnt%>" value="<%=strVal%>" />
			</td>
			<td align="right"><%=objFmt.format(rs.getInt("pric"))%></td>
			<td align="right"><%=strVal%>��</td>
			<td align="right">
				<%=objFmt.format(rs.getInt("pric") * Integer.parseInt(strVal))%>
			</td>
			</tr>
	<%
			sum+=rs.getInt("pric") * Integer.parseInt(strVal);
			cnt++;
		}
	}
	%>
	<input type="hidden" name="cnt" value="<%=cnt-1%>" />
	<tr>
		<th colspan="3" align="right" bgcolor="#00ccff">���</th>
		<td bgcolor="#ffff99" align="right"><%=objFmt.format(sum)%></td>
	</tr>
	</table>
	<hr />
	<table border="0">
		<tr>
			<th align="right">̾����</th>
			<td><input type="text" name="nam" size="15" maxlength="15"
				style="ime-mode:active;"/></td>
		</tr><tr>
			<th align="right">͹���ֹ桧</th>
			<td><input type="text" name="zip" size="10" maxlength="8"
				style="ime-mode:disabled;" /></td>
		</tr><tr>
			<th align="right">���ꡧ</th>
			<td><input type="text" name="address" size="60" maxlength="50"
				style="ime-mode:active;" /></td>
		</tr><tr>
			<th align="right">TEL��</th>
			<td><input type="text" name="tel" size="15" maxlength="15"
				style="ime-mode:disabled;" /></td>
		</tr>
	</table>
	</form>
<%
}else{
	int intId=objEc.setCustomer((String)request.getAttribute("nam"),(String)request.getAttribute("zip"),(String)request.getAttribute("address"),(String)request.getAttribute("tel"));
	for(int i=1;i<=Integer.parseInt(request.getParameter("cnt"));i++){
		objEc.setOrder((String)request.getAttribute("code" + i),(String)request.getAttribute("num" + i),intId);
	}
	session.invalidate();
%>
	<div align="center">���٤��꤬�Ȥ��������ޤ�����<br />
	�ޤ��Τ���Ź���Ԥ����Ƥ���ޤ���<br />
	<img src='thanks.gif' /></div>
<% } %>
</body>
</html>
