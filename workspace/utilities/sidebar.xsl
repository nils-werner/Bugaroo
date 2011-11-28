<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="sidebar">
	<xsl:apply-templates select="issues-index" />
	<a href="?member-action=logout">Logout</a>
</xsl:template>

<xsl:template match="issues-index">
	<ul>
		<xsl:if test="not(entry)">
			<li>
				There are no planned milestones for this project.
			</li>
		</xsl:if>
		<xsl:apply-templates select="entry" />
	</ul>
</xsl:template>

<xsl:template match="issues-index/entry">
	<xsl:variable name="id" select="@id" />
	
	<xsl:apply-templates select="//data/status-index" mode="milestones">
		<xsl:with-param name="milestone-id" select="@id" />
	</xsl:apply-templates>
	<li><xsl:value-of select="count(//data/issues-index/entry[milestone/item/@id = $id and not(assignee)])" /> Unassigned</li>
	<li>Due <xsl:value-of select="due" /></li>
</xsl:template>

</xsl:stylesheet>
