<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
if(!request.isUserInRole("supervisor")){
	out.println("<span style='color:Red;'>");
	out.println("�{��ʂ̎Q�Ƃ͔F�߂��Ă��܂���</span>");
	out.close();
}
%>
<html>
<head>
<title>����Ǘ��җp���j���[</title>
</head>
<body>
<h1>����Ǘ��җp���j���[</h1>
</body>
</html>
