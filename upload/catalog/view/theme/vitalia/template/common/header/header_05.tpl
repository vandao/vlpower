<!-- HEADER
	================================================== -->
<header>
	<div class="background-header"></div>
	<div class="slider-header">
		<!-- Top of pages -->
		<div id="top" class="<?php if($this->theme_options->get( 'header_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?>">
			<div class="background-top"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
					<div class="container">
						<div class="row">
							<!-- Header Left -->
							<div class="col-sm-6" id="header-left">
								<?php if ($logo) { ?>
								<!-- Logo -->
								<h1><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></h1>
								<?php } ?>
							</div>

							<!-- Header Right -->
							<div class="col-sm-6" id="header-right">
								<?php echo $cart; ?>
							</div>
						</div>
					</div>
					
					<div class="container-megamenu container horizontal">
						<div id="megaMenuToggle">
							<div class="megamenuToogle-wrapper">
								<div class="megamenuToogle-pattern">
									<div class="container">
										<div><span></span><span></span><span></span></div>
										Navigation
									</div>
								</div>
							</div>
						</div>
						
						<div class="megamenu-wrapper">
							<div class="megamenu-pattern">
								<div class="container">
									<ul class="megamenu">
										<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
										<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
										<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
										<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
										<li class="search pull-right">
											<!-- Search -->
											<div class="search_form">
												<div class="button-search2"></div>
												<input type="text" class="input-block-level search-query" name="search2" placeholder="<?php echo $text_search; ?>" id="search_query2" value="<?php echo $search; ?>" />
												
												<div id="autocomplete-results2" class="autocomplete-results"></div>
												
												<script type="text/javascript">
												$(document).ready(function() {
													$('#search_query2').autocomplete({
														delay: 0,
														appendTo: "#autocomplete-results2",
														source: function(request, response) {		
															$.ajax({
																url: 'index.php?route=search/autocomplete&filter_name=' +  encodeURIComponent(request.term),
																dataType: 'json',
																success: function(json) {
																	response($.map(json, function(item) {
																		return {
																			label: item.name,
																			value: item.product_id,
																			href: item.href,
																			thumb: item.thumb,
																			desc: item.desc,
																			price: item.price
																		}
																	}));
																}
															});
														},
														select: function(event, ui) {
															document.location.href = ui.item.href;
															
															return false;
														},
														focus: function(event, ui) {
													      	return false;
													   	},
													   	minLength: 2
													})
													.data( "ui-autocomplete" )._renderItem = function( ul, item ) {
													  return $( "<li>" )
													    .append( "<a><img src='" + item.thumb + "' alt=''>" + item.label + "<br><span class='description'>" + item.desc + "</span><br><span class='price'>" + item.price + "</span></a>" )
													    .appendTo( ul );
													};
												});
												</script>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<?php $slideshow = $modules->getModules('slideshow'); ?>
	<?php  if(count($slideshow)) { ?>
	<!-- Slider -->
	<div id="slider" class="<?php if($this->theme_options->get( 'slideshow_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?>">
		<div class="background-slider"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<?php foreach($slideshow as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php } ?>
</header>

<style type="text/css">
	.breadcrumb .container > div {
		padding-left: 23%;
		margin-left: 30px;
		height: 82px;
	}

	#top .container-megamenu .container {
		padding-left: 23%;
	}
	
		#top .container-megamenu .container a {
			font-size: 14px;
			padding: 13px 20px 10px 21px;
		}
		
	.vertical #menuHeading {
		position: relative;
		z-index: 4;
		margin-top: -45px;
	}

		.vertical .megamenuToogle-wrapper .container {
			height: 45px;
			padding: 9px 20px 5px 20px !important;
		}
		
		.inner-page .vertical #menuHeading {
			margin-top: -112px;
		}
		
	@media (max-width: 1100px) { 
		.responsive #top .container-megamenu .search {
			display: none;
		}
	}
	
	@media (max-width: 960px) { 
		.responsive #top .container-megamenu .container {
			padding-left: 0;
		}
		
		.responsive .vertical #menuHeading {
			margin-top: 30px !important;
		}
		
		.responsive .breadcrumb .container > div {
			padding-left: 0;
			margin-left: 0px;
			height: auto;
		}
	}
	
	@media (max-width: 768px) { 
		.responsive .vertical #menuHeading {
			margin-top: 20px !important;
		}
	}
</style>