<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="GreetingMailBeans" class="gm.GreetingMailBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>�O���[�e�B���O���[�����M�������</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>���[�����M����</h1>
      <hr>
    </center>
    <table border="1" align="center">
      <tr>
        <td align="right" bgcolor="lightblue">����</td>
        <td><%=GreetingMailBeans.getTo()%></td>
      </tr>
      <tr>
        <td align="right" bgcolor="lightblue">����</td>
        <td><%=GreetingMailBeans.getToname()%>�l</td>
      </tr>
      <tr>
        <td bgcolor="lightblue" colspan=2>�ʐ^</td>
      </tr>
      <tr>
        <td align="center" colspan=2>
        <img type="image" name="picture_hidden" height="200" width="200" src="<%=GreetingMailBeans.getImg()%>" value="<%=GreetingMailBeans.getImg()%>">
        </td>
      </tr>
      <tr>
        <td align="center" bgcolor="lightblue" colspan=2>�{��</td>
      </tr>
      <tr>
        <td align="left" colspan=2><%=GreetingMailBeans.getMailtext()%></td>
      </tr>
      <tr>
        <td align="right" bgcolor="lightblue">���M��</td>�@
        <td><%=GreetingMailBeans.getSender()%></td>
      </tr>		
    </table><br>
    <center>
      <a href="GreetingMail.jsp">�O���[�e�B���O���[��������ʂ֖߂�</a>
    </center>
  </body>
</html>