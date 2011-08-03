<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/attribute-tools.xsl"/>
<xsl:import href="../utilities/google-charts.xsl"/>
<xsl:include href="../utilities/include-master.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="data">
	<div id="sidebar" class="issue">
		<xsl:call-template name="create-issue" />
		
		<h2>Issue Stats</h2>
		<h3>Activity</h3>
		<xsl:call-template name="google-sparkline">
			<xsl:with-param name="messages" select="issue-issue-messages/entry" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'50'" />
			<xsl:with-param name="bgcolor" select="'f6f6f6'" />
		</xsl:call-template>
		<h3>Progress</h3>
		<xsl:call-template name="google-progress">
			<xsl:with-param name="percentage">
				<xsl:for-each select="/data/index-status/entry[@id = /data/issue-issue/entry/status/item/@id]">
					<xsl:number />
				</xsl:for-each>
			</xsl:with-param>
			<xsl:with-param name="maximum" select="count(/data/index-status/entry)" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'140'" />
		</xsl:call-template>
	</div>

	<h2>#<xsl:value-of select="issue-issue/entry/@id"/><xsl:text> </xsl:text><a href="."><xsl:value-of select="issue-issue/entry/title" /></a></h2>

	<xsl:apply-templates select="issue-issue/entry" />
	
	<p id="back">
		<a href="{$root}/project/{issue-issue/entry/project/item/@handle}/">&#8592; <xsl:value-of select="issue-issue/entry/project/item" /></a>
	</p>
	
	<xsl:apply-templates select="issue-issue-messages/entry" />
	
	<xsl:call-template name="update-form">
		<xsl:with-param name="issue-item" select="issue-issue/entry"/>
	</xsl:call-template>
</xsl:template>

<xsl:template match="issue-issue/entry">
	<xsl:call-template name="attribute-list-infobar">
		<xsl:with-param name="node" select="." />
	</xsl:call-template>
</xsl:template>

<xsl:template match="issue-issue-messages/entry">
	<p>
		<xsl:value-of select="creator/item" /> -
		<xsl:call-template name="time-ago">
			<xsl:with-param name="date-and-time" select="concat(date,'T',date/@time,':00')" />
		</xsl:call-template>
		(<xsl:value-of select="concat(date,' ',date/@time)" />)
	</p>
	<xsl:copy-of select="description/*" />
	
	<xsl:if test="file">
		<p>
			Attachment: <a href="{$workspace}{file/@path}/{file/filename}"><xsl:value-of select="file/filename" />
			<xsl:text> </xsl:text>	
			<xsl:if test="contains(file/@type,'image')">
				<img src="/image/1/0/40/0/{file/@path}/{file/filename}" alt="{file/filename}" />
			</xsl:if>
			</a> (<xsl:value-of select="file/@size" />)
		</p>
	</xsl:if>
	
	<p class="changes">
		<xsl:choose>
			<xsl:when test="position() = 1">
				<xsl:apply-templates select="priority | status | category[@id != /data/index-category/entry[none = 'Yes']/@id] | assignee[@id != /data/index-assignee/entry[none = 'Yes']/@id] | milestone[@id != /data/index-milestone/entry[none = 'Yes']/@id]" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="priority | status | category | assignee | milestone" />
			</xsl:otherwise>
		</xsl:choose>
		
	</p>
	<hr />
</xsl:template>

<xsl:template match="priority | category | assignee | milestone | status">
		
	<xsl:if test="not(../preceding-sibling::entry) or ../preceding-sibling::entry[1]/*[name() = name(current())]/item != current()/item">
		<span><xsl:value-of select="concat(translate(substring(name(),1,1), 'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'), substring(name(),2))"/>: </span>
		<xsl:choose>
			<xsl:when test="item/@id = /data/*[name() = concat('index-',name(current()))]/entry[not(none) or none = 'No']/@id">
				<xsl:value-of select="../preceding-sibling::entry[1]/*[name() = name(current())]/item[@id = /data/*[name() = concat('index-',name(current()))]/entry[not(none) or none = 'No']/@id]" /> &#8594; <xsl:value-of select="item" />
			</xsl:when>
			<xsl:otherwise>
				cleared
			</xsl:otherwise>
		</xsl:choose>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>