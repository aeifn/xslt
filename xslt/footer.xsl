<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="footer">
    <hr/>
    <xsl:apply-templates select="$company" mode="footer"/>
  </xsl:template>
  <xsl:template match="company" mode="footer">
    <xsl:apply-templates select="address"/>
    <xsl:apply-templates select="gendir"/>
    <xsl:call-template name='inns'/>
  </xsl:template>
  <xsl:template name="header">
    <xsl:apply-templates select="$company" mode="header"/>
  </xsl:template>
  <xsl:template match="company" mode="header">
    <div class="row" id="header">
      <h1>
        <xsl:value-of select="name"/>
      </h1>
      <h2>
        <xsl:value-of select="slogan"/>
      </h2>
      <a href="tel:{phone/@tel}"><xsl:value-of select="phone"/></a>
    </div>
  </xsl:template>
</xsl:stylesheet>
