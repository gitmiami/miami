<%@ page contentType="text/html;charset=EUC-JP"
         import="beanYama.*,java.sql.*" %>
<html>
<head>
<title>�������ɤ�</title>
</head>
<body>
<h1>���ʥܡ���</h1>
<form method="POST" action="/advanced/servlet/board.brd_disp_up?uid=<%=request.getAttribute("uid")%>">
<dl>
<%
int cnt=1;
ResultSet rs=(ResultSet)request.getAttribute("msg");
while(rs.next()){
	String strTmp=EncodeUtil.formatDate("yyyyǯMM��dd��",rs.getDate("uTime")) + EncodeUtil.formatDate(" HH:mm:ss",rs.getTime("uTime"));
%>
	<dt><img src="/advanced/chap3/board/tape.gif" width="20" height="15">
		<span style="font-size:12pt;font-weight:bold;line-height:120%">
			<%=EncodeUtil.htmlEncode(rs.getString("sec"))%>����
			<%=EncodeUtil.htmlEncode(rs.getString("psn"))%>��
		<%
		switch(rs.getInt("dSec")){
			case 1 : out.println("�����ä򤫤��Ƥ����ޤ���");    break;
			case 2 : out.println("���ޤ��֤����ä򤯤������ȤΤ��ȤǤ�");break;
			case 3 : out.println("�������Ǥˤʤ�ޤ���");          break;
			case 4 : out.println("�������������ޤ�");            break;
		}
		%></span>
	</dt>
	<dd>
		<ol>
			<li>����������ֹ桧<%=EncodeUtil.htmlEncode(rs.getString("tel"))%></li>
			<li>�������ơ�
				<%=EncodeUtil.htmlEncode(rs.getString("comment")).replaceAll(System.getProperty("line.separator"),"<br />")%></li>
		</ol>
		��<%=strTmp%> / <%=EncodeUtil.htmlEncode(rs.getString("unam"))%>��<br />
		����������
		<input type="radio" name="D<%=cnt%>" value="<%=rs.getString("id")%>" />���
		<input type="radio" name="D<%=cnt%>" value="" checked />�Ĥ�
	</dd>
	<p />
<%
	cnt++;
}
%>
</dl>
<input type="hidden" name="cnt" value="<%=cnt-1%>" />
<input type="submit" name="sbm" value="���������" />
<input type="reset" value="���" />
</form>
</body>
</html>
