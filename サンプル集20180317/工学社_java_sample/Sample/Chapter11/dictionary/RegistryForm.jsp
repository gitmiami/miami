<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<%@ page import="dictionary.*" %>
<jsp:useBean id="setWordList" scope="request" class="dictionary.WordListBeans" />
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
    <title>�V�K���o�^</title>
  </head>
  <body>
    <h1>�V�K���o�^</h1>
    <form method="post" action="WordRegistryController">
      <dl>
        <dt>���</dt>
        <dd><input type="text" name="WORD" value="" size="30" maxlength="100"></dd>
        <dt>�ǂ݉���</dt>
        <dd><input type="text" name="KANA" value="" size="30" maxlength="100"></dd>
        <dt>�Ӗ�</dt>
        <dd><input type="text" name="MEANING" value="" size="30" maxlength="100"></dd>
      </dl>
      <ul>
        <li><input type="submit" name="REGIST" value="�o�^"></li>
      </ul>
    </form>
  </body>
</html>