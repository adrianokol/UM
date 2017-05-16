<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7 " lang="{$lang_iso}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$lang_iso}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$lang_iso}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$lang_iso}"><![endif]-->
<html lang="{$lang_iso}">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
{/if}
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
        
		<meta name="apple-mobile-web-app-capable" content="yes" /> 
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
		<link rel="stylesheet" href="{$css_uri}?{$smarty.now+3600}" media="{$media}" />
	{/foreach}
{/if}

    {if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
    {$js_def}
    {foreach from=$js_files item=js_uri}
    <script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}?{$smarty.now+3600}"></script>
    {/foreach}
    {/if}


		{$HOOK_HEADER}
		<link rel="stylesheet" href="http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Open+Sans:300,600" media="all" />
        <link href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
		<link href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Roboto:400,500,700,900' rel='stylesheet' type='text/css'>
	{*
		<link rel="stylesheet" href="{$css_dir}open_sans.css?{$smarty.now+3600}" media="all" />
        <link href='{$css_dir}roboto_condensed.css?{$smarty.now+3600}' rel='stylesheet' type='text/css'>
		<link href='{$css_dir}roboto.css?{$smarty.now+3600}' rel='stylesheet' type='text/css'>
	*}
		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->
		
		<!-- canonical -->
		{if $page_name == 'category' and $id_category == '46'}
			<link rel="canonical" href="https://ljusgiganten.se/led-ljusramp" />
		{elseif $page_name == 'category' and $id_category == '58'}
			<link rel="canonical" href="http://ljusgiganten.se/led-arbetsbelysning" />
		{elseif $page_name == 'category' and $id_category == '49'}
			<link rel="canonical" href="https://ljusgiganten.se/saftblandare" />
		{elseif $page_name == 'category' and $id_category == '51'}
			<link rel="canonical" href="https://ljusgiganten.se/blixtljusramper" />
		{elseif $page_name == 'index' or $page_name == 'search'}
		  <link rel="canonical" href="{$base_dir_ssl}" />
		{elseif $page_name == 'category' or $page_name == 'best-sales' or $page_name == 'cart' or $page_name == 'discount' or $page_name == 'manufacturer' or $page_name == 'new-products' or $page_name == 'prices-drop'}
		  <link rel="canonical" href="{$base_dir_ssl}{$request_uri|substr:1|regex_replace:'/\/(.*)/':''|regex_replace:'/\?(.*)/':''}" />
		{else}
		  <link rel="canonical" href="{$base_dir_ssl}{$request_uri|substr:1}" />
		{/if}
		<!-- /canonical -->
	</head>

	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if $content_only} content_only{/if} lang_{$lang_iso}{if !$hide_left_column && !$hide_right_column} two_columns{/if}">
	{literal}

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '850784948355158');
fbq('track', "PageView");</script>
<noscript><img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=850784948355158&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
{/literal}

	{if !$content_only}
    	<!--[if IE 8]>
        <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div>
		<![endif]-->
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'} <span class="bold">{$geolocation_country}</span></p>
			</div>
		{/if}
		<div id="page">
			<div class="header-container">
				<header id="header">
					<div class="banner">
						<div class="container">
							<div class="row">
								{hook h="displayBanner"}
							</div>
						</div>
					</div>
					<div class="top-bar-background"><div></div></div>
					<div class="nav">
						<div class="container">
							<div class="row">
                            
                            
								<nav>
                                <div id="header_logo">
									<a href="{$base_dir}" title="{$shop_name|escape:'html':'UTF-8'}">
										<img class="logo img-responsive" src="{$logo_url}?{$smarty.now+3600}" alt="{$shop_name|escape:'html':'UTF-8'}"{if $logo_image_width} width="{$logo_image_width}"{/if}{if $logo_image_height} height="{$logo_image_height}"{/if}/>
									</a>
								</div>                                
                                {hook h="displayNav"}</nav>
							</div>
						</div>
					</div>
					<div class="row-top">
						<div class="container">
							<div class="row">								
								{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
							</div>
						</div>
					</div>
				</header>
			</div>
          
        <div class="container-out">    
			<div class="columns-container">
				<div id="columns" class="container">
					{if $page_name !='index' && $page_name !='pagenotfound' && $page_name!='module-bankwire-payment' && $page_name!='module-bankwire-validation' && $page_name!='module-swish-payment' && $page_name!='module-swish-validation' && $page_name!='module-cashondelivery-validation' && $page_name!='module-sveawebpay-invoicepayment' && $page_name!='module-sveawebpay-partpayment' && $page_name!='module-sveawebpay-validateinvoice' && $page_name!='module-sveawebpay-validateplay' && $page_name!='order-confirmation'}
						{include file="$tpl_dir./breadcrumb.tpl"}
					{/if}
					<div class="row">
						<div id="top_column" class="center_column col-xs-12">{hook h="displayTopColumn"}</div>
					</div>
					<div class="row">
					{*
						{if isset($left_column_size) && !empty($left_column_size)}
						<div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
						{/if}
						<div id="center_column" class="center_column col-xs-12 col-sm-{12 - $left_column_size - $right_column_size}">
					*}
						{if !empty($HOOK_LEFT_COLUMN)}
						<div id="left_column" class="column col-xs-12 col-sm-3 col-md-2">{$HOOK_LEFT_COLUMN}</div>
						<div id="center_column" class="center_column col-xs-12 col-sm-9 col-md-10">
						{else}
						<div id="center_column" class="center_column col-xs-12 col-sm-12">
						{/if}
	{/if}