<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="xhtml">

    <xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes"
                doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"
                doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
    <xsl:preserve-space elements="*"/>

    <xsl:template match="/">
      <html>
	<head>
	  <style type="text/css">
body
{
  font-family: Tahoma, Arial, Helvetica, sans-serif;
  background-color: white;
  font-size: 11px;
}

.name {
  color: #003366;
  font-weight: bold;
  margin-right: 10px;
}

	  </style>
	  <title>Simple Test</title>
	</head>
	<body>
        <xsl:apply-templates/>
        </body>
      </html>
    </xsl:template>
    <xsl:template match="/simple-test/string">
      <div style="line-height: 25px;"><span class="name">Captured string value:</span> <xsl:value-of select="/simple-test/string"/></div>
    </xsl:template>
</xsl:stylesheet>
