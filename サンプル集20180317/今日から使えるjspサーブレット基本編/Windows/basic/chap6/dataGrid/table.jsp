<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>File2Table�^�O�̃T���v��</title>
</head>
<body>
<yam:File2Table path="chap2/address/address.txt"
	header="���O,�Z��,�d�b�ԍ�,E-Mail" headerColor="#EEDDFF">
<tr bgcolor="#CCFFDD">
	<td><yam:TableCell index="0" /></td>
	<td><yam:TableCell index="1" /></td>
	<td><yam:TableCell index="2" /></td>
	<td><yam:TableCell index="3" /></td>
</tr>
</yam:File2Table>
</body>
</html>
