<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="album" class="web_album.AlbumBeans" scope="request" />
<jsp:useBean id="fm" class="web_album.AlbumListBeans" scope="request" />

<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>フォーカス画面</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h1>「<font color="red"><%= album.getSphoto() %></font>」</h1>
      <hr>
      <a href="Album.jsp">アルバム一覧に戻る</a>
      <br><br>
		
<%
	for(int i=0; i<fm.getTitle().size(); i++){
%>
      <table border="1">
        <form method="post" action="AlbumController">
        <tr>
          <td>
            <input type="text" name="altered_title" value="<%= fm.getTitle().get(i) %>" maxlength="10"><br>
          </td>
          <td>
            <input type="submit" value="変更する">
            <input type="hidden" name="sd_title" value="<%= fm.getTitle().get(i) %>">
            <input type="hidden" name="param" value="title">
          </td>
        </tr>
        </form>
        <tr>
          <td colspan="2">
            <img src="<%= album.getDIR() %>\<%= fm.getImgsrc().get(i) %>" width="350" height="250"</td>
          </td>
        </tr>
          <form method="post" action="AlbumController">
        <tr>
          <td>
            <input type="text" name="altered_comment" value="<%= fm.getComment().get(i) %>" size="40" maxlength="50">
          </td>
          <td>
            <input type="submit" value="変更する">
            <input type="hidden" name="sd_comment" value="<%= fm.getComment().get(i) %>">
            <input type="hidden" name="param" value="comment">
          </td>
        </tr>
      </form>
      </table>

      <form method="post" action="AlbumController">
	    <input type="submit" value="アルバムから削除する">
	    <input type="hidden" name="d_src" value="<%= fm.getImgsrc().get(i) %>">
	    <input type="hidden" name="param" value="forget">
      </form>
    </div>

<%
	}
%>

  </body>
</html>