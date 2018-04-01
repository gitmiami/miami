<%@ page contentType="text/html; charset=Shift_JIS" %>
<jsp:useBean id="pl" class="gm.PictureListBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>写真一覧表示画面</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>四季の写真一覧</h1>
      <hr><br>
    </center>
    <table border="0" align="center">		
<%
  	for(int i = 0; i<pl.getPictureList().length; i++){		
		int j = i;
		if( ( j %= 4 ) == 0 ){
%>
      <tr>		
<%
		}
%>
        <td align="center">
          <h4><%=pl.getPictureList()[i].getPictureName() %></h4>
          <form method="post" action="GreetingMailForm.jsp">
            <input type="image" name="pic_name" height="140" width="140" src="<%=pl.getPictureList()[i].getPicturePass() %>">
            <input type="hidden" name="picture_hidden" value="<%=pl.getPictureList()[i].getPicturePass() %>">
          </form>
        </td>
<%
		if(( j %=4 ) == 3 ){
%>
      </tr>
<%
			}
		}
%>
    </table>
  </body>
</html>