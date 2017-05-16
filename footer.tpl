{if !$content_only}
					</div><!-- #center_column -->
					{if isset($right_column_size) && !empty($right_column_size)}
						<div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
					{/if}
					</div><!-- .row -->
                 

                 {if isset($HOOK_HOME) && $HOOK_HOME|trim}
                    <div class="clearfix">{$HOOK_HOME}</div>
                {/if}            

                    
                    
				</div><!-- #columns -->
                                
			</div><!-- .columns-container -->
			<!-- Footer -->
            {if $page_name !='order-opc' && $page_name!='module-bankwire-payment' && $page_name!='module-bankwire-validation' && $page_name!='module-swish-payment' && $page_name!='module-swish-validation' && $page_name!='module-cashondelivery-validation' && $page_name!='module-sveawebpay-invoicepayment' && $page_name!='module-sveawebpay-partpayment' && $page_name!='module-sveawebpay-validateinvoice' && $page_name!='module-sveawebpay-validateplay' && $page_name!='order-confirmation'}   
			<div class="footer-container">
				<footer id="footer"  class="container">
					<div class="row paymentlogos">
						<img src="{$img_dir}footer.png" alt="{l s='Our payment options'}" title="{l s='Our payment options'}">
					</div>
					<div class="row footertext">
						<p>{l s='On saccosack you get the nordics biggest selection of saccosacks from the biggest and most known brands. With us you purchase quick and safe and we offer 30 days returns on the entire collection. Quality is a leading star for us and we want to be the best in the market'}
						</p>
					</div>
					<div class="row social">{$HOOK_FOOTER}</div>
				</footer>
			</div><!-- #footer -->            
			{/if}
			<section class="page-product-box page-product-seller">
				<p>{l s='Free delivery on everything &'} <strong>{l s='return guarantee for 40 days!'}</strong></p>
			</section>
      </div>      
            
		</div><!-- #page -->
{/if}

<div id="chatcontainer">
	<div class="chattab"><div class="tabtext">{l s='Chat with us'}</div></div>
	<div class="chatcontent">
		<div class="chatimage">
			<img src="{$img_dir}chatphoto.png?{$smarty.now+3600}">
		</div>
		<div class="chattext">
			<span>
				<h4>{l s='Call us on'} <span>{l s='031-387 53 00'}</span></h4>
				<a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='Send us an email here'}</a>
			</span>
		</div>
	</div>
</div>



{include file="$tpl_dir./global.tpl"}
{literal}
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1001628592;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1001628592/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
{/literal}
	</body>
</html>