<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:template match="/">
    <center><font size="5" color="#bb0000">全従業員表示</font></center>
    <table align="center" width="350" border="1">
      <tr>
        <th align="center" width="100">従業員番号</th>
        <th align="center" width="130">氏名</th>
        <th align="center" width="120">所属</th>
      </tr>
      <xsl:for-each select="/empmas/employee">
      <tr>
        <td align="center"><xsl:value-of select="emp_no" /></td>
        <td align="center"><xsl:value-of select="emp_name" /></td>
        <td align="center"><xsl:value-of select="section" /></td>
      </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>

