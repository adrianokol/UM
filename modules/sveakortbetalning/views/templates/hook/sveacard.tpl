{if isset($card) AND $card}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortimg" href="javascript:document.sveacardform.submit();" title="{l s='Pay with visa or mastercard' mod='sveakortbetalning'}">
					{l s='Pay with visa or mastercard' mod='sveakortbetalning'}<br>
					<span>({l s='Use your visa or mastercard to pay securly through our partner, sveawebpay' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveacardform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message}'/>
		<input type='hidden' name='mac' value='{$mac}'/>
	</form>
{/if}

{if isset($swedbank) AND $swedbank}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortswedbankimg" href="javascript:document.sveaswedbankform.submit();" title="{l s='Pay with direct payment using Swedbank' mod='sveakortbetalning'}">
					{l s='Pay with direct payment using Swedbank' mod='sveakortbetalning'}<br>
					<span>({l s='Pay directly using your account at Swedbank.' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveaswedbankform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message_swedbank}'/>
		<input type='hidden' name='mac' value='{$mac_swedbank}'/>
	</form>
{/if}

{if isset($nordea) AND $nordea}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortnordeaimg" href="javascript:document.sveanordeabankform.submit();" title="{l s='Pay with direct payment using Nordea' mod='sveakortbetalning'}">
					{l s='Pay with direct payment using Nordea' mod='sveakortbetalning'}<br>
					<span>({l s='Pay directly using your account at Nordea.' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveanordeabankform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message_nordea}'/>
		<input type='hidden' name='mac' value='{$mac_nordea}'/>
	</form>
{/if}

{if isset($seb) AND $seb}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortsebimg" href="javascript:document.sveasebbankform.submit();" title="{l s='Pay with direct payment using SEB' mod='sveakortbetalning'}">
					{l s='Pay with direct payment using SEB' mod='sveakortbetalning'}<br>
					<span>({l s='Pay directly using your account at SEB.' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveasebbankform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message_seb}'/>
		<input type='hidden' name='mac' value='{$mac_seb}'/>
	</form>
{/if}

{if isset($handelsbanken) AND $handelsbanken}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortshbimg" href="javascript:document.sveahandelsbankenbankform.submit();" title="{l s='Pay with direct payment using Handelsbanken' mod='sveakortbetalning'}">
					{l s='Pay with direct payment using Handelsbanken' mod='sveakortbetalning'}<br>
					<span>({l s='Pay directly using your account at Handelsbanken.' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveahandelsbankenbankform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message_handelsbanken}'/>
		<input type='hidden' name='mac' value='{$mac_handelsbanken}'/>
	</form>
{/if}

{if isset($dancard) AND $dancard}
	<div class="row">
		<div class="col-xs-12 col-md-8">
			<p class="payment_module">
				<a class="sveakortbetalning sveakortdancardimg" href="javascript:document.sveadancardform.submit();" title="{l s='Dancard' mod='sveakortbetalning'}">
					{l s='Dancard' mod='sveakortbetalning'}<br>
					<span>({l s='Pay with your Dancard.' mod='sveakortbetalning'})</span>
				</a>
			</p>
		</div>
	</div>

	<form name='sveadancardform' method='post' action='{$post_url}'>
		<input type='hidden' name='merchantid' value='{$merchant}'/>
		<input type='hidden' name='message' value='{$message_dancard}'/>
		<input type='hidden' name='mac' value='{$mac_dancard}'/>
	</form>
{/if}