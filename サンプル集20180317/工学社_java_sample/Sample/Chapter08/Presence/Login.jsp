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
    <form method="post" action="/Presence/LoginController">
      <table border="1" align="center">
        <tr>
          <th align="right" bgcolor="LightCyan">���[�UID�F</th>
          <td>
            <input type="text" name="userID" size="20" />
          </td>
        </tr>
        <tr>
          <th align="right" bgcolor="LightCyan">�p�X���[�h�F</th>
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
  </body>
</html>