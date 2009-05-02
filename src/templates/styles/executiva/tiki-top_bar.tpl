{if $prefs.feature_siteidentity eq 'y' && $prefs.feature_top_bar eq 'y'}
{if $prefs.feature_topbar_version eq 'y'}
{tr}This is{/tr} Tikiwiki v{$tiki_version} {if $tiki_uses_cvs eq 'y'} (CVS){/if} -{$tiki_star}- &#169; 2002&#8211;2008 {tr}by the{/tr} <a href="http://tikiwiki.org" 
title="tikiwiki.org">{tr}Tiki community{/tr}</a>
{/if}
{if $prefs.feature_topbar_date eq 'y'}
{if $prefs.feature_calendar eq 'y' and $tiki_p_view_calendar eq 'y'}
  <a href="tiki-calendar.php">{$smarty.now|tiki_short_datetime}</a>
{else}
  {$smarty.now|tiki_short_datetime}
{/if}
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_topbar_debug eq 'y' and $tiki_p_admin eq 'y' and $prefs.feature_debug_console eq 'y'}
  &#160;//&#160;<a href="javascript:toggle('debugconsole');">{tr}debug{/tr}</a>
{/if}
{if $prefs.feature_site_login eq 'y'}
	{include file="tiki-site_header_login.tpl"}
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_sitemenu eq 'y'}
	{if $prefs.feature_phplayers eq 'y'}
		{phplayers id=$prefs.feature_topbar_id_menu type=horiz}
	{else}
		{menu id=$prefs.feature_topbar_id_menu type=horiz css=y}
	{/if}
{/if}
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_tell_a_friend eq 'y' && $tiki_p_tell_a_friend eq 'y' and (!isset($edit_page) or $edit_page ne 'y')}
<div class="tellafriend"><a href="tiki-tell_a_friend.php?url={$smarty.server.REQUEST_URI|escape:'url'}">{icon _id=email_link alt="{tr}Email this page{/tr}"}</a></div>
{/if}
{if $prefs.feature_siteidentity eq 'y' and $prefs.feature_topbar_custom_code}{eval var=$prefs.feature_topbar_custom_code}{/if}
{if $prefs.feature_siteloc eq 'y' and $prefs.feature_breadcrumbs eq 'y'}
		<div id="sitelocbar">
			<small>{if $prefs.feature_siteloclabel eq 'y'}{tr}Location : {/tr}{/if}{if $trail}{breadcrumbs type="trail" loc="site" crumbs=$trail}{breadcrumbs type="pagetitle" loc="site" crumbs=$trail}{else}<a title="{tr}{$crumbs[0]->description}{/tr}" href="{$crumbs[0]->url}" accesskey="1">{$crumbs[0]->title}</a>
		{if $structure eq 'y'}
			{section loop=$structure_path name=ix}
				{$prefs.site_crumb_seper|escape:"html"}
				{if $structure_path[ix].pageName ne $page or $structure_path[ix].page_alias ne $page_info.page_alias}
			<a href="tiki-index.php?page_ref_id={$structure_path[ix].page_ref_id}">
				{/if}
				{if $structure_path[ix].page_alias}
					{$structure_path[ix].page_alias}
				{else}
					{if $beingStaged eq 'y' and $prefs.wikiapproval_hideprefix == 'y'}{$approvedPageName}{else}{$structure_path[ix].pageName}{/if}
				{/if}
				{if $structure_path[ix].pageName ne $page or $structure_path[ix].page_alias ne $page_info.page_alias}
					</a>
				{/if}
			{/section}
		{else}
			{if $page ne ''}{$prefs.site_crumb_seper|escape:"html"} {if $beingStaged eq 'y' and $prefs.wikiapproval_hideprefix == 'y'}{$approvedPageName}{else}{$page}{/if}
			{elseif $title ne ''}{$prefs.site_crumb_seper|escape:"html"} {$title}
			{elseif $thread_info.title ne ''}{$prefs.site_crumb_seper|escape:"html"} {$thread_info.title}
			{elseif $forum_info.name ne ''}{$prefs.site_crumb_seper|escape:"html"} {$forum_info.name}{/if}
		{/if}
	{/if}</small>
		</div>{* bar with location indicator *}
	{if $trail}{breadcrumbs	type="desc"	loc="site" crumbs=$trail}{
	 else}{breadcrumbs type="desc" loc="site" crumbs=$crumbs}{/if}
{/if}
