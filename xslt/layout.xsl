<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <title>
        </title>
      </head>
      <body>
        <div class="container">
          <xsl:call-template name="menu"/>
          <xsl:call-template name="header"/>
          <xsl:call-template name="amoform"/>
          <page>
            <xsl:apply-templates mode="navigation"/>
          </page>
          <xsl:call-template name="footer"/>
          <xsl:call-template name="amochat"/>
          <script src="./dist/main.js">
          </script>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
