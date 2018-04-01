<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="MailBeans" class="mail.MailBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>メール送信完了画面</title>
  </head>
  <body>
    <hr>
    <center>
      <h1>メール送信完了</h1>
    </center>
    <hr><br>
    <table border="1" align="center">
      <tr>
        <th align="right" bgcolor="lightblue">宛先</th>
        <td><%=MailBeans.getTo()%></td>
      </tr>
      <tr>
        <th align="right" bgcolor="lightblue">CC</th>
        <td><%=MailBeans.getCC()%></td>
      </tr>					
      <tr>
        <th align="right" bgcolor="lightblue">BCC</th>
        <td><%=MailBeans.getBCC()%></td>
      </tr>
      <tr>
        <th align="right" bgcolor="lightblue">件名</th>
        <td><%=MailBeans.getSubject()%></td>
      </tr>					
      <tr>
        <th align="center" bgcolor="lightblue" colspan=2>本文</th>
      </tr>
      <tr>
        <td colspan="2"><%=MailBeans.getMailtext()%></td>
      </tr>
    </table><br>
    <center>
      <a href="/TestJavaMail/MailForm.jsp">メール送信画面に戻る</a>
    </center>
  </body>
</html>
