<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="menu">
    <ul id="menu">
      <xsl:apply-templates select="nav" mode="menu"/>
    </ul>
  </xsl:template>
  <!--INTERNAL HREF-->
  <xsl:template match="nav-item" mode="menu">
    <xsl:call-template name="nav-item">
      <xsl:with-param name="href" select="concat('?q=',@id)"/>
    </xsl:call-template>
  </xsl:template>
  <!--EXTERNAL HREF-->
  <xsl:template match="nav-item[@href]" mode="menu">
    <xsl:call-template name="nav-item">
      <xsl:with-param name="href" select="@href"/>
    </xsl:call-template>
  </xsl:template>
  <!--RENDER ITEM-->
  <xsl:template name="nav-item">
    <xsl:param name="href"/>
    <li class="nav-item">
      <xsl:choose>
        <xsl:when test="@id=$query">
          <span class="active nav-link">
            <xsl:value-of select="@title"/>
          </span>
        </xsl:when>
        <xsl:otherwise>
          <a href="{$href}" class="nav-link">
            <xsl:value-of select="@title"/>
          </a>
        </xsl:otherwise>
      </xsl:choose>
    </li>
  </xsl:template>
</xsl:stylesheet>
