<%@ page contentType="text/html; charset=Shift_JIS" %>
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\>
<html>
  <head>
    <title>ログイン認証</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>ログイン認証</h1>
    </center>
    <hr>
    <form method="post" action="/TestMVC/Login">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="LightCyan">ユーザ名：</th>
          <td>
            <input type="text" name="username" size="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="LightCyan">パスワード：</th>
          <td>
            <input type="password" name="password" size="15" />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" name="submit" value="ログイン" />
          </td>
        </tr>
      </table>
    <br>
    <center>
      <a href="RegistryForm.jsp">新規ユーザ登録</a>
    </center>
  </body>
</html>
