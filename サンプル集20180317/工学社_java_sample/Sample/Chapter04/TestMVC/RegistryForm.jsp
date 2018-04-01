<%@ page contentType="text/html; charset=Shift_JIS" %>
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\>
<html>
  <head>
    <title>ユーザ登録</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>ユーザ登録</h1>
    </center>
    <hr>
    <form method="post" action="/TestMVC/Login">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="DeepSkyBlue">ユーザ名：</th>
          <td>
            <input type="text" name="newuser" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="DeepSkyBlue">パスワード：</th>
          <td>
            <input type="password" name="newpass" size="15" maxlength="20" />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" name="submit" value="登録" />
          </td>
        </tr>
      </table>
    <br>
    <center>
      <a href="/TestMVC/Login">ログイン画面に戻る</a>
    </center>
  </body>
</html>