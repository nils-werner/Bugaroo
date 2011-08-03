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

<xsl:template match="data">
<form method="post" action="" enctype="multipart/form-data">
  <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  <xsl:value-of select="/data/events/user-update/error" />
  <!-- <label>Username
    <input name="fields[username]" type="text" />
  </label>
  <label>Role
    <select name="fields[role]">
      <option value="Inactive">Inactive</option>
      <option value="Customer">Customer</option>
      <option value="Developer">Developer</option>
    </select>
  </label> -->
  <label>Name
    <input name="users[name]" type="text" value="{/data/events/user-details/name}" />
  </label>
  <label>Company
    <input name="users[company]" type="text" value="{/data//events/user-details/company}" />
  </label>
  <label>Email
    <input name="users[email]" type="text" value="{/data//events/user-details/email}" />
  </label>
  <label>Password
    <input name="users[password]" type="password" />
  </label>
  <label>Password Repeat
    <input name="users[password-repeat]" type="password" />
  </label>
  <!-- <label>Token
    <input name="fields[token]" type="text" />
  </label>
  <label>None
    <input name="fields[none]" type="checkbox" />
  </label> -->
  <input name="action[user-update]" type="submit" value="Submit" />
</form>
</xsl:template>
</xsl:stylesheet>