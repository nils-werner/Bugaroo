<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/google-charts.xsl"/>
<xsl:include href="../utilities/include-master.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />
	
<xsl:variable name="user-id" select="'68'"/>

<xsl:template match="data">
	<div id="sidebar">
		<h2>Personal Stats</h2>
		<h3>Activity</h3>
		<xsl:call-template name="google-sparkline">
			<xsl:with-param name="messages" select="dashboard-projects-issues-messages/entry[creator/item/@id = $user-id]" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'50'" />
		</xsl:call-template>
		<h3>Progress</h3>
		<xsl:call-template name="google-progress">
			<xsl:with-param name="percentage" select="100 div count(dashboard-projects-issues/entry) * count(dashboard-projects-issues/entry[status/item/@id = /data/index-status/entry[finished = 'Yes']/@id])" />
			<xsl:with-param name="width" select="'140'" />
			<xsl:with-param name="height" select="'140'" />
		</xsl:call-template>
		<h3>Issues</h3>
		<ul>
			<xsl:apply-templates select="/data/index-status/entry[dashboard = 'Yes']">
				<xsl:with-param name="issues" select="/data/dashboard-projects-issues/entry" />
			</xsl:apply-templates>
		</ul>
	</div>

	<h2>My Projects</h2>
	<xsl:apply-templates select="dashboard-projects" />
</xsl:template>

<!-- MAIN CONTENT -->

<xsl:template match="dashboard-projects">
	<h3>Starred projects</h3>
	<ul id="dashboard">
		<xsl:apply-templates select="entry[@id = /data/index-assignee/entry[@id = $user-id]/detailed/item/@id and not(@id = /data/index-assignee/entry[@id = $user-id]/hide/item/@id)]" mode="detailed" />
		<xsl:if test="not(entry)">
			<li>There are no projects matching your criteria</li>
		</xsl:if>
	</ul>
	<h3>Other projects</h3>
	<ul id="dashboard-other">
		<xsl:apply-templates select="entry[@id != /data/index-assignee/entry[@id = $user-id]/detailed/item/@id and not(@id = /data/index-assignee/entry[@id = $user-id]/hide/item/@id)]" />
		<xsl:if test="not(entry)">
			<li>There are no projects matching your criteria</li>
		</xsl:if>
	</ul>
</xsl:template>

<xsl:template match="dashboard-projects/entry" mode="detailed">
	
	<li class="{status/item/@handle}"><a href="{$root}/project/{title/@handle}/?assignee={$user-id}"><xsl:value-of select="title" /></a> <a class="all" href="{$root}/project/{title/@handle}/">all issues</a>
		<ul>
			<xsl:apply-templates select="/data/dashboard-projects-milestones/entry[project/item/@id = current()/@id]" />
			<xsl:if test="not(/data/dashboard-projects-milestones/entry[project/item/@id = current()/@id])">
				<xsl:attribute name="class">details</xsl:attribute>
				<xsl:apply-templates select="/data/index-status/entry[dashboard = 'Yes']">
					<xsl:with-param name="issues" select="/data/dashboard-projects-issues/entry[project/item/@id = current()/@id]" />
				</xsl:apply-templates>
				<li class="chart">
					<xsl:call-template name="google-sparkline">
						<xsl:with-param name="messages" select="/data/dashboard-projects-issues-messages/entry[issue/item/@id = /data/dashboard-projects-issues/entry[project/item/@id = current()/@id]/@id]" />
					</xsl:call-template>
				</li>
				<li class="progress">
					<xsl:call-template name="google-progress">
						<xsl:with-param name="percentage" select="100 div count(/data/dashboard-projects-issues/entry[project/item/@id = current()/@id]) * count(/data/dashboard-projects-issues/entry[project/item/@id = current()/@id][status/item/@id = /data/index-status/entry[finished = 'Yes']/@id])" />
					</xsl:call-template>
				</li>
			</xsl:if>
		</ul>
	</li>
</xsl:template>

<xsl:template match="dashboard-projects/entry">
	
	<li class="{status/item/@handle}"><a href="{$root}/project/{title/@handle}/?assignee={$user-id}"><xsl:value-of select="title" /></a> <a class="all" href="{$root}/project/{title/@handle}/">all issues</a>
	</li>
</xsl:template>

<xsl:template match="dashboard-projects-milestones/entry">
	<li class="{status/item/@handle}"><a href="{$root}/project/{project/item/@handle}/?milestone={@id}&amp;assignee={$user-id}"><xsl:value-of select="title" /></a> <a  class="all" href="{$root}/project/{project/item/@handle}/?milestone={@id}">all issues</a>
		<ul class="details">
			<xsl:apply-templates select="/data/index-status/entry[dashboard = 'Yes']">
				<xsl:with-param name="issues" select="/data/dashboard-projects-issues/entry[milestone/item/@id = current()/@id]" />
			</xsl:apply-templates>
			<li class="chart">
				<xsl:call-template name="google-sparkline">
					<xsl:with-param name="messages" select="/data/dashboard-projects-issues-messages/entry[issue/item/@id = /data/dashboard-projects-issues/entry[milestone/item/@id = current()/@id]/@id]" />
				</xsl:call-template>
			</li>
			<li class="progress">
				<xsl:call-template name="google-progress">
					<xsl:with-param name="percentage" select="100 div count(/data/dashboard-projects-issues/entry[milestone/item/@id = current()/@id]) * count(/data/dashboard-projects-issues/entry[milestone/item/@id = current()/@id][status/item/@id = /data/index-status/entry[finished = 'Yes']/@id])" />
				</xsl:call-template>
			</li>
		</ul>
	</li>
</xsl:template>

<xsl:template match="index-status/entry">
	<xsl:param name="issues" />
	
	<li class="{title/@handle}">
		<xsl:value-of select="title" />: <xsl:value-of select="count($issues[status/item/@id = current()/@id])" />
	</li>
</xsl:template>

</xsl:stylesheet>

