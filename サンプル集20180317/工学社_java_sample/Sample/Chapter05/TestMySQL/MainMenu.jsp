<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<jsp:useBean id="sl" class="test_mysql.MenuListBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>Œ£—§•\</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h3>Œ£—§•\<h3>
      <hr>
      <br>
      <table border='1'>
        <tr>
          <th>ŒŽ—j“ú</th><th>‰Î—j“ú</th><th>…—j“ú</th><th>–Ø—j“ú</th><th>‹à—j“ú</th>
          <th style="color:blue">“y—j“ú</th><th style="color:red">“ú—j“ú</th>
        </tr>
        <tr>
<%
	for(int i=0; i<sl.getMenuList().length; i++){
%>	
            
          <form method="post" action="MenuController">
            <td>
              <input type="text" size="15" maxlength="10" name="menu" value="<%= sl.getMenuList()[i].getMenu() %>">
              <input type="submit" value="•ÏX">
              <input type="hidden" name="day" value="<%= sl.getMenuList()[i].getDay() %>">  
            </td>
          </form>
<%
	}
%>
        </tr>
      </table>
    </div>
  </body>
</html>