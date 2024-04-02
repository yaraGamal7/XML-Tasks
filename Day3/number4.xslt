<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Word Table</title>
				<style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f0f0f0;
                        margin: 0;
                        padding: 0;
                    }

                    table {
                        width: 20%;
                        margin: 10px auto;
                        border-collapse: collapse;
                        background-color: white;
                   ]]
                    }

                    th, td {
                        padding: 15px;
                        text-align: center;
                        border-bottom: 1px solid #ddd;
                    }

             
                  
                </style>
			</head>
			<body>
				<table>
					<tbody>
						<xsl:for-each select="//word">
							<xsl:sort select="@id" data-type="text" order="ascending"/>
							<tr>
								<td>
									<xsl:value-of select="@id"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
