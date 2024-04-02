<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>


  <xsl:template match="/CATALOG">
    <html>
      <head>
        <style>
          table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
          }

          th, td {
         
            text-align: left;
            padding: 8px;
          }

          th {
            background-color: lightgrey;
          }
          
        </style>
      </head>
      <body>

      
        <h2>Task 1 - CDs with Price > 10</h2>
        <table>
          <tr>
            <th>CD TITLE</th>
            <th>ARTIST</th>
          </tr>
          <xsl:apply-templates select="CD[PRICE > 10]"/>
        </table>

      </body>
    </html>
  </xsl:template>


  <xsl:template match="CD[PRICE > 10]">
    <tr>
      <td>
        <xsl:value-of select="TITLE"/>
      </td>
      <td>
        <xsl:value-of select="ARTIST"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
