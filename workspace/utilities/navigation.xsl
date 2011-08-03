<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="system-navigation">
	<ul id="menu">
		<xsl:choose>
			<xsl:when test="$is-logged-in = 'true'">
				<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
				<li><a href="{$root}/user/edit/">My Profile</a></li>
				<li><a href="{$root}/user/logout/">Logout</a></li>
			</xsl:when>
			<xsl:otherwise>
				<li><a href="{$root}/user/login/">Login</a></li>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="$is-admin = 'true'">
			<li><a href="{$root}/symphony/">Admin</a></li>
			<li><a href="?debug">Debug</a></li>
		</xsl:if>
	</ul>
</xsl:template>

<xsl:template match="page">
	<li>
		<a href="{$root}/{@handle}/">
			<xsl:if test="@handle = $root-page">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<xsl:value-of select="name"/>
		</a>
	</li>
</xsl:template>

</xsl:stylesheet>