<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="p|h2|h3|ul|ol|li|strong">
    <xsl:copy>
      <xsl:if test="@class">
        <xsl:attribute name="class">
          <xsl:value-of select="@class" />
        </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
