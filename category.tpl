{include file="$tpl_dir./errors.tpl"}

{* Do some description splitting *}
{if strpos($category->description, "####")}
	{assign var="categoryDescription" value=substr($category->description, 0, strpos($category->description, "####"))}
	{assign var="questions" value=explode("###", substr($category->description, strpos($category->description, "####")+4))}
{else}
	{assign var="categoryDescription" value=$category->description}
{/if}

{if isset($category)}
	{if $category->id} {* AND $category->active} *}
		<h1 class="category-name">
			{strip}
				{$category->name|escape:'html':'UTF-8'}
				{if isset($categoryNameComplement)}
					{$categoryNameComplement|escape:'html':'UTF-8'}
				{/if}
			{/strip}
		</h1>

        {if isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">
			<ul class="clearfix row">
			{foreach from=$subcategories item=subcategory}
				<li class="col-xs-12 col-sm-6 col-md-4">
                	<div class="subcategory-image">
						<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
							<h5>
								<span class="subcategory-name-background"></span>
								<span class="subcategory-name">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:350}</span>
							</h5>
							{if $subcategory.id_image}
								<img class="replace-2x" src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'tm_medium_default')|escape:'html':'UTF-8'}" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
							{else}
								<img class="replace-2x" src="{$img_cat_dir}default-medium_default.jpg" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
							{/if}
						</a>
                   	</div>
				</li>
			{/foreach}
			</ul>
		</div>
		{/if}

		{if Tools::getValue('filter')}
			<div id="LG_filter">
				{assign var="filter_suppliers" value=Supplier::getSuppliers()}
				{foreach from=$filter_suppliers item=filter_sup}
					<img src="{$img_sup_dir}{$filter_sup.id_supplier}-tm_medium_default.jpg?{$smarty.now+3600}" data-filterby="{$filter_sup.id_supplier}" class="filterbutton" />
				{/foreach}
			</div>
		{/if}
		
		
        {if $products}
			{include file="./product-list.tpl" products=$products}
		{/if}
		
    	{if $scenes || $category->description || $category->id_image}
			<div class="content_scene_cat">
            	 {if $scenes}
                 	<div class="content_scene">
                        <!-- Scenes -->
                        {include file="$tpl_dir./scenes.tpl" scenes=$scenes}
                        {if $category->description}
                            <div class="cat_desc rte">
                            {if Tools::strlen($category->description) > 350}
                                <div id="category_description_short">{$description_short}</div>
                                <div id="category_description_full" class="unvisible">{$category->description}</div>
                                <a href="{$link->getCategoryLink($category->id_category, $category.link_rewrite)|escape:'html':'UTF-8'}" class="lnk_more" title="{l s='More'}">{l s='More'}</a>
                            {else}
                                <div>{$category->description}</div>
                            {/if}
                            </div>
                        {/if}
                        </div>
                    {else}
                    <!-- Category image -->
                    <div class="content_scene_cat_bg row">
{*
                    	{if $category->id_image}
                        <div class="category-image hidden-xs col-xs-12 col-sm-5 col-md-5 col-lg-5">
                        	<img class="img-responsive" src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'tm_home_default')|escape:'html':'UTF-8'}?{$smarty.now+3600}" alt="{$category->name|escape:'html':'UTF-8'}" />
                        </div>
                        {/if}
*}
                       
                        <div class="cat_desc  col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            {if $category->description}
                            <div class="rte">{$categoryDescription}</div>
                            {/if}
                        </div>
                     </div>
                  {/if}
            </div>
		{/if}

		{if $questions}
			{foreach from=$questions item=q name="foo"}
				{assign var="theQuestion" value=array_shift(explode("##", $q))}
				{assign var="theAnswer" value=array_pop(explode("##", $q))}
				{if substr($theQuestion, -11) == "<p><strong>"}
					{continue}
				{/if}
				{if $theQuestion && $theAnswer}
					<div class="question">
						<h2 class="questionClick">{$theQuestion}</h2>
						<div class="answer">{$theAnswer}</div>
					</div>
				{/if}
			{/foreach}
		{/if}
								
	{* {elseif $category->id} *}
	{else}
		<p class="alert alert-warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}