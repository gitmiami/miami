<%@ page contentType="text/html; charset=Shift_JIS"%>
<jsp:useBean id="user_info" class="mvc.LoginBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\>
<html>
  <head>
    <title>ログイン成功</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>ようこそ，<jsp:getProperty name="user_info" property="username" />さん．</h1>
      <hr>
      <br>ログインしました．<br><br>
      <a href="/TestMVC/Login">ログアウト</a>
    </center>
  </body>
</html>