$(document).ready(function(){
	$(document).on('click', '.lnk_more', function(e){
		e.preventDefault();
		$('#category_description_short').hide(); 
		$('#category_description_full').show(); 
		$(this).hide();
	});
	
	$(".questionClick").click(function() {
		if ($(this).hasClass("active")) {
			$(this).parents(".question").find(".answer").hide();
			$(this).toggleClass("active");
		} else {
			$(".question").find(".answer").hide();
			$(".questionClick").removeClass("active");
			$(this).parents(".question").find(".answer").show(500);
			$(this).toggleClass("active");
		}
	});
	/*
	$(".question .questionClick").first().addClass("active");
	$(".question .answer").first().show();
	*/
	
	
	//enable filter
	$("#LG_filter .filterbutton").click(function() {
		$(".product_list li.ajax_block_product").show();
		$(".product_list li.ajax_block_product:not([data-filter=" + $(this).data('filterby') +"])").hide();
	});

});