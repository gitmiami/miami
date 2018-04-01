<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<%@ page import="dictionary.*" %>
<jsp:useBean id="setWordList" scope="request" class="dictionary.WordListBeans" />
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
    <title>新規語句登録</title>
  </head>
  <body>
    <h1>新規語句登録</h1>
    <form method="post" action="WordRegistryController">
      <dl>
        <dt>語句</dt>
        <dd><input type="text" name="WORD" value="" size="30" maxlength="100"></dd>
        <dt>読み仮名</dt>
        <dd><input type="text" name="KANA" value="" size="30" maxlength="100"></dd>
        <dt>意味</dt>
        <dd><input type="text" name="MEANING" value="" size="30" maxlength="100"></dd>
      </dl>
      <ul>
        <li><input type="submit" name="REGIST" value="登録"></li>
      </ul>
    </form>
  </body>
</html>