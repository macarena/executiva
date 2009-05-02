{strip}
<div id="siteloginbar">
	{if $user}
		Logado como: {$user|userlink} | <a href="tiki-logout.php" title="{tr}Logout{/tr}">Sair</a>
	{else}
		{* <a href="tiki-login_scr.php" title="{tr}Login{/tr}">Entrar</a> *}
		{*
		<form class="forms" name="loginbox" action="tiki-login.php" method="post">
			<label for="sl-login-user">{if $prefs.login_is_email eq 'y'}{tr}Email{/tr}{else}{tr}User{/tr}{/if}:</label>
			<input type="text" name="user" id="sl-login-user" />
			<label for="sl-login-pass">{tr}Password{/tr}:</label>
			<input type="password" name="pass" id="sl-login-pass" size="10" />
			{if $prefs.rememberme eq 'always'}<input type="hidden" name="rme" value="on" />{/if}
			<input class="wikiaction" type="submit" name="login" value="{tr}Login{/tr}" />
		</form>
		{if $prefs.allowRegister eq 'y'}
			<div class="register">
				 <a href="tiki-register.php" title="{tr}Click here to register{/tr}">{tr}Register{/tr}</a>
			</div>
		{/if}
		{if $prefs.change_password eq 'y' and $prefs.forgotPass eq 'y'}
			<div class="pass">
				 <a href="tiki-remind_password.php" title="{tr}Click here if you've forgotten your password{/tr}">{tr}I forgot my password{/tr}</a>
			</div>
		{/if}
		*}
	{/if}
</div>
{/strip}
