<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="nav-item" mode="navigation">
    <xsl:if test="@id=$query">
      <xsl:apply-templates select="document(@src)/*" />
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
