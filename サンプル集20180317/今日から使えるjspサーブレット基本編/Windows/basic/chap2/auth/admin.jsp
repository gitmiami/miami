<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
if(!request.isUserInRole("administrator")){
	out.println("<span style='color:Red;'>");
	out.println("�{��ʂ̎Q�Ƃ͔F�߂��Ă��܂���</span>");
	out.close();
}
%>
<html>
<head>
<title>�V�X�e���Ǘ��Ґ�p���j���[</title>
</head>
<body>
<h1>�V�X�e���Ǘ��Ґ�p���j���[</h1>
</body>
</html>
