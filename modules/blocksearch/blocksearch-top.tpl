<!-- Block search module TOP -->
<div id="search_block_top">
	{*
	<span>
		<div class="firstsearch"><b>{l s='Free shipping' mod='blocksearch'}</b> {l s='over 500' mod='blocksearch'}</div>
		<div class="secondsearch">{l s='Always' mod='blocksearch'} <b>{l s='super purchase' mod='blocksearch'}</b></div>
		<div class="thirdsearch"><b>{l s='The nordics greatest' mod='blocksearch'}</b> {l s='furniture collection' mod='blocksearch'}</div>
	</span>
	*}
	<form id="searchbox" method="get" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" >	
		<input type="hidden" name="controller" value="search" />
		<input type="hidden" name="orderby" value="position" />
		<input type="hidden" name="orderway" value="desc" />
		<input class="search_query form-control" type="text" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}" value="{$search_query|escape:'htmlall':'UTF-8'|stripslashes}" />
	{*
		<button type="submit" name="submit_search" class="btn btn-default button-search">
			<span>{l s='Search' mod='blocksearch'}</span>
		</button>
	*}
	</form>
</div>
{*
<div id="customerservice_block">
	<span class="customerservice_text">
		<div>{l s='Contact us' mod='blocksearch'}</div>
		<div class="contact-phonenumber">{l s='031-3875300' mod='blocksearch'}</div>
	</span>
	<img src="{$img_dir}contact-girl.png?{$smarty.now+3600}" />
</div>
*}
<!-- /Block search module TOP -->