<%@ page language="java" contentType="text/html; charset=Shift_JIS" %>
<jsp:useBean id="sl" class="test_mysql.MenuListBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>�����\</title>
  </head>
  <body>
    <div align="center">
      <hr>
      <h3>�����\<h3>
      <hr>
      <br>
      <table border='1'>
        <tr>
          <th>���j��</th><th>�Ηj��</th><th>���j��</th><th>�ؗj��</th><th>���j��</th>
          <th style="color:blue">�y�j��</th><th style="color:red">���j��</th>
        </tr>
        <tr>
<%
	for(int i=0; i<sl.getMenuList().length; i++){
%>	
            
          <form method="post" action="MenuController">
            <td>
              <input type="text" size="15" maxlength="10" name="menu" value="<%= sl.getMenuList()[i].getMenu() %>">
              <input type="submit" value="�ύX">
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