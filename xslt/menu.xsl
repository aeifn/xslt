<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="menu">
    <ul id="menu">
      <xsl:apply-templates select="navigation" mode="menu"/>
    </ul>
  </xsl:template>
  <xsl:template match="menu-item" mode="menu">
    <li>
      <xsl:choose>
        <xsl:when test="@id=$query">
          <strong class="current">
            <xsl:value-of select="@title"/>
          </strong>
        </xsl:when>
        <xsl:otherwise>
          <a href="?q={@id}">
            <xsl:value-of select="@title"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </li>
  </xsl:template>
</xsl:stylesheet>
