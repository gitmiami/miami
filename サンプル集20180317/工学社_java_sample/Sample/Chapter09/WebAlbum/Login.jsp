<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
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
    <form method="post" action="LoginController">
      <input type="hidden" name="function" value="login">
      <table border="1" align="center">
        <tr>
        <th align="right" bgcolor="#DEE8F8">ユーザー名：</th>
          <td>
            <input type="text" name="username" size="20" />
          </td>
        </tr>
        <tr>
        <th align="right" bgcolor="#DEE8F8">パスワード：</th>
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
    </form>
    <br>
    <center>
      <a href="RegistryForm.jsp">新規ユーザ登録</a>
    </center>
  </body>
</html>
