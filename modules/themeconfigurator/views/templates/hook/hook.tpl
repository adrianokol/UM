{if isset($htmlitems) && $htmlitems}
    {assign var='hookName' value={$hook|escape:'htmlall':'UTF-8'}}
    <div id="htmlcontent_{$hookName}">
		{*
        <h3>{l s='Choose a saccosack that brightens your day' mod='themeconf'}</h3>
        *}
        <ul class="htmlcontent-home clearfix row">
            {foreach name=items from=$htmlitems item=hItem}
                <li class="htmlcontent-item-{$smarty.foreach.items.iteration|escape:'htmlall':'UTF-8'}{if $hookName =='footer'} col-xs-4{/if}">
                    {if $hItem.url}
                        <a href="{$hItem.url|escape:'htmlall':'UTF-8'}" class="item-link"{if $hItem.target == 1} onclick="return !window.open(this.href);"{/if} title="{$hItem.title|escape:'htmlall':'UTF-8'}">
                    {/if}
                    <div>
                        {if $hItem.image}
                            <img src="{$link->getMediaLink("`$module_dir`img/`$hItem.image`")}?{$smarty.now+3600}" class="item-img" title="{$hItem.title|escape:'htmlall':'UTF-8'}" alt="{$hItem.title|escape:'htmlall':'UTF-8'}" width="{if $hItem.image_w}{$hItem.image_w|intval}{else}100%{/if}" height="{if $hItem.image_h}{$hItem.image_h|intval}{else}100%{/if}"/>
                        {/if}
                        
                        {if $hItem.title && $hItem.title_use == 1}
                            <h3 class="item-title">{$hItem.title|escape:'htmlall':'UTF-8'}</h3>
                        {/if}
                        {if $hItem.html}
                            <div class="item-html">
                                {$hItem.html}
                            </div>
                        {/if}
                        </div>
                    {if $hItem.url}
                        </a>
                    {/if}
                </li>
            {/foreach}
        </ul>
    </div>
{/if}
