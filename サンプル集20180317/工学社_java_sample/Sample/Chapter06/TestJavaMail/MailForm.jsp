<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>新規メール作成画面</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>新規メール作成</h1>
    </center>
    <hr><br/>
    <table border="1" align="center">
      <form method="post" action="/TestJavaMail/SentMailController">
        <tr>
          <th align="right" bgcolor="lightblue">宛先</th>
          <td><input type="text" name="to" size="52" /></td>
        </tr>
        <tr>
          <th align="right" bgcolor="lightblue">CC</th>
          <td><input type="text" name="cc" size="52" /></td>
        </tr>
        <tr>
          <th align="right" bgcolor="lightblue">BCC</th>
          <td><input type="text" name="bcc" size="52" /></td>
        </tr>
        <tr>
          <th align="right" bgcolor="lightblue">件名</th>
          <td><input type="text" name="subject" size="52" /></td>
        </tr>
        <tr>
          <th align="center" bgcolor="lightblue" colspan=2>本文</th>
        </tr>
        <tr>
          <td colspan="2"><textarea name="mailtext" rows="10" cols="43"></textarea></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" value="送信"/></td>
        </tr>
      </form>
    </table>
  </body>
</html>