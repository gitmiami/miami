<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<html>
  <head>
    <title>���O�C���F��</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>���O�C���F��</h1>
    </center>
    <hr>
    <form method="post" action="LoginController">
      <input type="hidden" name="function" value="login">
      <table border="1" align="center">
        <tr>
        <th align="right" bgcolor="#DEE8F8">���[�U�[���F</th>
          <td>
            <input type="text" name="username" size="20" />
          </td>
        </tr>
        <tr>
        <th align="right" bgcolor="#DEE8F8">�p�X���[�h�F</th>
          <td>
            <input type="password" name="password" size="15" />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center">
            <input type="submit" name="submit" value="���O�C��" />
          </td>
        </tr>
      </table>
    </form>
    <br>
    <center>
      <a href="RegistryForm.jsp">�V�K���[�U�o�^</a>
    </center>
  </body>
</html>
