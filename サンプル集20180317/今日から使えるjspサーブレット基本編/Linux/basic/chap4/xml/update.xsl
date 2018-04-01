<?xml version="1.0" encoding="EUC-JP" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="4.0" encoding="EUC-JP" />
	<xsl:template match="/">
		<html>
		<head>
		<title><xsl:text>蔵書リスト更新</xsl:text></title>
		</head>
		<h1><xsl:text>蔵書リスト更新</xsl:text></h1>
		<form method="POST" action="/basic/servlet/xml.book_update">
		<input type="submit" value="更新" />
		<input type="reset" value="取消" />
		<table border="1">
		<tr>
			<th>処理区分</th><th>ISBN</th><th>書籍</th><th>URL</th>
			<th>出版社</th><th>価格</th><th>発刊日</th>
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
					<option value="">処理なし</option>
					<option value="update">更新</option>
					<option value="delete">削除</option>
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
