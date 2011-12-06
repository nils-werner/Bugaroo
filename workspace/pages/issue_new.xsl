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
	<h2>Create New Issue</h2>
	
	<xsl:variable name="default-value" select="'- No change -'" />

	<form method="post" action="" enctype="multipart/form-data" id="update-form">
		<fieldset>
			<legend>Update Issue</legend>
			<div id="attributes">
				<input type="hidden" name="fields[creator]" value="{$member-id}" />
				<input type="hidden" name="edit-issue[fields][modifier]" value="{$member-id}" />
				<input type="hidden" name="edit-issue[fields][project]" value="{$ds-project-project}" />
				<input type="hidden" name="fields[status]" value="{/data/index-status/entry[1]/@id}" />

				<label>Title
					<input type="text" name="edit-issue[fields][title]" />
				</label>
				
				<xsl:apply-templates select="/data/index-priority" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./priority/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-category" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./category/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/project-project-contributors-assignees" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./assignee/item/@id" />
					<xsl:with-param name="label" select="'Assign to'" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/project-project-milestones" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./milestone/item/@id" />
				</xsl:apply-templates>
				
				<label>Attachment
					<input type="file" name="fields[file]" />
				</label>
			</div>
			
			<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
			<label>Description
				<textarea name="edit-message[fields][description]" rows="15" cols="50"></textarea>
			</label>
			<label class="submit">Absenden
				<input name="action[edit-message]" type="submit" value="Submit" />
			</label>

 			<input name="action[edit-issue]" type="hidden" value="Submit" />

		</fieldset>
		<a class="cancel" href="javascript:history:back()">Cancel and go back</a>
	</form>
</xsl:template>






<xsl:template match="data" mode="sidebar">
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
</xsl:template>


</xsl:stylesheet>