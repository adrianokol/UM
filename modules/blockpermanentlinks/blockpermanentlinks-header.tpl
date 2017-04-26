<!-- Block permanent links module HEADER -->
<ul id="header_links">
	<li id="header_link_contact">
    	<a {if $page_name =='contact'}class="active"{/if} href="{$link->getPageLink('contact', true)|escape:'html'}" title="{l s='contact' mod='blockpermanentlinks'}">{l s='contact' mod='blockpermanentlinks'}</a>
    </li>
	<li id="header_link_terms">
    	<a {if $request == $link->getCMSLink(3)}class="active"{/if} href="{$link->getCMSLink(3)|escape:'html'}" title="{l s='Terms and Conditions' mod='blockpermanentlinks'}">{l s='Terms and Conditions' mod='blockpermanentlinks'}</a>
    </li>
	<li id="header_link_guide">
    	<a {if $request == $link->getCMSLink(7)}class="active"{/if} href="{$link->getCMSLink(7)|escape:'html'}" title="{l s='LED Guide' mod='blockpermanentlinks'}">{l s='LED Guide' mod='blockpermanentlinks'}</a>
    </li>
	<li id="header_link_about">
    	<a {if $request == $link->getCMSLink(4)}class="active"{/if} href="{$link->getCMSLink(4)|escape:'html'}" title="{l s='About us' mod='blockpermanentlinks'}">{l s='About us' mod='blockpermanentlinks'}</a>
    </li>	
{*
	<li id="header_link_sitemap">
    	<a {if $page_name =='sitemap'}class="active"{/if} href="{$link->getPageLink('sitemap')|escape:'html'}" title="{l s='sitemap' mod='blockpermanentlinks'}">{l s='sitemap' mod='blockpermanentlinks'}</a>
    </li>
*}
</ul>

<!-- /Block permanent links module HEADER -->
