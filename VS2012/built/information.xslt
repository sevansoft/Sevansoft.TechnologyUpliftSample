<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="iso-8859-1" indent="yes" />
  <xsl:template match="/">
    <html>
      <head>
        <title>
				Product Information for <xsl:value-of select="buildinfo/product/name" /></title>
      </head>
      <body>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th align="left">Build Time</th>
            <th align="left">Version</th>
            <th align="left">Source</th>
            <th align="left">Label</th>
            <th align="left">Machine</th>
            <th align="left">User</th>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="buildinfo/product/time" />
            </td>
            <td>
              <xsl:value-of select="buildinfo/product/version" />
            </td>
            <td>
              <xsl:value-of select="buildinfo/product/source" />
            </td>
            <td>
              <xsl:value-of select="buildinfo/product/label" />
            </td>
            <td>
              <xsl:value-of select="buildinfo/product/machine" />
            </td>
            <td>
              <xsl:value-of select="buildinfo/product/user" />
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>