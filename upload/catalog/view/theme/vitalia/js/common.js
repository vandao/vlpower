$(document).ready(function() {
	/* Search */
	$('.button-search').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('header input[name=\'search\']').val();
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('header input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('header input[name=\'search\']').val();
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300) {
	    	$('.scrollup').fadeIn();
	    } else {
			$('.scrollup').fadeOut();
		}
	}); 
	
	$('.scrollup').click(function(){
		$("html, body").animate({ scrollTop: 0 }, 600);
		return false;
	});
	
	/* Search MegaMenu */
	$('.button-search2').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('.container-megamenu input[name=\'search2\']').val();
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('.container-megamenu input[name=\'search2\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('.container-megamenu input[name=\'search2\']').val();
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Quatity buttons */
	
	$('#q_up').click(function(){
		var q_val_up=parseInt($("input#quantity_wanted").val());
		if(isNaN(q_val_up)) {
			q_val_up=0;
		}
		$("input#quantity_wanted").val(q_val_up+1).keyup(); 
		return false; 
	});
	
	$('#q_down').click(function(){
		var q_val_up=parseInt($("input#quantity_wanted").val());
		if(isNaN(q_val_up)) {
			q_val_up=0;
		}
		
		if(q_val_up>1) {
			$("input#quantity_wanted").val(q_val_up-1).keyup();
		} 
		return false; 
	});
});

function getURLVar(key) {
	var value = [];
	
	var query = String(document.location).split('?');
	
	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
} 

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {

				$.magnificPopup.open({
				  items: {
				    src: '<div class="clearfix">' + json['success'] + '<br><br><a href="#" class="popup-modal-dismiss button-continue-shopping">« ' + continue_shopping_text + '</a><a href="' + checkout_url + '" class="button-checkout">' + checkout_text + ' »</a></div>', 
				    type: 'inline'
				  },
				  fixedContentPos: false,
				  fixedBgPos: true,
				  overflowY: 'auto',
				  closeBtnInside: true,
				  preloader: false,
				  midClick: true,
				  removalDelay: 300,
				  mainClass: 'notification'
				});
				
				$('#cart_block').load('index.php?route=module/cart #cart_block > *');
				
			}	
		}
	});
}

$(document).on('click', '.popup-modal-dismiss', function (e) {
	e.preventDefault();
	$.magnificPopup.close();
});

function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {						
			if (json['success']) {
				$.magnificPopup.open({
				  items: {
				    src: '<div class="clearfix">' + json['success'] + '</div>', 
				    type: 'inline'
				  },
				  fixedContentPos: false,
				  fixedBgPos: true,
				  overflowY: 'auto',
				  closeBtnInside: true,
				  preloader: false,
				  midClick: true,
				  removalDelay: 300,
				  mainClass: 'notification'
				});
				
				$('#wishlist-total').html(json['total']);
				
			}	
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {						
			if (json['success']) {
				$.magnificPopup.open({
				  items: {
				    src: '<div class="clearfix">' + json['success'] + '</div>', 
				    type: 'inline'
				  },
				  fixedContentPos: false,
				  fixedBgPos: true,
				  overflowY: 'auto',
				  closeBtnInside: true,
				  preloader: false,
				  midClick: true,
				  removalDelay: 300,
				  mainClass: 'notification'
				});
				
				$('#compare-total').html(json['total']);
			}	
		}
	});
}