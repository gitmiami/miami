<%@ page contentType="text/html; charset=Shift_JIS"%>
<jsp:useBean id="user_info" class="mvc.LoginBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\>
<html>
  <head>
    <title>���O�C������</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>�悤�����C<jsp:getProperty name="user_info" property="username" />����D</h1>
      <hr>
      <br>���O�C�����܂����D<br><br>
      <a href="/TestMVC/Login">���O�A�E�g</a>
    </center>
  </body>
</html>