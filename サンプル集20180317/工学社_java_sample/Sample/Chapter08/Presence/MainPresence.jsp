<%@ page language="java" contentType="text/html;charset=Shift_JIS" %>
<jsp:useBean id="user_info" class="presence.LoginBeans" scope="session" />
<jsp:useBean id="prelist" class="presence.PresenceListBeans" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>�o���m�F</title>
  </head>
  <body>
    <table border=3 width=100%>
      <tr>
        <td width=100% align=center>
          <font size="+1"><b>�o���\</b></font>
        </td>
      </tr>
    </table>
      <br>
      <br>
    <table border=1 cellspacing=0 cellpadding=1 align=center>
      <tr>
        <th>�X�P�W���[����</th>
<%
	prelist.preViewName();
	for(int i=0; i<prelist.getNameList().size(); i++){
%>
        <th><%= prelist.getNameList().get(i) %></th>
<%
	}
%>
      </tr>
<%
	prelist.preViewSchedule();
	for(int j=0; j<prelist.getScheduleIdList().size(); j++){
%>
      <tr>
        <td align=center>
         <a href="/Presence/PresenceController?ID=<%= prelist.getScheduleIdList().get(j) %>">
            <%= prelist.getScheduleList().get(j) %>
         </a>
        </td>
<%
		prelist.setCounter(j);
		prelist.preViewPresence();
		for(int k=0; k<prelist.getPresenceList().size(); k++){
%>
        <td align=center><%= prelist.getPresenceList().get(k) %></td>
<%
		}
		prelist.getPresenceList().clear();
%>
      </tr>
<%
	}
%>
    </table>
      <br>
      <center>
        <form method=get action="/Presence/PresenceController">
          <input type=submit value="�X�P�W���[���o�^">
        </form>
        <form method=get action="/Presence/LoginController">
          <input type=submit value="���O�A�E�g">
        </form>
      </center>
  </body>
</html>