<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*" %>
<html>
<head>
<title>伝言を読む</title>
</head>
<body>
<h1>在席ボード</h1>
<form method="POST" action="/advanced/servlet/board.brd_disp_up?uid=<%=request.getAttribute("uid")%>">
<dl>
<%
int cnt=1;
ResultSet rs=(ResultSet)request.getAttribute("msg");
while(rs.next()){
	String strTmp=EncodeUtil.formatDate("yyyy年MM月dd日",rs.getDate("uTime")) + EncodeUtil.formatDate(" HH:mm:ss",rs.getTime("uTime"));
%>
	<dt><img src="/advanced/chap3/board/tape.gif" width="20" height="15">
		<span style="font-size:12pt;font-weight:bold;line-height:120%">
			<%=EncodeUtil.htmlEncode(rs.getString("sec"))%>部の
			<%=EncodeUtil.htmlEncode(rs.getString("psn"))%>様
		<%
		switch(rs.getInt("dSec")){
			case 1 : out.println("が電話をかけてこられました");    break;
			case 2 : out.println("が折り返し電話をくださいとのことです");break;
			case 3 : out.println("がおいでになりました");          break;
			case 4 : out.println("より伝言があります");            break;
		}
		%></span>
	</dt>
	<dd>
		<ol>
			<li>相手先電話番号：<%=EncodeUtil.htmlEncode(rs.getString("tel"))%></li>
			<li>伝言内容：
				<%=EncodeUtil.htmlEncode(rs.getString("comment")).replaceAll(System.getProperty("line.separator"),"<br />")%></li>
		</ol>
		［<%=strTmp%> / <%=EncodeUtil.htmlEncode(rs.getString("unam"))%>］<br />
		この伝言を
		<input type="radio" name="D<%=cnt%>" value="<%=rs.getString("id")%>" />削除
		<input type="radio" name="D<%=cnt%>" value="" checked />残す
	</dd>
	<p />
<%
	cnt++;
}
%>
</dl>
<input type="hidden" name="cnt" value="<%=cnt-1%>" />
<input type="submit" name="sbm" value="一覧へ戻る" />
<input type="reset" value="取消" />
</form>
</body>
</html>
