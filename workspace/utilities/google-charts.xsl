<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:date="http://exslt.org/dates-and-times" 
	xmlns:math="http://exslt.org/math" 
	extension-element-prefixes="date math">


<xsl:template name="google-sparkline">
	<xsl:param name="color" select="'ff9900'" />
	<xsl:param name="bgcolor" select="'65432100'" />
	<xsl:param name="width" select="'80'" />
	<xsl:param name="height" select="'20'" />
	
	<xsl:param name="messages" />
	<img>
		<xsl:attribute name="src">http://chart.apis.google.com/chart?cht=ls&amp;chxl=&amp;chs=<xsl:value-of select="$width" />x<xsl:value-of select="$height" />&amp;chds=0,20&amp;chco=<xsl:value-of select="$color" />&amp;chf=bg,s,<xsl:value-of select="$bgcolor" />&amp;chd=t:<xsl:call-template name="google-charts">
				<xsl:with-param name="messages" select="$messages" />
			</xsl:call-template>
		</xsl:attribute>
	</img>
</xsl:template>

<xsl:template name="google-progress">
	<xsl:param name="color" select="'9BC66C'" />
	<xsl:param name="notcolor" select="'D0E4BA'" />
	<xsl:param name="bgcolor" select="'65432100'" />
	<xsl:param name="width" select="'47'" />
	<xsl:param name="height" select="'47'" />
	<xsl:param name="percentage" select="'0'" />
	<xsl:param name="maximum" select="'100'" />
	
	<xsl:variable name="percentage">
		<xsl:choose>
			<xsl:when test="not(number($percentage))">0</xsl:when>
			<xsl:otherwise><xsl:value-of select="number($percentage)" /></xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<img>
		<xsl:attribute name="src">http://chart.apis.google.com/chart?cht=p&amp;chs=<xsl:value-of select="$width" />x<xsl:value-of select="$height" />&amp;chds=0,100&amp;chco=<xsl:value-of select="concat($color,',',$notcolor)" />&amp;chd=t:<xsl:value-of select="$percentage" />,<xsl:value-of select="$maximum - $percentage" />&amp;chp=-1.5707963267948966192313216916398&amp;chf=bg,s,<xsl:value-of select="$bgcolor" /></xsl:attribute>
	</img>
</xsl:template>

<!-- <xsl:template name="google-progress">
	<xsl:param name="color" select="'9BC66C'" />
	<xsl:param name="bgcolor" select="'D0E4BA'" />
	<xsl:param name="width" select="'80'" />
	<xsl:param name="height" select="'20'" />
	<xsl:param name="percentage" />
	<img>
		<xsl:attribute name="src">http://chart.apis.google.com/chart?cht=bhs&amp;chs=<xsl:value-of select="$width" />x<xsl:value-of select="$height" />&amp;chds=0,100&amp;chco=<xsl:value-of select="concat($color,',',$bgcolor)" />&amp;chd=t:<xsl:value-of select="$percentage" />|200</xsl:attribute>
	</img>
</xsl:template> -->

<xsl:template name="google-charts">
	<xsl:param name="messages" />

	<xsl:call-template name="google-charts-loop">
		<xsl:with-param name="messages" select="$messages" />
	</xsl:call-template>
</xsl:template>

<xsl:template name="google-charts-loop">
	<xsl:param name="index" select="'30'" />
	<xsl:param name="messages" />
	
	<xsl:variable name="date-and-time" select="concat($messages/date,'T',$messages/date/@time,':00')" />
	<xsl:variable name="now" select="concat($today, 'T', $current-time, ':00')" />
	<xsl:variable name="minutes" select="date:seconds(date:difference($date-and-time, $now)) div 60" />
	<xsl:variable name="delta-minutes" select="math:abs($minutes)" />
		
	<xsl:value-of select="count($messages[
		(date:seconds(date:difference(concat(date,'T',date/@time,':00'), $now)) div 60) &lt; ($index + 1) * 60 * 24
		and
		(date:seconds(date:difference(concat(date,'T',date/@time,':00'), $now)) div 60) &gt; $index * 60 * 24
		])" />
	
	<xsl:if test="$index &gt; 0">,<xsl:call-template name="google-charts-loop">
			<xsl:with-param name="index" select="$index - 1" />
			<xsl:with-param name="messages" select="$messages" />
		</xsl:call-template>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>