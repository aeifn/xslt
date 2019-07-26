<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="address">
    <xsl:call-template name="colon-separated"/>
  </xsl:template>
  <xsl:template match="gendir">
    <p>
      <xsl:value-of select="@title"/>: <xsl:value-of select="name"/> | <a href="mailto:{email}">
      <xsl:value-of select="email"/>
    </a>
  </p>
</xsl:template>
<xsl:template match="company" name="inns">
  <p>
    <span>ИНН / КПП / ОГРН: </span>
    <xsl:value-of select="inn"/> / <xsl:value-of select="kpp"/> / <xsl:value-of select="ogrn"/>
  </p>
</xsl:template>
<xsl:template name="colon-separated">
  <p>
    <xsl:value-of select="@title"/>: <xsl:value-of select="."/>
  </p>
</xsl:template>
</xsl:stylesheet>
