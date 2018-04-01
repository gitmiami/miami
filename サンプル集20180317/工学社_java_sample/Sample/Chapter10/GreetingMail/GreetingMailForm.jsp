<%@ page contentType="text/html; charset=Shift_JIS" %>
<%
	String  picturepass;
	picturepass = request.getParameter("picture_hidden");
%>
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>グリーティングメール作成画面</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>新規グリーティングメール作成</h1>
      <hr>
    </center>
    <form method="post" action="/GreetingMail/SentGreetingMailController">
      <table border="1" align="center">
        <tr>
          <td align="right" bgcolor="lightblue">宛先</td>
          <td><input type="text" name="to" size="36"/></td>
        </tr>
        <tr>
          <td align="right" bgcolor="lightblue">宛名</td>
          <td><input type="text" name="toname" size="36"/>様</td>
        </tr>
        <tr>
          <td align="center" bgcolor="lightblue" colspan=2>写真</td>
        </tr>
        <tr>
          <td align="center" colspan=2>
            <img type="image" name="picture_hidden" height="180" width="240" src="<%= picturepass %>" value="<%= picturepass %>">
            <input type="hidden" name="picture_hidden" value="<%= picturepass %>">
          </td>
        </tr>
        <tr>
          <td align="center" bgcolor="lightblue" colspan=2>本文</td>
        </tr>
        <tr>
          <td align="center" colspan=2><textarea name="mailtext" rows="5" cols="34"></textarea></td>
        </tr>
        <tr>
          <td align="right" bgcolor="lightblue">送信者名</td>　
          <td><input type="text" name="sender" size="36"/></td>
        </tr>
        <tr>
          <td align="center" colspan=2>
            <input type="submit" value="送信"/>
          </td>
        </tr>
      </table>
    </form>	
  </body>
</html>