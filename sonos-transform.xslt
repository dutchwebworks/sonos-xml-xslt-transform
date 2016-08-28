<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
	<p>Site: <a href="http://www.freeformatter.com/xsl-transformer.html">http://www.freeformatter.com/xsl-transformer.html</a></p>
	<table border="1">
		<thead>
	  <tr>
		<th>Track</th>
		<th>Artist</th>
		<th>Album</th>
	  </tr>
	</thead>
		<tbody>
	  <xsl:for-each select="SavedQueues/SavedQueue/Track">
	  <tr>
	  	<xsl:value-of select="@MD">
	  	   <xsl:copy>
	  	     <td>
	  	       <xsl:value-of select="normalize-space(substring-before(., ','))"/>
	  	     </td>
	  	     <xsl:variable name="s1" select="substring-after(., ',')"/>
	  	     <td>
	  	       <xsl:value-of select="normalize-space(substring-before($s1, ','))"/>
	  	     </td>
	  	     <xsl:variable name="s2" select="substring-after($s1, ',')"/>
	  	     <td>
	  	       <xsl:value-of select="normalize-space(substring-before($s2, ','))"/>
	  	     </td>
	  	     <td>
	  	       <xsl:value-of select="normalize-space(substring-after($s2, ','))"/>
	  	     </td>
	  	   </xsl:copy>
	  	 </xsl:value-of>
		</tr>
	  </xsl:for-each>
	</tbody>
	</table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>