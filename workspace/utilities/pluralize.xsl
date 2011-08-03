<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
	Param "number" is required, all other params are optional.
	
	If you don't give a "term" param, the util assumes that you mean 'Element'.
	If you don't give a "term-plural" param, the util assumes that it will only have to append an 's'
	If you don't give a "term-none" param, the util assumes that it will be the same as term-plural
	If you don't five a "term-neg" param, the util assumes that negative elements term is the same as term-plural
-->

<xsl:template name="pluralize">
	<xsl:param name="number" />
	
	<xsl:param name="term" select="'Element'" />
	<xsl:param name="term-plural" select="concat($term,'s')" />
	<xsl:param name="term-none" select="$term-plural" />
	<xsl:param name="term-neg" select="$term-plural" />
	
	<xsl:if test="$number &lt; 0">
		<xsl:value-of select="$term-neg" />
	</xsl:if>
	<xsl:if test="$number = 0">
		<xsl:value-of select="$term-none" />
	</xsl:if>
	<xsl:if test="$number = 1">
		<xsl:value-of select="$term" />
	</xsl:if>
	<xsl:if test="$number &gt; 1">
		<xsl:value-of select="$term-plural" />
	</xsl:if>
</xsl:template>

</xsl:stylesheet>