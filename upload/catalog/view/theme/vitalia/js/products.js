var scroll = true;
var pozwolenie = true;
var text = false;
$(document).ready(function() {
	$(".col-sm-3 div.product-grid .product-hover, .col-sm-4 div.product-grid .product-hover").hover(function () {
		pozwolenie = false;
	});
	
	$(".container > .block div.product-grid .product-hover, .container .col-sm-12 div.product-grid .product-hover, .container .col-sm-9 div.product-grid .product-hover, .container .col-sm-6 div.product-grid .product-hover, .filter-product .product-hover").hover(function () {
		if(scroll == false) return false;
		if(pozwolenie == false) { 
			pozwolenie = true; 
			return false; 
		}
		if(scroll == true) {
			var width = window.getComputedStyle(this).width;
			var position = $(this).offset();
			if(position.left > 0 && position.top > 0) {
				if(text != $(this).html()) {
					text = $(this).html();
					$(".hover-product").html(text);
				}
				$(".hover-product").show().css("top", position.top).css("left", position.left).css("width", width);
			}
		}
		return false;
	});
	
	$("div.hover-product").hover(function() {
	    $(this).show();
	}, function() {
		$(this).hide();
		scroll = true;
	});
	
	$("header, .custom-footer, .footer").hover(function(){
		$("div.hover-product").hide();
		scroll = true;
		return false;
	});
	
});