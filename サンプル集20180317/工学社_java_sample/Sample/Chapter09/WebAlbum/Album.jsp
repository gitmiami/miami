<%@ page contentType="text/html; charset=Shift_JIS" %>
<jsp:useBean id="alist" class="web_album.AlbumListBeans" scope="session" />

<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>Web�A���o��</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h1>�悤����<font style="color:red"><%= session.getAttribute("s_id") %></font>����</h1>
      <hr>
        <a href="/WebAlbum/LoginController">���O�A�E�g</a><br><br>
        <a href="/WebAlbum/AddMemory.jsp">�ʐ^��ǉ�����</a><br><br>
      <form method="post" action="AlbumController">
        <input type="hidden" name="param" value="focus">
          <table border="1">
	  
<%
    int counter = 1;

	for(int i=0; i<alist.getTitle().size(); i++){
  
    		if( ((counter%=3)==1) ){
%>
            <tr>
<%
	}
%>
              <td align="center">
                <input type="submit" name="selected" value="<%= alist.getTitle().get(i) %>">
              </td>
<%
		if( ((counter%=3)==0) ){
%>
            </tr>
<%
		}
	
	counter++;
	
	}

%>
          </table>
      </form>
    </div>
  </body>
</html>

