<%@ page contentType="text/html;charset=Shift_JIS" import="java.io.*" %>
<%@ include file="/bin/encode.jsp" %>
<html>
<head>
<title>�ȈՃ������i�������́j</title>
<base target="_parent" />
</head>
<body>
<form method="POST" action="save.jsp">
<%
String strTmp;
strTmp=application.getRealPath("chap2/memo/doc/" + strEncode(request.getParameter("doc")));
File objFle=new File(strTmp);
switch(strEncode(request.getParameter("proc")).charAt(0)){
	case '��' :
		if(objFle.exists()){
			out.print("<textarea name='memo' cols='80' rows='20'>");
			FileReader objFR=new FileReader(strTmp);
			BufferedReader objBR=new BufferedReader(objFR);
			while(objBR.ready()){
				out.println(objBR.readLine());
			}
			out.print("</textarea>");
			objBR.close();
		}else{
			out.close();
		}
		break;
	case '��' :
		if(objFle.exists()){
			objFle.delete();
		}
		out.println("<script language='JavaScript'>");
		out.println("parent.location.href='index.html';");
		out.println("</script>");
		break;
	case '�V' :
		strTmp=application.getRealPath("chap2/memo/doc/" + strEncode(request.getParameter("newDoc")));
		objFle=new File(strTmp);
		if(!objFle.exists()){
			objFle.createNewFile();
			out.print("<textarea name='memo' cols='80' rows='20'>");
			out.print("</textarea>");
		}else{
			out.println("<div style='color:#FF0000'>");
			out.println("�I�I�x���I�I�����̃t�@�C�������ɑ��݂��܂�</div>");
			out.close();
		}
		break;
}
%>
<br />
<input type="hidden" name="doc" value="<%=strTmp %>" />
<input type="submit" value="�ۑ�" />
</form>
</body>
</html>
