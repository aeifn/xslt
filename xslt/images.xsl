<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="images">
    <xsl:apply-templates select="image"/>
  </xsl:template>
  <xsl:template match="image">
    <img src="img/{@src}.png" class="{@class}"/>
  </xsl:template>
</xsl:stylesheet>
