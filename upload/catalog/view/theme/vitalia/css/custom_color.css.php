<?php header('Content-type: text/css; charset=utf-8'); ?>

<?php if(!isset($_GET['color_status'])) { ?>
	<?php if($_GET['body_font_text'] != '') { ?>
	body,
	.dropdown-menu,
	textarea, 
	input[type="text"], 
	input[type="password"], 
	input[type="datetime"], 
	input[type="datetime-local"], 
	input[type="date"], 
	input[type="month"], 
	input[type="time"], 
	input[type="week"], 
	input[type="number"], 
	input[type="email"], 
	input[type="url"], 
	input[type="search"], 
	input[type="tel"], 
	input[type="color"], 
	.uneditable-input,
	select,
	.search_form .button-search,
	.search_form .button-search2,
	.product-filter .options .button-group button {
		color: #<?php echo $_GET['body_font_text']; ?>;
	}
	
	.ui-autocomplete li a {
		color: #<?php echo $_GET['body_font_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_font_links'] != '') { ?>
	a,
	.dropdown-menu a,
	.vertical ul.megamenu > li > a,
	.filter-product .filter-tabs ul > li.active > a,
	.filter-product .filter-tabs ul > li.active > a:hover,
	.filter-product .filter-tabs ul > li.active > a:focus {
		color: #<?php echo $_GET['body_font_links']; ?>;
	}
	
	@media (max-width: 960px) {
		.responsive ul.megamenu > li > a {
			color: #<?php echo $_GET['body_font_links']; ?> !important;
		}
	}
	<?php } ?>
	
	<?php if($_GET['body_font_links_hover'] != '') { ?>
	a:hover,
	.box-category ul li a.active,
	.product-list .actions > div ul,
	.product-info .cart .links a:before,
	.product-grid .product .only-hover ul li a span,
	.hover-product .only-hover ul li a span,
	.product-list .name-desc .rating-reviews .reviews span,
	.product-list .actions > div ul,
	.main-content .content > ul li:before,
	.list-box li:before,
	.breadcrumb .container ul li:before,
	ul.megamenu li .sub-menu .content .static-menu .menu ul ul li:before,
	ul.megamenu li .sub-menu .content .hover-menu a:before,
	.vertical ul.megamenu > li.click:before, 
	.vertical ul.megamenu > li.hover:before {
		color: #<?php echo $_GET['body_font_links_hover']; ?>;
	}
	
	.product-filter .options .button-group button:hover, 
	.product-filter .options .button-group .active {
		background: #<?php echo $_GET['body_font_links_hover']; ?>;
	}
	
	@media (max-width: 960px) {
		.responsive ul.megamenu > li.click:before, 
		.responsive ul.megamenu > li.hover:before,
		.responsive ul.megamenu > li.active .close-menu:before {
			color: #<?php echo $_GET['body_font_links_hover']; ?>;
		}
	}
	<?php } ?>
	
	<?php if($_GET['body_price_text'] != '') { ?>
	.compare-info .price-new, 
	.product-grid .product .price, 
	.hover-product .price,
	.product-list .actions > div .price,
	.product-info .price .price-new,
	ul.megamenu li .product .price,
	.mini-cart-total td:last-child,
	.cart-total table tr td:last-child,
	.mini-cart-info td.total {
		color: #<?php echo $_GET['body_price_text']; ?>;
	}
	
	.ui-autocomplete li span.price {
		color: #<?php echo $_GET['body_price_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['body_background_color'] != '') { ?>
	body {
		background: #<?php echo $_GET['body_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['header_background_color'] != '') { ?>
	header {
		background: #<?php echo $_GET['header_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['header_border_bottom_color'] != '') { ?>
	header {
		border-bottom: 1px solid #<?php echo $_GET['header_border_bottom_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_bar_text'] != '') { ?>
	#top-bar .container,
	#top-bar .container > div > div > div > a,
	#top-bar .container > div > div > form > div > a {
		color: #<?php echo $_GET['top_bar_text']; ?>;
	}
	
	#top-bar .dropdown .caret {
		border-top: 4px solid #<?php echo $_GET['top_bar_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_bar_background_gradient_top'] != '' && $_GET['top_bar_background_gradient_bottom'] != '') { ?>
	#top-bar .background {
		background: #<?php echo $_GET['top_bar_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['top_bar_background_gradient_top']; ?> 0%, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['top_bar_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_bar_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['top_menu_links'] != '') { ?>
	#top .header-links li a {
		color: #<?php echo $_GET['top_menu_links']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_cart_icon_background_gradient_top'] != '' && $_GET['top_cart_icon_background_gradient_bottom'] != '') { ?>
	#top #cart_block .cart-heading .cart-icon {
		background: #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['top_cart_icon_background_gradient_top']; ?> 0%, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['top_cart_icon_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_top']; ?> 0%,#<?php echo $_GET['top_cart_icon_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['top_cart_block_price'] != '') { ?>
	#top #cart_block .cart-heading span {
		color: #<?php echo $_GET['top_cart_block_price']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['top_background_color'] != '') { ?>
	#top .background {
		background: #<?php echo $_GET['top_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['menu_main_links'] != '') { ?>
	ul.megamenu > li > a,
	.megamenuToogle-wrapper .container {
		color: #<?php echo $_GET['menu_main_links']; ?>;
	}
	
	.megamenuToogle-wrapper .container > div span {
		background: #<?php echo $_GET['menu_main_links']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['menu_background_gradient_top'] != '' && $_GET['menu_background_gradient_bottom'] != '') { ?>
	.megamenu-wrapper,
	.megamenuToogle-wrapper {
		background: #<?php echo $_GET['menu_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['menu_background_gradient_top']; ?> 0%, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['menu_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['menu_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['menu_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['menu_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['menu_hover_background_gradient_top'] != '' && $_GET['menu_hover_background_gradient_bottom'] != '') { ?>
	ul.megamenu > li > a:hover, 
	ul.megamenu > li.active > a, 
	ul.megamenu > li.home > a, 
	ul.megamenu > li:hover > a {
		background: #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['menu_hover_background_gradient_top']; ?> 0%, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['menu_hover_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_top']; ?> 0%,#<?php echo $_GET['menu_hover_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['vertical_menu_heading_text'] != '') { ?>
	.vertical .megamenuToogle-wrapper .container {
		color: #<?php echo $_GET['vertical_menu_heading_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['vertical_menu_heading_background_gradient_top'] != '' && $_GET['vertical_menu_heading_background_gradient_bottom'] != '') { ?>
	.vertical .megamenuToogle-wrapper {
		background: #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?> 0%, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_top']; ?> 0%,#<?php echo $_GET['vertical_menu_heading_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['slider_bullets_background_color'] != '') { ?>
	.camera_wrap .camera_pag .camera_pag_ul li,
	.tp-bullets .bullet {
		background: #<?php echo $_GET['slider_bullets_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['slider_bullet_active_background_color'] != '') { ?>
	.camera_wrap .camera_pag .camera_pag_ul li.cameracurrent,
	.tp-bullets .selected, 
	.tp-bullets .bullet:hover {
		background: #<?php echo $_GET['slider_bullet_active_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['slider_background_color'] != '') { ?>
	#slider .background {
		background: #<?php echo $_GET['slider_background_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['sale_color_text'] != '') { ?>
	.sale {
		color: #<?php echo $_GET['sale_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['sale_background_gradient_top'] != '' && $_GET['sale_background_gradient_bottom'] != '') { ?>
	.sale {
		background: #<?php echo $_GET['sale_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['sale_background_gradient_top']; ?> 0%, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['sale_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['sale_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['sale_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['sale_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['sale_background_gradient_top']; ?> 0%,#<?php echo $_GET['sale_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['ratings_background_gradient_top'] != '' && $_GET['ratings_background_gradient_bottom'] != '') { ?>
	.rating i {
		color: #<?php echo $_GET['ratings_background_gradient_top']; ?>;
	}
	
	.rating i, 
	.rating i:before {
	    background: -webkit-gradient(linear, left top, left bottom, from(#<?php echo $_GET['ratings_background_gradient_top']; ?>), to(#<?php echo $_GET['ratings_background_gradient_bottom']; ?>));
	    -webkit-background-clip: text;
	    -webkit-text-fill-color: transparent;
	    display: initial;
	}
	<?php } ?>
	
	<?php if($_GET['ratings_active_background_gradient_top'] != '' && $_GET['ratings_active_background_gradient_bottom'] != '') { ?>
	.rating i.active {
		color: #<?php echo $_GET['ratings_active_background_gradient_top']; ?>;
	}
	
	.rating i.active, 
	.rating i.active:before {
	    background: -webkit-gradient(linear, left top, left bottom, from(#<?php echo $_GET['ratings_active_background_gradient_top']; ?>), to(#<?php echo $_GET['ratings_active_background_gradient_bottom']; ?>));
	    -webkit-background-clip: text;
	    -webkit-text-fill-color: transparent;
	    display: initial;
	}
	<?php } ?>
	
	<?php if($_GET['buttons_color_text']) { ?>
	.button {
		color: #<?php echo $_GET['buttons_color_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['buttons_background_gradient_top'] != '' && $_GET['buttons_background_gradient_bottom'] != '') { ?>
	.button {
		background: #<?php echo $_GET['buttons_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['buttons_background_gradient_top']; ?> 0%, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['buttons_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['buttons_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['second_buttons_color_text']) { ?>
	.buttons .left .button, 
	.buttons .center .button {
		color: #<?php echo $_GET['second_buttons_color_text']; ?> !important;
	}
	<?php } ?>
	
	<?php if($_GET['second_buttons_background_gradient_top'] != '' && $_GET['second_buttons_background_gradient_bottom'] != '') { ?>
	.buttons .left .button, 
	.buttons .center .button {
		background: #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 99%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?>)); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 99%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 99%); /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 99%); /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['second_buttons_background_gradient_bottom']; ?> 99%); /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['carousel_buttons_background_gradient_top'] != '' && $_GET['carousel_buttons_background_gradient_bottom'] != '') { ?>
	.tab-content .prev-button, 
	.tab-content .next-button,
	.box > .prev, 
	.box > .next,
	.jcarousel-skin-opencart .jcarousel-next-horizontal, 
	.jcarousel-skin-opencart .jcarousel-prev-horizontal {
		background: #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> !important; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['carousel_buttons_background_gradient_top']; ?> 0%, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 99%) !important; /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['carousel_buttons_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?>)) !important; /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 99%) !important; /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 99%) !important; /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 99%) !important; /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_buttons_background_gradient_bottom']; ?> 99%) !important; /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['carousel_bullets_background_gradient_top'] != '' && $_GET['carousel_bullets_background_gradient_bottom'] != '') { ?>
	.carousel-indicators li {
		background: #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> !important; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['carousel_bullets_background_gradient_top']; ?> 0%, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 99%) !important; /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['carousel_bullets_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?>)) !important; /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 99%) !important; /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 99%) !important; /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 99%) !important; /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_bullets_background_gradient_bottom']; ?> 99%) !important; /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['carousel_active_bullets_background_gradient_top'] != '' && $_GET['carousel_active_bullets_background_gradient_bottom'] != '') { ?>
	.carousel-indicators li.active {
		background: #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> !important; /* Old browsers */
		background: -moz-linear-gradient(top, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 0%, #<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?> 0%, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 99%) !important; /* FF3.6+ */
		background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?>), color-stop(0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?>), color-stop(99%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?>)) !important; /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(top, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 99%) !important; /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(top, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 99%) !important; /* Opera 11.10+ */
		background: -ms-linear-gradient(top, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 99%) !important; /* IE10+ */
		background: linear-gradient(to bottom, #<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_top']; ?> 0%,#<?php echo $_GET['carousel_active_bullets_background_gradient_bottom']; ?> 99%) !important; /* W3C */
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_text'] != '') { ?>
	.custom-footer .pattern,
	ul.contact-us li {
		color: #<?php echo $_GET['customfooter_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_heading'] != '') { ?>
	.custom-footer h4 {
		color: #<?php echo $_GET['customfooter_color_heading']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_icon_heading'] != '') { ?>
	.custom-footer h4 i,
	ul.contact-us li span {
		color: #<?php echo $_GET['customfooter_color_icon_heading']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_color_icon_contact_us'] != '') { ?>
	ul.contact-us li i {
		color: #<?php echo $_GET['customfooter_color_icon_contact_us']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_border_color'] != '') { ?>
	.custom-footer h4,
	.custom-footer .background,
	.standard-body .custom-footer .background,
	.fb-like-box,
	ul.contact-us li i {
		border-color: #<?php echo $_GET['customfooter_border_color']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['customfooter_background_color'] != '') { ?>
	.custom-footer .background,
	.standard-body .custom-footer .background {
		background: #<?php echo $_GET['customfooter_background_color']; ?>;
	}
	
	.custom-footer .pattern {
		background: none;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_text'] != '') { ?>
	.footer .pattern,
	.footer .pattern a,
	.copyright .pattern,
	.copyright .pattern a {
		color: #<?php echo $_GET['footer_color_text']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_heading'] != '') { ?>
	.footer h4 {
		color: #<?php echo $_GET['footer_color_heading']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_color_bullets'] != '') { ?>
	.footer ul li a:before {
		color: #<?php echo $_GET['footer_color_bullets']; ?>;
	}
	<?php } ?>
	
	<?php if($_GET['footer_background_color'] != '') { ?>
	.footer .background,
	.standard-body .footer .background,
	.copyright .background,
	.standard-body .copyright .background {
		background: #<?php echo $_GET['footer_background_color']; ?>;
	}
	<?php } ?>
<?php } ?>

<?php if($_GET['font_status'] == '1') { ?>
body {
	font-size: <?php echo $_GET['body_font_px']; ?>px;
	font-weight: <?php echo $_GET['body_font_weight']*100; ?>;
	<?php if(isset($_GET['body_font'])) { ?>
	font-family: <?php echo $_GET['body_font']; ?>;
	<?php } ?>
}

#top-bar .container, 
#top .header-links li a,
.sale,
.product-grid .product .only-hover ul li a,
.hover-product .only-hover ul li a {
	font-size: <?php echo $_GET['body_font_smaller_px']; ?>px;
}

ul.megamenu > li > a strong {
	font-size: <?php echo $_GET['categories_bar_px']; ?>px;
	font-weight: <?php echo $_GET['categories_bar_weight']*100; ?>;
	<?php if(isset($_GET['categories_bar_font'])) { ?>
	font-family: <?php echo $_GET['categories_bar_font']; ?>;
	<?php } ?>
}

.megamenuToogle-wrapper .container {
	font-weight: <?php echo $_GET['categories_bar_weight']*100; ?>;
	<?php if(isset($_GET['categories_bar_font'])) { ?>
	font-family: <?php echo $_GET['categories_bar_font']; ?>;
	<?php } ?>
}

.vertical ul.megamenu > li > a strong {
	font-weight: <?php echo $_GET['body_font_weight']*100; ?>;
}

.box .box-heading,
.center-column h1, 
.center-column h2, 
.center-column h3, 
.center-column h4, 
.center-column h5, 
.center-column h6 {
	font-size: <?php echo $_GET['headlines_px']; ?>px;
	font-weight: <?php echo $_GET['headlines_weight']*100; ?>;
	<?php if(isset($_GET['headlines_font'])) { ?>
	font-family: <?php echo $_GET['headlines_font']; ?>;
	<?php } ?>
}

.footer h4,
.custom-footer h4 {
	font-size: <?php echo $_GET['footer_headlines_px']; ?>px;
	font-weight: <?php echo $_GET['footer_headlines_weight']*100; ?>;
	<?php if(isset($_GET['footer_headlines_font'])) { ?>
	font-family: <?php echo $_GET['footer_headlines_font']; ?>;
	<?php } ?>
}

.breadcrumb .container h2 {
	font-size: <?php echo $_GET['page_name_px']; ?>px;
	font-weight: <?php echo $_GET['page_name_weight']*100; ?>;
	<?php if(isset($_GET['page_name_font'])) { ?>
	font-family: <?php echo $_GET['page_name_font']; ?>;
	<?php } ?>
}

.button {
	font-size: <?php echo $_GET['button_font_px']; ?>px;
	font-weight: <?php echo $_GET['button_font_weight']*100; ?>;
	<?php if(isset($_GET['button_font'])) { ?>
	font-family: <?php echo $_GET['button_font']; ?>;
	<?php } ?>
}

<?php if(isset($_GET['custom_price_font'])) { ?>
.product-grid .product .price, 
.hover-product .price, 
.product-list .actions > div .price, 
.product-info .price .price-new {
	font-family: <?php echo $_GET['custom_price_font']; ?>;
}
<?php } ?>

.product-grid .product .price,
.hover-product .price {
	font-size: <?php echo $_GET['custom_price_px_small']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.product-info .price .price-new {
	font-size: <?php echo $_GET['custom_price_px']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.product-list .actions > div .price {
	font-size: <?php echo $_GET['custom_price_px_medium']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}

.price-old {
	font-size: <?php echo $_GET['custom_price_px_old_price']; ?>px;
	font-weight: <?php echo $_GET['custom_price_weight']*100; ?>;
}
<?php } ?>