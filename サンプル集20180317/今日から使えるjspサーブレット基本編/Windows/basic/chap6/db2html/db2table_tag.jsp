<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>�f�[�^�x�[�X�̃e�[�u����</title>
<body>
<yam:DataGrid
	jdbcDriver="org.gjt.mm.mysql.Driver"
	connectionString = "jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS"
	sqlStatement = "SELECT * FROM mng_usr"
	headerText="���[�UID,�p�X���[�h,���[�U��,����"
	headerStyle="background-color:#aaFFFF;font-weight:bold;"
	itemStyle="background-color:#FFFFcc;font-weight:light;" />
</body>
</html>
