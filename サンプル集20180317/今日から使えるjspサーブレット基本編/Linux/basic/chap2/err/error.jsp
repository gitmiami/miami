<%@ page contentType="text/html; charset=EUC-JP"
         import="java.io.*,java.util.*" isErrorPage="true" %>
<html>
<head>
<title>�����̤ˤ����ơ����顼��ȯ�����ޤ���</title>
</head>
<body>
<h1>���顼��ȯ�����ޤ���</h1>
<% application.log((new Date()).toString(),exception); %>
<p>���ߤβ��̤ˤ����ơ���̿Ū�ʥ��顼��ȯ�����ޤ�����<br />
���Ф餯�����Ƥ⥨�顼����������ʤ����ˤϡ��ܲ��̤Υ���ץ����ź�դξ塢�إ�ץǥ����ޤǤ�Ϣ��������</p>
<hr />
<table border="8">
<tr><td style="background:#ffffcc">
<pre>
<% exception.printStackTrace(new PrintWriter(out)); %>
</pre>
</td></tr>
</table>
<div align="right">
��<a href="mailto:XXX99999@XXX.XX.XX">XXX99999@XXX.XX.XX</a>��
</div>
</body>
</html>
