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
                    	{if $category->id_image}
                        <div class="category-image hidden-xs col-xs-12 col-sm-5 col-md-5 col-lg-5">
                        	<img class="img-responsive" src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'tm_home_default')|escape:'html':'UTF-8'}?{$smarty.now+3600}" alt="{$category->name|escape:'html':'UTF-8'}" />
                        </div>
                        {/if}
                       
                            <div class="cat_desc  col-xs-12 col-sm-12 col-md-12 col-lg-12">
{*
                            <h1 class="category-name">
                                {strip}
                                    {$category->name|escape:'html':'UTF-8'}
                                    {if isset($categoryNameComplement)}
                                        {$categoryNameComplement|escape:'html':'UTF-8'}
                                    {/if}
                                {/strip}
                            </h1>
*}
{*
                            {if Tools::strlen($category->description) > 350}
                                <div id="category_description_short" class="rte">{$description_short}</div>
                                <div id="category_description_full" class="unvisible rte">{$category->description}</div>
                                <a href="{$link->getCategoryLink($category->id_category, $category->link_rewrite)|escape:'html':'UTF-8'}" class="lnk_more" title="{l s='More'}">{l s='More'}</a>
                            {else}
*}
 {if $category->description}
                                {*<div class="rte">{$category->description}</div>*}
								<div class="rte">{$categoryDescription}</div>
{/if}
{*
                            {/if}
*}
                            </div>

                     </div>
                  {/if}
            </div>
		{/if}
		
		<b class="page-heading{if (isset($subcategories) && !$products) || (isset($subcategories) && $products) || !isset($subcategories) && $products} product-listing{/if}">
        	{* <span class="cat-name">{$category->name|escape:'html':'UTF-8'}{if isset($categoryNameComplement)}&nbsp;{$categoryNameComplement|escape:'html':'UTF-8'}{/if}</span> *}
  {*          {include file="$tpl_dir./category-count.tpl"} *}
        </b>
		

        {if isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">
			<p class="subcategory-heading">{l s='Subcategories'}</p>
			<ul class="clearfix">
			{foreach from=$subcategories item=subcategory}
				<li>
                	<div class="subcategory-image">
						<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
							{if $subcategory.id_image}
								<img class="replace-2x" src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'tm_medium_default')|escape:'html':'UTF-8'}" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
							{else}
								<img class="replace-2x" src="{$img_cat_dir}default-medium_default.jpg" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
							{/if}
						</a>
                   	</div>
					<h5>
                    	<a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:50}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:350}</a>
                    </h5>
{*
					{if $subcategory.description}
						<div class="cat_desc">{$subcategory.description}</div>
					{/if}
*}
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
{*
			<div class="content_sortPagiBar clearfix">
            	<div class="sortPagiBar clearfix">
            		{include file="./product-sort.tpl"}
                	{include file="./nbr-product-page.tpl"}
				</div>
                <div class="top-pagination-content clearfix">
                	{include file="./product-compare.tpl"}
					{include file="$tpl_dir./pagination.tpl"}
					
                </div>
			</div>
*}
			{include file="./product-list.tpl" products=$products}
{*
			<div class="content_sortPagiBar">
				<div class="bottom-pagination-content clearfix">
					{include file="./product-compare.tpl" paginationId='bottom'}
                    {include file="./pagination.tpl" paginationId='bottom'}
				</div>
			</div>
*}
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
								
	{elseif $category->id}
		<p class="alert alert-warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}