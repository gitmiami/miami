<%@ page contentType="text/html;charset=Shift_JIS"
         import="java.io.*,java.util.*,org.apache.commons.fileupload.*" %>
<html>
<head>
<title>�A�b�v���[�h����</title>
</head>
<body>
<h1>�A�b�v���[�h����</h1>
<hr />
<table border="1">
<tr>
<th>�t�@�C����</th><th>�T�C�Y</th><th>���</th>
<%
FileUpload objFul=new FileUpload();
objFul.setSizeMax(-1);
objFul.setSizeThreshold(1024);
objFul.setRepositoryPath(application.getRealPath("/chap5/common"));
List objLst=objFul.parseRequest(request);
Iterator objItr=objLst.iterator();
while(objItr.hasNext()){
	FileItem objFI=(FileItem)objItr.next();
	if(!objFI.isFormField()){
		String strNam=objFI.getName();
		if(strNam==null || strNam.equals("")){continue;}
		strNam=strNam.substring(strNam.lastIndexOf(File.separator)+1);
		long   strSiz=(long)Math.ceil(objFI.getSize()/1024);
		String strMim=objFI.getContentType();
		File   objFl =objFI.getStoreLocation();
		File   objFl2=new File(application.getRealPath("/chap5/common/doc/" + strNam));
		if(objFl.exists()){objFl.renameTo(objFl2);}
%>
	<tr>
		<td><%=strNam%></td>
		<td align="right"><%=strSiz%>KB</td>
		<td><%=strMim%></td>
	</tr>
<%
	}
}
%>
</table>
</body>
</html>
