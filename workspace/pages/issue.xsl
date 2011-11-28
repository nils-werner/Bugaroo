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
	<h2>#<xsl:value-of select="issue-issue/entry/@id"/><xsl:text> </xsl:text><a href="."><xsl:value-of select="issue-issue/entry/title" /></a></h2>

	<xsl:apply-templates select="issue-issue/entry" />
	
	<p id="back">
		<a href="{$root}/project/{issue-issue/entry/project/item/@handle}/">&#8592; <xsl:value-of select="issue-issue/entry/project/item" /></a>
	</p>
	
	<xsl:apply-templates select="issue-issue-messages/entry" />
	
	<xsl:variable name="default-value" select="'- No change -'" />

	<form method="post" action="" enctype="multipart/form-data" id="update-form">
		<fieldset>
			<legend>Update Issue</legend>
			<div id="attributes">
				<input type="hidden" name="messages[creator]" value="{$member-id}" />
				<input type="hidden" name="messages[issue]" value="{$issue}" />
				
				<xsl:apply-templates select="/data/index-status" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./status/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-priority" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./priority/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-category" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./category/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-assignee" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./assignee/item/@id" />
					<xsl:with-param name="label" select="'Assign to'" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-milestone" mode="select">
					<xsl:with-param name="issue-item" select="." />
					<xsl:with-param name="selected-value" select="./milestone/item/@id" />
				</xsl:apply-templates>
				
				<label>Attachment
					<input type="file" name="messages[file]" />
				</label>
				
				<xsl:if test="./@id">
					<input name="messages[issue]" type="hidden" value="{./@id}" />
				</xsl:if>
			</div>
			
			<input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
			<label>Description
				<textarea name="messages[description]" rows="15" cols="50"></textarea>
			</label>
			<label class="submit">Absenden
				<input name="action[save-message]" type="submit" value="Submit" />
			</label>
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
</xsl:template>





<xsl:template match="data" mode="bodyclass">issue</xsl:template>





<xsl:template match="issue-issue/entry">
	<xsl:apply-templates select="." mode="attribute-list-infobar" />
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






<xsl:template match="issue-issue/entry" mode="attribute-list-infobar">
	
	<ul>
		<xsl:attribute name="id">infobar</xsl:attribute>
		<xsl:attribute name="style">background-color: <xsl:value-of select="/data/index-status/entry[@id = current()/status/item/@id]/backgroundcolor" />; color: <xsl:value-of select="/data/index-status/entry[@id = current()/status/item/@id]/textcolor" />;</xsl:attribute>
		<li class="status">
			<span>Status</span>
			<xsl:value-of select="./status/item" />
		</li>
		<li class="priority">
			<span>Priority</span>
			<xsl:value-of select="./priority/item" />
		</li>
		<li class="category auxiliary">
			<span>Category</span>
			<xsl:value-of select="./category/item" />
		</li>
		<li class="milestone auxiliary">
			<span>Milestone</span>
			<xsl:value-of select="./milestone/item" />
		</li>
		<li class="assignee auxiliary">
			<span>Assignee</span>
			<xsl:value-of select="./assignee/item" />
		</li>
	</ul>
</xsl:template>


</xsl:stylesheet>