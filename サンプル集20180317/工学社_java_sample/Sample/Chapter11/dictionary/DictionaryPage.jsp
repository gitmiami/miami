<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<%@ page import="dictionary.*" %>
<jsp:useBean id="setWordList" class="dictionary.WordListBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
    <title>����</title>
  </head>
  <body>
    <h1>����</h1>
    <ul>
      <li><a href="RegistryForm.jsp">�o�^</a></li>
      <li><a href="DeleteViewInitController">�폜</a></li>
    </ul>
    <table border=1>
      <tr>
        <th>���</th>
        <th>�ǂ݉���</th>
        <th>�Ӗ�</th>
      </tr>
<%
	for (int i=0; i<setWordList.getWordlistdata().size(); i++) {
		DictionaryBeans dbDictionary = (DictionaryBeans)setWordList.getWordlistdata().get(i);
%>
      <tr>
        <td>
          <%=dbDictionary.getWord_()%>
        </td>
        <td>
          <%=dbDictionary.getKana_()%>
        </td>
        <td>
          <%=dbDictionary.getMeaning_()%>
         </td>
      </tr>
<%
	}
%>
    </table>
  </body>
</html>