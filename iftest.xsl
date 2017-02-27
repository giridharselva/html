<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.5"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="11">
      <tr bgcolor="#6acd32">
      <th>Title</th>
      <th>Author</th>
      <th>Price</th>      
    </tr>
    <xsl:for-each select="catalog/cd">
  <xsl:sort select="title"/>
   <xsl:if test="price>100">
     <tr>
        <td><xsl:value-of select="title"/></td>
        <td><xsl:value-of select="author"/></td>
        <td><xsl:value-of select="price"/></td>        
	    </tr>
    </xsl:if>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

