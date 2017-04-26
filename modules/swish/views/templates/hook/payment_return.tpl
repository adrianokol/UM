{if $status == 'ok'}
	<div class="box">
		<p class="cheque-indent">
			<strong class="dark">{l s='Your order on %s is complete.' sprintf=$shop_name mod='swish'}</strong>
		</p>
		{l s='Please send us a Swish with' mod='swish'}
		<br />- {l s='Amount' mod='swish'} <span class="price"> <strong>{$total_to_pay}</strong></span>
		<br />- {l s='Name of account owner' mod='swish'}  <strong>{if $swishOwner}{$swishOwner}{else}___________{/if}</strong>
		<br />- {l s='Include these details' mod='swish'}  <strong>{if $swishDetails}{$swishDetails}{else}___________{/if}</strong>
		<br />- {l s='Bank name' mod='swish'}  <strong>{if $swishAddress}{$swishAddress}{else}___________{/if}</strong>
		{if !isset($reference)}
			<br />- {l s='Do not forget to insert your order number #%d in the subject of your Swish' sprintf=$id_order mod='swish'}
		{else}
			<br />- {l s='Do not forget to insert your order reference %s in the subject of your Swish.' sprintf=$reference mod='swish'}
		{/if}		<br /><br>{l s='An email has been sent with this information.' mod='swish'}
		<br /> <strong>{l s='Your order will be sent as soon as we receive payment.' mod='swish'}</strong>
		<br />{l s='If you have questions, comments or concerns, please contact our' mod='swish'} <a href="{$link->getPageLink('contact', true)|escape:'html':'UTF-8'}" title="{l s='expert customer support team. ' mod='swish'}">{l s='expert customer support team. ' mod='swish'}</a>.
	</div>
{else}
	<p class="alert alert-warning">
		{l s='We noticed a problem with your order. If you think this is an error, feel free to contact our' mod='swish'} 
		<a href="{$link->getPageLink('contact', true)|escape:'html':'UTF-8'}" title="{l s='expert customer support team. ' mod='swish'}">{l s='expert customer support team. ' mod='swish'}</a>.
	</p>
{/if}
