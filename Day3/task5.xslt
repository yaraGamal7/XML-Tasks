<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="//number">
			<xsl:value-of select="."/>
			<xsl:if test="position() != last()">
				<xsl:text> + </xsl:text>
			</xsl:if>
			<xsl:if test="position() = last()">
				<xsl:text> = </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:value-of select="sum(//number)"/>
		<hr/>
		<xsl:for-each select="//number[. mod 2 = 0]">
			<xsl:value-of select="."/>
			<xsl:if test="position() != last()">
				<xsl:text> + </xsl:text>
			</xsl:if>
			<xsl:if test="position() = last()">
				<xsl:text> = </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:value-of select="sum(//number[. mod 2 = 0])"/>
		<hr/>
		<xsl:for-each select="//number[. mod 2 != 0]">
			<xsl:value-of select="."/>
			<xsl:if test="position() != last()">
				<xsl:text> + </xsl:text>
			</xsl:if>
			<xsl:if test="position() = last()">
				<xsl:text> = </xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:value-of select="sum(//number[. mod 2 != 0])"/>
		<hr/>
	</xsl:template>
</xsl:stylesheet>
