<?xml version="1.0" encoding="EUC-JP" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="4.0" encoding="EUC-JP" />
	<xsl:template match="/">
		<html>
		<head>
		<title><xsl:text>蔵書リスト</xsl:text></title>
		</head>
		<h1><xsl:text>蔵書リスト</xsl:text></h1>
		<ol>
		<xsl:apply-templates select="books" />
		</ol>
		</html>
	</xsl:template>
	<xsl:template match="books">
		<xsl:for-each select="book">
			<xsl:sort select="published" data-type="text" order="descending" />
			<xsl:sort select="price" data-type="number" order="ascending" />
				<li>
					<xsl:element name="a">
						<xsl:attribute name="href">
							<xsl:value-of select="url" />
						</xsl:attribute>
						<xsl:value-of select="name" />
					</xsl:element>
				</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
