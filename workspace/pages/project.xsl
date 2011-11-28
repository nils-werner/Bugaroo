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
	<h2><xsl:value-of select="project-project/entry/title" /></h2>
	
	<xsl:apply-templates select="project-project" />
	
	<xsl:apply-templates select="project-project-issues-filtered" />
</xsl:template>






<xsl:template match="data" mode="sidebar">

	<xsl:variable name="default-value" select="'- All -'" />
	
	<h3>Filter</h3>
	<form action="" method="get">
		<input type="text" name="q" id="filter-input" value="{/data/params/url-q}" />
	</form>
	<a class="toggle-filter" href="#">Toggle Filter Form</a>
	<p id="filter-form">
	<xsl:apply-templates select="/data/index-status" mode="links" />
	
	<xsl:apply-templates select="/data/index-priority" mode="links" />
	
	<xsl:apply-templates select="/data/index-category" mode="links">
		<xsl:with-param name="default-value" select="'null'" />
		<xsl:with-param name="default-caption" select="'(none)'" />
	</xsl:apply-templates>
	
	<xsl:apply-templates select="/data/index-assignee" mode="links" >
		<xsl:with-param name="label" select="'Assigned to'" />
		<xsl:with-param name="default-value" select="'null'" />
		<xsl:with-param name="default-caption" select="'(nobody)'" />
	</xsl:apply-templates>
	
	<xsl:apply-templates select="/data/index-milestone" mode="links">
		<xsl:with-param name="default-value" select="'null'" />
		<xsl:with-param name="default-caption" select="'(none)'" />
	</xsl:apply-templates>

	<!-- <form action="" method="GET" id="filter-form">		
		<label>Search for ID
			<input type="text" name="q" />
		</label>
		
		<label class="submit">
			<input name="action[filter]" class="submit" type="submit" value="Submit" />
		</label>
	</form> -->
		<a class="clear cancel" href=".">Clear filter</a>
	</p>

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
</xsl:template>








<xsl:template match="project-project-issues-filtered/entry" mode="attribute-list-table">
	<ul>
		<li class="id">#<xsl:value-of select="./@id" /></li>
		<li class="status">
			<xsl:attribute name="style">background-color: <xsl:value-of select="/data/index-status/entry[@id = current()/status/item/@id]/backgroundcolor" />;</xsl:attribute>
			<span>Status</span>
			<a>
				<xsl:attribute name="href">
					<xsl:call-template name="toggle-get-param">
						<xsl:with-param name="param" select="'status'" />
						<xsl:with-param name="value" select="./status/item/@id" />
					</xsl:call-template>
				</xsl:attribute>
				<xsl:attribute name="style">color: <xsl:value-of select="/data/index-status/entry[@id = current()/status/item/@id]/textcolor" />;</xsl:attribute>
				<xsl:value-of select="./status/item" />
			</a>
		</li>
		<li class="priority">
			<span>Priority</span>
			<a href="?priority={./priority/item/@id}">
				<xsl:attribute name="href">
					<xsl:call-template name="toggle-get-param">
						<xsl:with-param name="param" select="'priority'" />
						<xsl:with-param name="value" select="./priority/item/@id" />
					</xsl:call-template>
				</xsl:attribute>
				<xsl:attribute name="style">color: <xsl:value-of select="/data/index-priority/entry[@id = current()/priority/item/@id]/color" />;</xsl:attribute>
				<xsl:value-of select="./priority/item" />
			</a>
		</li>
		<li class="category auxiliary">
			<span>Category</span>
			<a href="?category={./category/item/@id}">
				<xsl:attribute name="href">
					<xsl:call-template name="toggle-get-param">
						<xsl:with-param name="param" select="'category'" />
						<xsl:with-param name="value" select="./category/item/@id" />
					</xsl:call-template>
				</xsl:attribute>
				<xsl:if test="not(./category/item)">No category</xsl:if>
				<xsl:value-of select="./category/item" />
			</a>
		</li>
		<li class="milestone auxiliary">
			<span>Milestone</span>
			<a href="?milestone={./milestone/item/@id}">
				<xsl:attribute name="href">
					<xsl:call-template name="toggle-get-param">
						<xsl:with-param name="param" select="'milestone'" />
						<xsl:with-param name="value" select="./milestone/item/@id" />
					</xsl:call-template>
				</xsl:attribute>
				<xsl:if test="not(./milestone/item)">No milestone</xsl:if>
				<xsl:value-of select="./milestone/item" />
			</a>
		</li>
		<li class="assignee auxiliary">
			<span>Assignee</span>
			<a href="?assignee={./assignee/item/@id}">
				<xsl:attribute name="href">
					<xsl:call-template name="toggle-get-param">
						<xsl:with-param name="param" select="'assignee'" />
						<xsl:with-param name="value" select="./assignee/item/@id" />
					</xsl:call-template>
				</xsl:attribute>
				<xsl:if test="not(./assignee/item)">No Assignee</xsl:if>
				<xsl:value-of select="./assignee/item" />
			</a>
		</li>
		<li class="comments auxiliary">
			<a href="./{@id}/">
				<xsl:value-of select="./@messages" /><xsl:text> </xsl:text>
				<xsl:call-template name="pluralize">
					<xsl:with-param name="number" select="./@messages" />
					<xsl:with-param name="term" select="'Comment'" />
				</xsl:call-template>
			</a>
		</li>
	</ul>
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
	<li><a href="./{@id}/"><xsl:value-of select="title" /></a>
		<xsl:apply-templates select="." mode="attribute-list-table" />
	</li>
</xsl:template>







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