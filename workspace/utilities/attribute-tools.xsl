<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/pluralize.xsl"/>

<xsl:strip-space elements="@"/> 




<xsl:template match="index-users | index-category | index-priority | index-status" mode="select">
	<xsl:param name="field" select="substring-after(name(),'index-')" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="fields[{$field}]">
			<xsl:apply-templates select="entry" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>






<xsl:template match="project-project-contributors-assignees" mode="select">
	<xsl:param name="field" select="'assignee'" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="fields[{$field}]">			
			<xsl:apply-templates select="entry" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>






<xsl:template match="project-project-milestones" mode="select">
	<xsl:param name="field" select="'milestone'" />
	<xsl:param name="label" select="section" />
	<xsl:param name="issue-item" />
	<xsl:param name="selected-value" select="$issue-item/*[name() = $field]/item/@id" />
	
	<label><xsl:value-of select="$label" />
		<select name="fields[{$field}]">
			<xsl:apply-templates select="entry" mode="option-tag">
				<xsl:with-param name="selected-value" select="$selected-value" />
			</xsl:apply-templates>
		</select>
	</label>
</xsl:template>






<xsl:template match="entry" mode="option-tag">
	<xsl:param name="selected-value" select="''" />
	
	<option>
		<xsl:if test="@id = $selected-value">
			<xsl:attribute name="selected">selected</xsl:attribute>
		</xsl:if>
		<xsl:attribute name="value"><xsl:value-of select="@id" /></xsl:attribute>
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