<%@ page contentType="text/html; charset=Shift_JIS" %>
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\>
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
    <form method="post" action="/TestMVC/Login">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="DeepSkyBlue">���[�U���F</th>
          <td>
            <input type="text" name="newuser" size="20" maxlength="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="DeepSkyBlue">�p�X���[�h�F</th>
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
    <br>
    <center>
      <a href="/TestMVC/Login">���O�C����ʂɖ߂�</a>
    </center>
  </body>
</html>