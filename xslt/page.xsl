<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="page">
    <xsl:apply-templates/>
    <!-- page may contain {content, include, images} -->
  </xsl:template>
  <xsl:template match="include">
    <xsl:apply-templates select="document(@href)/page"/>
  </xsl:template>
</xsl:stylesheet>
