<%@ page contentType="text/html; charset=Shift_JIS"
         import="java.io.*,java.util.*" isErrorPage="true" %>
<html>
<head>
<title>����ʂɂ����āA�G���[���������܂���</title>
</head>
<body>
<h1>�G���[���������܂���</h1>
<% application.log((new Date()).toString(),exception); %>
<p>���݂̉�ʂɂ����āA�v���I�ȃG���[���������܂����B<br />
���΂炭�����Ă��G���[�����P����Ȃ��ꍇ�ɂ́A�{��ʂ̃L���v�`����Y�t�̏�A�w���v�f�X�N�܂ł��A����������</p>
<hr />
<%=exception.toString() %><br />
<% exception.printStackTrace(new PrintWriter(out)); %><br />
<div align="right">
�m<a href="mailto:XXX99999@XXX.XX.XX">XXX99999@XXX.XX.XX</a>�n
</div>
</body>
</html>
