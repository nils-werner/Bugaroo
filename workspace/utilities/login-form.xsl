<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 
It is very important that you are using <xsl:include /> instead of 
<xsl:import /> to include this template, otherwise this util will not work!

Background: templates in an imported stylesheet will be overwritten by
templates in the current stylesheet while the ones being included will not.

This util assumes that your master matches "/" and your page matches "data".
-->

<xsl:template match="data[events/user-details/@result = 'failure']">
	<h2>Login</h2>
	<xsl:choose>
		<xsl:when test="/data/events/user-login/@result = 'success'">
			<h3>Successfully logged in!</h3>
			<p>
				Continue to your <a href="{$root}">Dashboard</a>.
			</p>
		</xsl:when>
		<xsl:otherwise>
			<xsl:if test="/data/events/user-login/@result = 'failure'">
				<h3>Error!</h3>
				<p>
					Please try again.
				</p>
			</xsl:if>
			<p>Please enter your email address and password below.</p>
			
			<form action="/user/login/" method="POST">
				<div>
					<div class="clearfix">
						<p>
							<label>Email address
								<input type="text" name="login[email]" id="username" />
							</label>
						</p>
						<p>
							<label for="password">Password
								<input type="password" name="login[password]" id="password" />
							</label>
						</p>
					</div>
				</div>
		
				<p><button type="submit" class="login" name="action[login]">Log in</button></p>
		
				<xsl:if test="$current-page = 'login'">
					<xsl:if test="$response = 'failed'">
						<h2>Login Failed</h2>
						<p>Your username and/or password was not recognised. If you have not yet activated your account, please check your email and try again.</p><br/>
						<p><a href="/support-network/member/activation-email/">Need another activation email?</a></p><br/>
					</xsl:if>
				</xsl:if>
		
				<p><a href="/password-reset/">Reset your password</a></p>
			</form>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>