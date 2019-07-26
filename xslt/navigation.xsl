<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="menu-item" mode="navigation">
    <xsl:if test="@id=$query">
      <xsl:apply-templates select="document(@src)/page" />
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
