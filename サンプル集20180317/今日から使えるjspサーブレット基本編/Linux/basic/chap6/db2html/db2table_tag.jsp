<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>�ǡ����١����Υơ��֥벽</title>
<body>
<yam:DataGrid
	jdbcDriver="org.gjt.mm.mysql.Driver"
	connectionString = "jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP"
	sqlStatement = "SELECT * FROM mng_usr"
	headerText="�桼��ID,�ѥ����,�桼��̾,��°"
	headerStyle="background-color:#aaFFFF;font-weight:bold;"
	itemStyle="background-color:#FFFFcc;font-weight:light;" />
</body>
</html>
