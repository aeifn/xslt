<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="page/foto">
    <h1>
      <xsl:value-of select="title"/>
    </h1>
    <h2>
      <xsl:value-of select="subtitle"/>
    </h2>
    <xsl:apply-templates select="h2|prim"/>
  </xsl:template>

  <xsl:template match="prim">
    <div>
      <img src="img/{@img}.png" class="rounded"/>
      <br/>
      <xsl:value-of select='.'/>
    </div>
  </xsl:template>
</xsl:stylesheet>
