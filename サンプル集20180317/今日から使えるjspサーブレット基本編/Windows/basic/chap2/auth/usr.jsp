<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
if(!request.isUserInRole("user")){
	out.println("<span style='color:Red;'>");
	out.println("�{��ʂ̎Q�Ƃ͔F�߂��Ă��܂���</span>");
	out.close();
}
%>
<html>
<head>
<title>���[�U�p���j���[</title>
</head>
<body>
<h1>���[�U�p���j���[</h1>
</body>
</html>