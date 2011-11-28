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
	<div id="sidebar">
		<xsl:call-template name="create-issue" />
		
		<xsl:call-template name="filter-form" />
		<h2>Project Stats</h2>
		<h3>Activity</h3>
		<xsl:call-template name="google-sparkline">
			<xsl:with-param name="messages" select="project-project-issues-messages/entry" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'50'" />
		</xsl:call-template>
		<h3>Progress</h3>
		<xsl:call-template name="google-progress">
			<xsl:with-param name="percentage" select="100 div count(project-project-issues/entry) * count(project-project-issues/entry[status/item/@id = /data/index-status/entry[finished = 'Yes']/@id])" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'140'" />
		</xsl:call-template>
		<h3>Issues</h3>
		<xsl:apply-templates select="index-status" />
		<h3>Milestones</h3>
		<xsl:apply-templates select="project-project-milestones" />
	</div>

	<h2><xsl:value-of select="project-project/entry/title" /></h2>
	
	<xsl:apply-templates select="project-project" />
	
	<xsl:apply-templates select="project-project-issues-filtered" />
</xsl:template>

<xsl:template match="project-project">
</xsl:template>

<xsl:template match="project-project/entry">
	<li>
	</li>
</xsl:template>

<xsl:template match="project-project-issues-filtered">
	<ul id="project">
		<xsl:apply-templates select="entry"/>
		<xsl:if test="not(entry)">
			<li>There are no issues matching your criteria</li>
		</xsl:if>
	</ul>
</xsl:template>

<xsl:template match="project-project-issues-filtered/entry">
	<li><a href="{$root}/issue/{@id}/"><xsl:value-of select="title" /></a>
		<xsl:apply-templates select="." mode="attribute-list-table" />
	</li>
</xsl:template>

<!-- STATUS BAR -->

<xsl:template match="index-status">
	<ul>
		<xsl:apply-templates select="entry[projects = 'Yes']">
			<xsl:with-param name="issues" select="/data/project-project-issues/entry" />
		</xsl:apply-templates>
	</ul>
</xsl:template>

<xsl:template match="index-status/entry">
	<xsl:param name="issues" />
	
	<li class="{title/@handle}">
		<xsl:value-of select="title" />: <xsl:value-of select="count($issues[status/item/@id = current()/@id])" />
	</li>
</xsl:template>

<xsl:template match="project-project-milestones">
	<ul>
		<xsl:apply-templates select="entry" />
	</ul>
</xsl:template>

<xsl:template match="project-project-milestones/entry">
	<li class="{status/item/@handle}">
		<a href="?milestone={@id}"><xsl:value-of select="title" /></a>
	</li>
</xsl:template>

</xsl:stylesheet>