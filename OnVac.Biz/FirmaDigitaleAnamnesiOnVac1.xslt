﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="/">
    <html>
      <body>
        <h1>
          <xsl:value-of select="Anamnesi/BilancioDescrizione" />
        </h1>
      </body>
    </html>    
  </xsl:template>
</xsl:stylesheet>
