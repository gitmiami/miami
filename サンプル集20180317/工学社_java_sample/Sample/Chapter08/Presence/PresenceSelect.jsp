<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="prebean" class="presence.PresenceBeans" />
<jsp:useBean id="user_info" class="presence.LoginBeans" scope="session" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<%!
	int scheduleId;
	String schedule;
%>
<%
	scheduleId = Integer.parseInt(new String(request.getParameter("ID")));
	prebean.setScheduleId(scheduleId);
	prebean.preSelectView();
	schedule = prebean.getSchedule();
%>
<html>
  <head>
    <title>出欠の確認</title>
  </head>
  <body>
    <table border=3 width=100%>
      <tr>
        <td width=100% align=center>
          <font size="+1"><b><%= user_info.getName() %>さんの出欠選択</b></font>
        </td>
      </tr>
    </table>
    <br>
    <br>
    <form method=post action="/Presence/PresenceController">
      <table border=1 cellspacing=0 cellpadding=1 align=center>
        <tr>
          <td><%= schedule %></td>
          <td>
            出席<input type=radio value=出席 name=PRE>
            欠席<input type=radio value=欠席 name=PRE>
            不明<input type=radio value=不明 name=PRE>
          </td>
        </tr>
      </table>
        <input type=hidden value=<%= scheduleId %> name=ID>
      <center>
        <input type=submit value=登録>
        <input type=reset value=入力やり直し>
      </center>
    </form>
  </body>
</html>