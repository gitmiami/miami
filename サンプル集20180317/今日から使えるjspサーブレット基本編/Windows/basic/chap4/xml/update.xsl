<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="4.0" encoding="Shift_JIS" />
	<xsl:template match="/">
		<html>
		<head>
		<title><xsl:text>�������X�g�X�V</xsl:text></title>
		</head>
		<h1><xsl:text>�������X�g�X�V</xsl:text></h1>
		<form method="POST" action="/basic/servlet/xml.book_update">
		<input type="submit" value="�X�V" />
		<input type="reset" value="���" />
		<table border="1">
		<tr>
			<th>�����敪</th><th>ISBN</th><th>����</th><th>URL</th>
			<th>�o�Ŏ�</th><th>���i</th><th>������</th>
		</tr>
		<xsl:apply-templates select="books" />
		</table>
		</form>
		</html>
	</xsl:template>
	<xsl:template match="books">
		<xsl:for-each select="book">
			<xsl:sort select="@isbn" data-type="text" order="ascending" />
			<tr>
			<td>
				<select>
					<xsl:attribute name="name">mid<xsl:number value="position()" format="1" /></xsl:attribute>
					<option value="">�����Ȃ�</option>
					<option value="update">�X�V</option>
					<option value="delete">�폜</option>
				</select>
			</td>
			<td nowrap="nowrap">
				<xsl:value-of select="@isbn" />
				<input type="hidden">
					<xsl:attribute name="name">isbn<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="@isbn" /></xsl:attribute>
				</input>
			</td>
			<td>
				<input type="text" size="40">
					<xsl:attribute name="name">name<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="name" /></xsl:attribute>
				</input>
			</td><td>
				<input type="text" size="40">
					<xsl:attribute name="name">url<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="url" /></xsl:attribute>
				</input>
			</td><td>
				<input type="text" size="15">
					<xsl:attribute name="name">publish<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="publish" /></xsl:attribute>
				</input>
			</td><td>
				<input type="text" size="5">
					<xsl:attribute name="name">price<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="price" /></xsl:attribute>
				</input>
			</td><td>
				<input type="text" size="12">
					<xsl:attribute name="name">published<xsl:number value="position()" format="1" /></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="published" /></xsl:attribute>
				</input>
			</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
