<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h2>Set Pubmed Article - Journal Information</h2>
      <table border="1">
        <tr bgcolor="tomato">
          <th style="text-align:left">Journal Title</th>
          <th style="text-align:left">Volume</th>
          <th style="text-align:left">Issue</th>
          <th style="text-align:left">Pub Date</th>
        </tr>
        <xsl:for-each select="//Journal">
        <tr>
          <td><xsl:value-of select="Title" /></td>
          <td><xsl:value-of select="JournalIssue/Volume" /></td>
          <td><xsl:value-of select="JournalIssue/Issue" /></td>
          <td><xsl:value-of select="concat(JournalIssue/PubDate/Year,' ',JournalIssue/PubDate/Month,' ',JournalIssue/PubDate/Day)" /></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
