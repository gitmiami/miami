<%@ page contentType="text/html;charset=Shift_JIS"%>
<%@ page import="noticeboard.*" %>
<jsp:useBean id="setNoticeBoardList" scope="request" class="noticeboard.NoticeBoardListBeans" />
<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">
<html>
  <head>
    <title>�f����</title>  
  </head>
  <body>
    <h1 align="center">�f����</h1>
    <form method="post" action="NoticeBoardInfoController">
      <table align="center">
        <tr>
          <td>���O</td>
          <td><input type="text" name="name" maxLength="10" size="40"></td>
        </tr>
        <tr>
          <td>�薼</td>
          <td><input type="text" name="title" maxLength="50" size="40"></td>
        </tr>
        <tr>
          <td>�{��</td>
          <td><textarea name="text" cols="40" rows="5"></textarea></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="���M"></td>
        </tr>
      </table>
    </form>
<%
	for (int i=0; i<setNoticeBoardList.getNoticeboardlistdata().size(); i++) {
  		NoticeBoardInfoBeans nbiNoticeBoardInfo = (NoticeBoardInfoBeans)setNoticeBoardList.getNoticeboardlistdata().get(i);
%>
	<hr>
    <p><%=nbiNoticeBoardInfo.getId()%>�D<%=nbiNoticeBoardInfo.getTitle()%></p>
    <p><%=nbiNoticeBoardInfo.getText()%></P>
    <p>���O�F<%=nbiNoticeBoardInfo.getName()%>�@���e���F<%=nbiNoticeBoardInfo.getNoticeDate()%></p>   
<%
	}
%>
  </body>
</html>