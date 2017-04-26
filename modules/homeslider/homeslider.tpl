{if $page_name =='index'}
    <!-- Module HomeSlider -->
    {if isset($homeslider_slides)}
        <div id="homepage-slider">
			{if isset($homeslider_slides.0) && isset($homeslider_slides.0.sizes.1)}{capture name='height'}{$homeslider_slides.0.sizes.1}{/capture}{/if}
            <ul id="homeslider"{if isset($smarty.capture.height) && $smarty.capture.height} style="max-height:{$smarty.capture.height}px;"{/if}>
                {foreach from=$homeslider_slides name=items item=slide}
                    {if $slide.active}   
                        <li class="homeslider-container  number{$smarty.foreach.items.iteration}">
                            <a href="{$slide.url|escape:'html':'UTF-8'}" title="{$slide.legend|escape:'html':'UTF-8'}">
                                <img src="{$link->getMediaLink("`$smarty.const._MODULE_DIR_`homeslider/images/`$slide.image|escape:'htmlall':'UTF-8'`")}?{$smarty.now+3600}"{if isset($slide.size) && $slide.size} {$slide.size}{else} width="100%" height="100%"{/if} alt="{$slide.legend|escape:'htmlall':'UTF-8'}" />
                            </a>
{*
                            {if isset($slide.description) && trim($slide.description) != ''}
                                <div class="homeslider-description">{$slide.description}</div>
                            {/if}
*}
                        </li>
                    {/if}
                {/foreach}
            </ul>
            
           {*
            <div id="bx-pager-thumb">
            	{foreach from=$homeslider_slides item=slides name=slides}
                	{if $slide.active}
                    	<a data-slide-index="{$smarty.foreach.slides.iteration - 1}" href=""><img src="{$link->getMediaLink("`$smarty.const._MODULE_DIR_`homeslider/images/`$slides.image|escape:'htmlall':'UTF-8'`")}" alt="" /></a>
                    {/if}
                {/foreach}
            </div>
           *}
            
        </div>
    {/if}
    <!-- /Module HomeSlider -->
	<!-- index menu -->
			{$cats = Category::getNestedCategories(2, (int)$this->context->language->id, false, array(Configuration::get('PS_UNIDENTIFIED_GROUP')))}
			<ul class="index-menu">
				{foreach from=$cats[2]['children'] item=category}
				{if $category.active}
				{$link = Context::getContext()->link->getCategoryLink($category.id_category)}
				<li>
					<a href="{$link}">
						<div>
							{$img = $img_ps_dir|cat:"c/"|cat:$category.id_category|cat:"-medium_default.jpg"}
							<img src="{$img}?{$smarty.now+3600}" alt="{Tools::SafeOutput($category.name)}" title="{Tools::SafeOutput($category.name)}" class="imgm" />
						</div>
						<div class="menutext">
							<h2>{$category.name}</h2>
						</div>
						<div class="menuarrow"><span>></span></div>
					</a>
				</li>
				{/if}
				{/foreach}
			</ul>
	<!-- /index menu -->
{/if}





            