<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*" %>
<html>
<head>
<title>�`����ǂ�</title>
</head>
<body>
<h1>�ݐȃ{�[�h</h1>
<form method="POST" action="/advanced/servlet/board.brd_disp_up?uid=<%=request.getAttribute("uid")%>">
<dl>
<%
int cnt=1;
ResultSet rs=(ResultSet)request.getAttribute("msg");
while(rs.next()){
	String strTmp=EncodeUtil.formatDate("yyyy�NMM��dd��",rs.getDate("uTime")) + EncodeUtil.formatDate(" HH:mm:ss",rs.getTime("uTime"));
%>
	<dt><img src="/advanced/chap3/board/tape.gif" width="20" height="15">
		<span style="font-size:12pt;font-weight:bold;line-height:120%">
			<%=EncodeUtil.htmlEncode(rs.getString("sec"))%>����
			<%=EncodeUtil.htmlEncode(rs.getString("psn"))%>�l
		<%
		switch(rs.getInt("dSec")){
			case 1 : out.println("���d�b�������Ă����܂���");    break;
			case 2 : out.println("���܂�Ԃ��d�b�����������Ƃ̂��Ƃł�");break;
			case 3 : out.println("�������łɂȂ�܂���");          break;
			case 4 : out.println("���`��������܂�");            break;
		}
		%></span>
	</dt>
	<dd>
		<ol>
			<li>�����d�b�ԍ��F<%=EncodeUtil.htmlEncode(rs.getString("tel"))%></li>
			<li>�`�����e�F
				<%=EncodeUtil.htmlEncode(rs.getString("comment")).replaceAll(System.getProperty("line.separator"),"<br />")%></li>
		</ol>
		�m<%=strTmp%> / <%=EncodeUtil.htmlEncode(rs.getString("unam"))%>�n<br />
		���̓`����
		<input type="radio" name="D<%=cnt%>" value="<%=rs.getString("id")%>" />�폜
		<input type="radio" name="D<%=cnt%>" value="" checked />�c��
	</dd>
	<p />
<%
	cnt++;
}
%>
</dl>
<input type="hidden" name="cnt" value="<%=cnt-1%>" />
<input type="submit" name="sbm" value="�ꗗ�֖߂�" />
<input type="reset" value="���" />
</form>
</body>
</html>
