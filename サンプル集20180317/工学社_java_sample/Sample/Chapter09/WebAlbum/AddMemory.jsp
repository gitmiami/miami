<%@ page contentType="text/html; charset=Shift_JIS" %>

<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>�ʐ^�ǉ����</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h1>�ʐ^�̒ǉ�</h1>
      <hr>
        <a href="Album.jsp">�A���o���ɖ߂�</a><br>
	<form method="post" enctype="multipart/form-data" action="AddMemory">
	  title�F&nbsp<input type="text" name="m_title" maxlength="10"><br><br>
	  comment�F&nbsp<input type="text" name="m_comment" size="40" maxlength="50"><br><br>
	  photo�F&nbsp<input type="file" name="m_image"><br><br>
	  <input type="submit" value="�A���o���ɒǉ�����">
	</form>
    </div>
  </body>
</html>