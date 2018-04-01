<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="4.0" encoding="Shift_JIS" />
	<xsl:template match="/">
		<html>
		<head>
		<title><xsl:text>蔵書リスト</xsl:text></title>
		</head>
		<h1><xsl:text>蔵書リスト</xsl:text></h1>
		<table border="1">
		<tr>
			<th>No.</th>
			<th>ISBNコード</th>
			<th>書籍</th>
			<th>出版社</th>
			<th>価格</th>
			<th>発刊日</th>
		</tr>
		<xsl:apply-templates select="books" />
		</table>
		</html>
	</xsl:template>
	<xsl:template match="books">
		<xsl:for-each select="book">
			<xsl:sort select="date" data-type="text" order="descending" />
			<xsl:sort select="price" data-type="number" order="ascending" />
			<tr>
				<td nowrap="nowrap">
					<xsl:number value="position()" format="1" />
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="@isbn" />
				</td>
				<td nowrap="nowrap">
					<xsl:element name="a">
						<xsl:attribute name="href">
							<xsl:value-of select="url" />
						</xsl:attribute>
						<xsl:value-of select="name" />
					</xsl:element>
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="publish" />
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="format-number(price,'0,000')" />
				</td>
				<td nowrap="nowrap">
					<xsl:value-of select="published" />
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
