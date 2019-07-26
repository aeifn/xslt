<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="menu">
    <ul id="menu">
      <xsl:apply-templates select="nav" mode="menu"/>
    </ul>
  </xsl:template>
  <xsl:template match="nav-item" mode="menu">
    <li class="nav-item">
      <xsl:choose>
        <xsl:when test="@id=$query">
          <span class="active nav-link">
            <xsl:value-of select="@title"/>
          </span>
        </xsl:when>
        <xsl:otherwise>
          <a href="?q={@id}" class="nav-link">
            <xsl:value-of select="@title"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </li>
  </xsl:template>
</xsl:stylesheet>
