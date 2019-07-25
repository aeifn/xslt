<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/site">
    <html>
      <head>
        <link rel="stylesheet" href="style.css" />
        <title>
        </title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  <!--PAGE-->
  <xsl:template match="page">
    <hr/>
    <h2>
      <xsl:value-of select="@title"/>
    </h2>
    <xsl:copy-of select="*" />
    <!-- COMPANY INFO -->
    <xsl:apply-templates select="../company" mode="requisites"/>
  </xsl:template>
  <!--КОМПАНИЯ (ШАПКА)-->
  <xsl:template match="company">
    <div id="header">
      <h1>
        <xsl:value-of select="./name"/>
      </h1>
      <h2 class="slogan">
        <xsl:value-of select="./slogan"/>
      </h2>
    </div>
  </xsl:template>
  <!--РЕКВИЗИТЫ-->
  <xsl:template match="company" mode="requisites">
    <p>
      <xsl:value-of select="address[@type='legal']/@title"/>: <xsl:value-of select="address[@type='legal']"/>
    </p>
    <p>ИНН / КПП / ОГРН: <xsl:value-of select="inn"/> / <xsl:value-of select="ogrn"/> / <xsl:value-of select="kpp"/>
  </p>
  <xsl:apply-templates select="gendir"/>
</xsl:template>
<!--GENDIR-->
<xsl:template match="gendir">
  <xsl:value-of select="name"/>
  <xsl:value-of select="email"/>
</xsl:template>
</xsl:stylesheet>
