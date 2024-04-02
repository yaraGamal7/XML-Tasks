<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>CD Catalog</title>
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
                <h1>Task 2 - CD Catalog</h1>
                <table>
                    <thead>
                        <tr>
                            <th>TITLE</th>
                            <th>ARTIST</th>
                            <th>COUNTRY</th>
                            <th>COMPANY</th>
                            <th>PRICE</th>
                            <th>YEAR</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//CD">
                            <xsl:sort select="PRICE" order="descending" data-type="number"/>
                            <tr>
                                <td><xsl:value-of select="TITLE"/></td>
                                <td><xsl:value-of select="ARTIST"/></td>
                                <td><xsl:value-of select="COUNTRY"/></td>
                                <td><xsl:value-of select="COMPANY"/></td>
                                <td><xsl:value-of select="PRICE"/></td>
                                <td><xsl:value-of select="YEAR"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
