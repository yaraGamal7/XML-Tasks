<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>CD Titles</title>
				<style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: lightgrey;
                        margin: 0;
                        padding: 0;
                    }

                    table {
                        width: 20%;
                        margin: 50px auto;
                        border-collapse: collapse;
                        background-color: white;
                    }

                    th, td {
                        padding: 15px;
                        text-align: center;
                        border-bottom: 1px solid #ddd;
                    }

                    th {
                        background-color: #4CAF50;
                        color: white;
                    }

  

                    .red-bg {
                        background-color: red;
                        color: white;
                    }

                    .green-bg {
                        background-color: green;
                        color: white;
                    }
                </style>
			</head>
			<body>
				<table>
					<thead>
						<tr>
							<th>Task 3 - Display CD TITLE</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="//CD">
							<xsl:choose>
								<xsl:when test="PRICE &gt; 10">
									<tr class="red-bg">
										<td>
											<xsl:value-of select="TITLE"/>
										</td>
									</tr>
								</xsl:when>
								<xsl:otherwise>
									<tr class="green-bg">
										<td>
											<xsl:value-of select="TITLE"/>
										</td>
									</tr>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
