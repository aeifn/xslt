<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="css/style.css"/>
        <title>
        </title>
      </head>
      <body>
        <xsl:call-template name="menu"/>
        <xsl:call-template name="header"/>
        <xsl:call-template name="amoform"/>
        <xsl:apply-templates mode="navigation"/>
        <xsl:call-template name="footer"/>
        <xsl:call-template name="amochat"/>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
