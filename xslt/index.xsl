<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:variable name="company" select="document('../xml/company.xml')"/>
  <xsl:include href="layout.xsl"/>
  <xsl:include href="router.xsl"/>
  <xsl:include href="menu.xsl"/>
  <xsl:include href="page.xsl"/>
  <xsl:include href="images.xsl"/>
  <xsl:include href="footer.xsl"/>
  <xsl:include href="company.xsl"/>
  <xsl:include href="foto.xsl"/>
  <xsl:include href="common.xsl"/>
  <xsl:include href="amocrm.xsl"/>
  <xsl:include href="catalog.xsl"/>
</xsl:stylesheet>
