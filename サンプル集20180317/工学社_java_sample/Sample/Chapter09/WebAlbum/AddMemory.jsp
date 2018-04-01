<%@ page contentType="text/html; charset=Shift_JIS" %>

<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>写真追加画面</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h1>写真の追加</h1>
      <hr>
        <a href="Album.jsp">アルバムに戻る</a><br>
	<form method="post" enctype="multipart/form-data" action="AddMemory">
	  title：&nbsp<input type="text" name="m_title" maxlength="10"><br><br>
	  comment：&nbsp<input type="text" name="m_comment" size="40" maxlength="50"><br><br>
	  photo：&nbsp<input type="file" name="m_image"><br><br>
	  <input type="submit" value="アルバムに追加する">
	</form>
    </div>
  </body>
</html>