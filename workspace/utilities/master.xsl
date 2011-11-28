<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/navigation.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>
<xsl:import href="../utilities/time-ago.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />
	
<!-- login status -->
<xsl:variable name="is-logged-in" select="/data/events/member-login-info/@logged-in"/>
<xsl:variable name="user-id" select="/data/events/member-login-info/@id"/>
<xsl:variable name="is-admin" select="/data/events/login-info/@logged-in"/>
<xsl:variable name="query-string" select="substring-after($current-path,'?')" />

<!-- index-variables depending on page -->
<xsl:variable name="index-status" select="/data/index-status/entry" />
<xsl:variable name="index-priority" select="/data/index-priority/entry" />
<xsl:variable name="index-category" select="/data/index-category/entry" />

<xsl:variable name="index-projects">
	<xsl:choose>
		<xsl:when test="$current-page = 'dashboard'">
			<xsl:copy-of select="/data/index-projects/entry[contributors/item/@id = user-id or administrators/item/@id = user-id]" />
		</xsl:when>
		<xsl:when test="$current-page = 'project'">
			<xsl:copy-of select="/data/index-projects/entry[contributors/item/@id = user-id or administrators/item/@id = user-id]" />
		</xsl:when>
		<xsl:when test="$current-page = 'issue'">
			<xsl:copy-of select="/data/index-projects/entry[@id = /data/issue-issue/entry/project/item/@id]" />
		</xsl:when>
		<xsl:otherwise>
			<xsl:copy-of select="/data/index-projects/entry" />
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>



<!--
<xsl:variable name="index-milestone" select="/data/index-milestone/entry[project/item/@id = $index-project/entry/@id or none = 'Yes']" />
<xsl:variable name="index-assignee" select="/data/index-assignee/entry[project/item/@id = $index-project/entry/@id or none = 'Yes']" />
-->

<xsl:template match="/">
<html>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>
		<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/styles.css" />
		<link rel="alternate" type="application/rss+xml" href="/rss/" />
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js" />
		<script type="text/javascript" src="{$workspace}/js/script.js" />
	</head>
	<body>
		<xsl:attribute name="class">
			<xsl:apply-templates mode="bodyclass"/>
		</xsl:attribute>
		<div id="masthead">
			<h1>
				<a href="{$root}"><xsl:value-of select="$website-name"/></a>
			</h1>
			<xsl:apply-templates select="data/system-navigation"/>
		</div>
		<div id="package">
			<!-- <p class="date">
				<xsl:call-template name="format-date">
					<xsl:with-param name="date" select="$today"/>
					<xsl:with-param name="format" select="'d'"/>
				</xsl:call-template>
				<span>
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="$today"/>
						<xsl:with-param name="format" select="'m'"/>
					</xsl:call-template>
				</span>
			</p> -->
			<div id="content">
				<div id="sidebar">
					<a id="create-issue" href="{$root}/{/data/project-project/entry/title/@handle}{/data/issue-issue/entry/project/item/@handle}{/data/params/url-project}/new/">Create Issue</a>
					<xsl:apply-templates mode="sidebar"/>				
				</div>
				<xsl:apply-templates/>
			</div>
		<ul id="footer">
			<li>Orchestrated by <a class="symphony" href="http://symphony-cms.com/">Symphony</a></li>
		</ul>
		</div>
	</body>
</html>

</xsl:template>

<xsl:template match="data" mode="sidebar" />
<xsl:template match="data" mode="bodyclass" />

</xsl:stylesheet>
