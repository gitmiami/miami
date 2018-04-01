<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<%@ page import="dictionary.*" %>
<jsp:useBean id="setWordList" class="dictionary.WordListBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
    <title>���폜</title>
  </head>
  <body>
    <h1>���폜</h1>
    <form method="post" action="WordDeleteController">
      <table border=1>
        <tr>
	      <th>�I��</th>
          <th>���</th>
        </tr>
<%
	for (int i=0; i<setWordList.getWordlistdata().size(); i++) {
		DictionaryBeans dbDictionary = (DictionaryBeans)setWordList.getWordlistdata().get(i);
%>
        <tr>
          <td>
            <input type="radio" name="wordid" value="<%=dbDictionary.getId_()%>">
          </td>
          <td>
            <%=dbDictionary.getWord_()%>
          </td>
        </tr>
<%
	}
%>
      </table>
      <ul>
        <li><input type="submit" name="DELETE" value="�폜"></li>
      </ul>
    </form>
  </body>
</html>