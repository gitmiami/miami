<%@ page contentType="text/html;charset=Shift_JIS" import="beanYama.*" %>
<jsp:useBean id="objBrd" class="board.brd_bean" scope="page" />
<html>
<head>
<title>�ݐȃ{�[�h</title>
</head>
<body>
<h1>�ݐЃ{�[�h</h1>
<form>
<%
boolean flag=false;
String strNam="";
Cookie[] aryCok=request.getCookies();
for(int i=0;i<aryCok.length;i++){
	if(aryCok[i].getName().equals("uid")){
		strNam=objBrd.getUserName(aryCok[i].getValue());
		flag=true;
		break;
	}
}
if(flag){ %>
	<b>���݂̃��[�U</b>�F<%=EncodeUtil.htmlEncode(strNam)%>����
	<input type="button" value="���O�A�E�g"
		onclick="location.href='/advanced/servlet/board.brd_cookie_del'" />
<% }else{ %>
	<input type="button" value="���O�I��"
		onclick="location.href='/advanced/servlet/board.brd_cookie'" />
<% } %>
</form>
<table border="1">
<tr bgcolor="#00ccff">
	<th>����</th><th colspan="2">�`��</th><th>��</th><th>�s����</th>
	<th>�߂莞��</th><th>����</th><th>�X�V����</th>
</tr>
<%
objBrd.getCurrentStatus();
for(int i=0;i<objBrd.getResultCount();i++){
	boolean cFlag=false;
	if(strNam.equals(objBrd.getUnam(i))){cFlag=true;}
%>
	<tr>
	<td width="75"
	<%
	if(objBrd.getPresent(i)==2 || objBrd.getPresent(i)==3){
		out.println("bgcolor='#ffcc99'>");
	}else{
		out.println("bgcolor='#ccffcc'>");
	}
	if(cFlag){out.println("<a href='/advanced/servlet/board.brd_check?uid=" + objBrd.getUid(i) + "'>");}
	out.println(EncodeUtil.htmlEncode(objBrd.getUnam(i)));
	if(cFlag){out.println("</a>");}
	%>
	</td>
	<td bgcolor="#ffff99" width="16">
	<%
	if(objBrd.isMsg(objBrd.getUid(i))){
		out.println("<a href='/advanced/servlet/board.brd_disp?uid=" + objBrd.getUid(i) + "'>");
		out.println("<img src='mg.gif' height='15' width='15' alt='�`����ǂ�' border='0'></a>");
	}else{
		out.println("<br />");
	}
	%>
	</td>
	<td bgcolor="#ffff99">
		<a href="/advanced/servlet/board.brd_memo?uid=<%=objBrd.getUid(i)%>">
		<img src="pen.gif" width="15" height="15" alt="������u��" border="0"></a>
	</td>
	<td bgcolor="#ffff99">
	<%
	switch(objBrd.getPresent(i)){
		case 1 : out.println("�ݐ�");  break;
		case 2 : out.println("��c��");break;
		case 3 : out.println("�O�o");  break;
	}
	%><br />
	</td>
	<td bgcolor="#ffff99">
	<%=EncodeUtil.htmlEncode(objBrd.getPlac(i))%><br />
	</td><td bgcolor="#ffff99">
	<%=EncodeUtil.htmlEncode(objBrd.getRTime(i))%><br />
	</td><td bgcolor="#ffff99">
	<%=EncodeUtil.htmlEncode(objBrd.getMemo(i))%><br />
	</td><td bgcolor="#ffff99">
	<%=EncodeUtil.htmlEncode(objBrd.getUTime(i))%><br />
	</td>
	</tr>
<% } %>
</table>
</form>
</body>
</html>
