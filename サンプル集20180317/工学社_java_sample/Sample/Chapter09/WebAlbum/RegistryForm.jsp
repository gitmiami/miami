<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<html>
  <head>
    <title>���[�U�o�^</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>���[�U�o�^</h1>
    </center>
    <hr>
    <form method="post" action="LoginController">
      <input type="hidden" name="function" value="registryform">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="#00E8F8">���[�U�[���F</th>
          <td>
            <input type="text" name="newuser" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="#00E8F8">�p�X���[�h�F</th>
          <td>
            <input type="password" name="newpass" size="15" maxlength="20" />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" name="submit" value="�o�^" />
          </td>
        </tr>
      </table>
    </form>
    <br>
    <center>
      <a href="Login.jsp">���O�C����ʂɖ߂�</a>
    </center>
  </body>
</html>
