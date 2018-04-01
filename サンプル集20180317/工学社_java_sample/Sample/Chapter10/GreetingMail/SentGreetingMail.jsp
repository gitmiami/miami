<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="GreetingMailBeans" class="gm.GreetingMailBeans" scope="request" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>グリーティングメール送信完了画面</title>
  </head>
  <body>
    <center>
      <hr>
      <h1>メール送信完了</h1>
      <hr>
    </center>
    <table border="1" align="center">
      <tr>
        <td align="right" bgcolor="lightblue">宛先</td>
        <td><%=GreetingMailBeans.getTo()%></td>
      </tr>
      <tr>
        <td align="right" bgcolor="lightblue">宛名</td>
        <td><%=GreetingMailBeans.getToname()%>様</td>
      </tr>
      <tr>
        <td bgcolor="lightblue" colspan=2>写真</td>
      </tr>
      <tr>
        <td align="center" colspan=2>
        <img type="image" name="picture_hidden" height="200" width="200" src="<%=GreetingMailBeans.getImg()%>" value="<%=GreetingMailBeans.getImg()%>">
        </td>
      </tr>
      <tr>
        <td align="center" bgcolor="lightblue" colspan=2>本文</td>
      </tr>
      <tr>
        <td align="left" colspan=2><%=GreetingMailBeans.getMailtext()%></td>
      </tr>
      <tr>
        <td align="right" bgcolor="lightblue">送信元</td>　
        <td><%=GreetingMailBeans.getSender()%></td>
      </tr>		
    </table><br>
    <center>
      <a href="GreetingMail.jsp">グリーティングメール初期画面へ戻る</a>
    </center>
  </body>
</html>