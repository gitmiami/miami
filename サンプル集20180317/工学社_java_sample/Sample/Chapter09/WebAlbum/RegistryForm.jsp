<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
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
    <form method="post" action="LoginController">
      <input type="hidden" name="function" value="registryform">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="#00E8F8">ユーザー名：</th>
          <td>
            <input type="text" name="newuser" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="#00E8F8">パスワード：</th>
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
    </form>
    <br>
    <center>
      <a href="Login.jsp">ログイン画面に戻る</a>
    </center>
  </body>
</html>
