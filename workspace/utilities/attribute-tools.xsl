<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/pluralize.xsl"/>

<xsl:strip-space elements="@"/> 

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
			<a href="{$root}/issue/{@id}">
				<xsl:value-of select="./@messages" /><xsl:text> </xsl:text>
				<xsl:call-template name="pluralize">
					<xsl:with-param name="number" select="./@messages" />
					<xsl:with-param name="term" select="'Comment'" />
				</xsl:call-template>
			</a>
		</li>
	</ul>
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

<xsl:template name="create-issue">
	<a id="create-issue" href="{$root}/issue/new/?project={/data/project-project/entry/@id}{/data/issue-issue/entry/project/item/@id}{/data/params/url-project}">Create Issue</a>
</xsl:template>

<xsl:template name="filter-form">
	<xsl:variable name="default-value" select="'- All -'" />
	
	<h3>Filter</h3>
	<form action="" method="get">
		<input type="text" name="q" id="filter-input" value="" />
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
</xsl:template>

<xsl:template name="update-form">
	<xsl:param name="issue-item" />
	
	<xsl:variable name="default-value" select="'- No change -'" />

	<form method="post" action="" enctype="multipart/form-data" id="update-form">
		<fieldset>
			<legend>Update Issue</legend>
			<div id="attributes">
				<xsl:apply-templates select="/data/index-assignee" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="field" select="'author'" />
					<xsl:with-param name="label" select="'Posted by'" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-status" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="selected-value" select="$issue-item/status/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-priority" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="selected-value" select="$issue-item/priority/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-category" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="selected-value" select="$issue-item/category/item/@id" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-assignee" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="selected-value" select="$issue-item/assignee/item/@id" />
					<xsl:with-param name="label" select="'Assign to'" />
				</xsl:apply-templates>
				
				<xsl:apply-templates select="/data/index-milestone" mode="select">
					<xsl:with-param name="issue-item" select="$issue-item" />
					<xsl:with-param name="selected-value" select="$issue-item/milestone/item/@id" />
				</xsl:apply-templates>
				
				<label>Attachment
					<input type="file" name="messages[file]" />
				</label>
				
				<xsl:if test="$issue-item/@id">
					<input name="messages[issue]" type="hidden" value="{$issue-item/@id}" />
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

<xsl:template match="index-users | index-category | index-priority | index-status" mode="select">
	<xsl:param name="field" select="substring-after(name(),'index-')" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="messages[{$field}]">
			<xsl:apply-templates select="entry" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>

<xsl:template match="index-assignee" mode="select">
	<xsl:param name="field" select="substring-after(name(),'index-')" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="messages[{$field}]">
			<xsl:apply-templates select="entry[@id = /data/index-projects/entry[@id = $issue-item/project/item/@id or @id = /data/params/url-project]/*[name() = 'administrators' or name() = 'contributors']/item/@id or none = 'Yes']" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>

<xsl:template match="index-milestone" mode="select">
	<xsl:param name="field" select="substring-after(name(),'index-')" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="messages[{$field}]">
			<xsl:apply-templates select="entry[project/item/@id = $issue-item/project/item/@id or project/item/@id = /data/params/url-project or @id = /data/index-milestone/entry[none = 'Yes']/@id]" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>

<xsl:template match="entry" mode="option-tag">
	<xsl:param name="selected-value" select="''" />
	
	<option>
		<xsl:choose>
			<xsl:when test="@id = $selected-value">
				<xsl:attribute name="selected">selected</xsl:attribute>
				<xsl:attribute name="value"></xsl:attribute>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="value"><xsl:value-of select="@id" /></xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:value-of select="title | name" />
	</option>
</xsl:template>

<xsl:template match="index-users | index-category | index-priority | index-milestone | index-status | index-assignee" mode="links">
	<xsl:param name="field" select="substring-after(name(),'index-')" />
	<xsl:param name="label" select="section" />
	<xsl:param name="default-value" select="''" />
	<xsl:param name="default-caption" select="''" />

	<span class="label">
		<xsl:if test="/data/params/*[name() = concat('url-',$field)]">
			<xsl:attribute name="class">selected</xsl:attribute>
		</xsl:if>
		<xsl:value-of select="$label" />
		<xsl:apply-templates select="entry[
					(name(current()) = 'index-milestone' and (project/item/@handle = $project or @id = /data/index-milestone/entry[none = 'Yes']/@id))
					 or 
					(name(current()) = 'index-assignee' and (@id = /data/index-projects/entry[title/@handle = $project]/*[name() = 'administrators' or name() = 'contributors']/item/@id or none = 'Yes'))
					or
					(name(current()) != 'index-milestone' and name(current()) != 'index-assignee')
					]" mode="link">
			<xsl:with-param name="selected-value" select="/data/params/*[name() = concat('url-',$field)]" />
			<xsl:with-param name="name" select="$field" />
		</xsl:apply-templates>
	</span>
</xsl:template>

<xsl:template match="entry" mode="link">
	<xsl:param name="name" select="''" />
	<xsl:param name="selected-value" select="''" />
	
	<a>
		<xsl:choose>
			<xsl:when test="not(/data/params/*[name() = concat('url-',$name)])">
				<xsl:attribute name="class">none</xsl:attribute>
			</xsl:when>
			<xsl:when test="contains(/data/params/*[name() = concat('url-',$name)],@id)">
				<xsl:attribute name="class">selected</xsl:attribute>
			</xsl:when>
		</xsl:choose>
		<xsl:attribute name="href">
			<xsl:call-template name="toggle-get-param">
				<xsl:with-param name="param" select="$name" />
				<xsl:with-param name="value" select="@id" />
			</xsl:call-template>
		</xsl:attribute>
		<xsl:value-of select="title | name" />
	</a>
</xsl:template>

<xsl:template name="toggle-get-param">
	<xsl:param name="param" />
	<xsl:param name="value" />
		<xsl:choose>
		<xsl:when test="contains(/data/params/*[name() = concat('url-',$param)],$value)">
			<xsl:call-template name="remove-get-param">
				<xsl:with-param name="param" select="$param" />
				<xsl:with-param name="value" select="$value" />
			</xsl:call-template>
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="add-get-param">
				<xsl:with-param name="param" select="$param" />
				<xsl:with-param name="value" select="$value" />
			</xsl:call-template>
		</xsl:otherwise>
	</xsl:choose>	
</xsl:template>

<xsl:template name="add-get-param">
	<xsl:param name="param" />
	<xsl:param name="value" />
	
	<xsl:text>?</xsl:text>
	<xsl:for-each select="/data/params/*[substring(name(),1,4) = 'url-']">
		<xsl:variable name="current-param" select="substring(name(),5)" />
		<xsl:variable name="new-value">
			<xsl:choose>
				<xsl:when test="$current-param = $param"><xsl:value-of select="concat(current(),',',$value)"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="current()" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:value-of select="concat($current-param,'=',$new-value)" />
		<xsl:if test="position() != last()">&amp;</xsl:if>
	</xsl:for-each>
	<xsl:if test="not(/data/params/*[name() = concat('url-',$param)])"><xsl:if test="count(/data/params/*[substring(name(),1,4) = 'url-']) &gt; 0">&amp;</xsl:if><xsl:value-of select="concat($param,'=',$value)" /></xsl:if>
</xsl:template>

<xsl:template name="remove-get-param">
	<xsl:param name="param" />
	<xsl:param name="value" />
	
	<xsl:choose>
		<xsl:when test="count(/data/params/*[substring(name(),1,4) = 'url-']) &gt; 1 or contains(/data/params/*[substring(name(),1,4) = 'url-'],',')">?</xsl:when>
		<xsl:otherwise>.</xsl:otherwise>
	</xsl:choose>
	<xsl:for-each select="/data/params/*[substring(name(),1,4) = 'url-']">
		<xsl:variable name="current-param" select="substring(name(),5)" />
		<xsl:variable name="new-value">
			<xsl:choose>
				<xsl:when test="$current-param = $param">
					<xsl:variable name="new-string" select="concat(substring-before(current(),$value),substring-after(current(),$value))" />
					<xsl:choose>
						<xsl:when test="contains($new-string,',,')">
							<xsl:value-of select="concat(substring-before($new-string,',,'),',',substring-after($new-string,',,'))"/>
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="$new-string" /></xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise><xsl:value-of select="current()" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="new-trimmed-value">
			<xsl:variable name="string-length" select="string-length($new-value)" />
			<xsl:choose>
				<xsl:when test="substring($new-value,1,1) = ','"><xsl:value-of select="substring($new-value,2)" /></xsl:when>
				<xsl:when test="substring($new-value,$string-length,1) = ','"><xsl:value-of select="substring($new-value,1,$string-length - 1)" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="$new-value" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:if test="$new-trimmed-value != '' and $new-trimmed-value != ','">
			<xsl:value-of select="concat($current-param,'=',$new-trimmed-value)" />
		</xsl:if>
		<xsl:if test="$new-value != '' and $new-value != ',' and position() != last()">&amp;</xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>