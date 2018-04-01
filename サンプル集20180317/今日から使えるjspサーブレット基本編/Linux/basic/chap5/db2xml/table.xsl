<?xml version="1.0" encoding="EUC-JP" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="EUC-JP" />
	<xsl:template match="/">
	<html>
	<head>
	<title>�ǡ����١�����з��</title>
	</head>
	<body>
	<table border="1">
	<tr>
		<xsl:for-each select="output/record[position()=1]/*">
			<th><xsl:value-of select="local-name()" /></th>
		</xsl:for-each>
	</tr>
	<xsl:for-each select="output/record">
		<tr>
			<xsl:for-each select="*">
				<td><xsl:value-of select="." /></td>
			</xsl:for-each>
		</tr>
	</xsl:for-each>
	</table>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>
