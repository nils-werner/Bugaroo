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
		
		<h2>Issue Stats</h2>
		<h3>Activity</h3>
		<xsl:call-template name="google-sparkline">
			<xsl:with-param name="messages" select="issue-issue-messages/entry" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'50'" />
			<xsl:with-param name="color" select="'cccccc'" />
		</xsl:call-template>
		<h3>Progress</h3>
		<xsl:call-template name="google-progress">
			<xsl:with-param name="percentage" select="'0'" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'140'" />
			<xsl:with-param name="notcolor" select="'E6E6E6'" />
		</xsl:call-template>
	</div>
	
	<h2>Create New Issue</h2>
	
	<xsl:call-template name="update-form">
		<xsl:with-param name="issue-item" select="." />
	</xsl:call-template>
</xsl:template>
</xsl:stylesheet>