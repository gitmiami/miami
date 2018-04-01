<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="user_info" class="presence.LoginBeans" scope="session" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>スケジュール新規登録</title>
  </head>
  <body>
    <table border=3 width=100%>
      <tr>
        <td width=100% align=center>
          <font size="+1"><b>新規スケジュール登録</b></font>
        </td>
      </tr>
    </table>
      <br>
      <br>
      <form method=post action="/Presence/PresenceController">
        <table align=center>
          <tr>
            <td nowrap>スケジュール</td>
            <td>
              <input type=text name=SCHEDULE value="" size=30 maxlength=100>
            </td>
          </tr>
        </table>
        <center>
          <input type=submit name=REGIST value="登録する">
          <input type=RESET value="入力やり直し">
        </center>
      </form>
  </body>
</html>