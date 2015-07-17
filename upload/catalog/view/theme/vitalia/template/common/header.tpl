<?php 
if($this->registry->has('theme_options') == false) { 
	header("location: themeinstall/index.php"); 
	exit; 
} 

require_once( DIR_TEMPLATE.$this->config->get('config_template')."/lib/module.php" );
$modules = new Modules($this->registry);
?>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="<?php echo $lang; ?>" class="ie7 <?php if($this->theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if IE 8]> <html lang="<?php echo $lang; ?>" class="ie8 <?php if($this->theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if IE 9]> <html lang="<?php echo $lang; ?>" class="ie9 <?php if($this->theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <![endif]-->  
<!--[if !IE]><!--> <html lang="<?php echo $lang; ?>" class="<?php if($this->theme_options->get( 'responsive_design' ) == '0') { echo 'no-'; } ?>responsive"> <!--<![endif]-->  
<head>
	<title><?php echo $title; ?></title>
	<meta property="og:title" content="<?php echo $title; ?>" />
	
	<base href="<?php echo $base; ?>" />

	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<?php if($this->theme_options->get( 'responsive_design' ) != '0') { ?>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php } ?>

	<?php foreach ($this->document->getFBMeta() as $fbMeta) { ?>
	<meta property="<?php echo $fbMeta['property'] ?>" content="<?php echo $fbMeta['content']; ?>" />
	<?php } ?>

	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<meta property="og:description" content="<?php echo $description; ?>" />
	<?php } ?>

	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } else { ?>
	<meta name="keywords" content="<?php echo "Mua Ban Xe Oto 24h, Chevrolet Viet Long, Phu tung, Phu Kien chinh hang, Cruze, Spark, Captiva, Aveo, Colorado, Orlando"; ?>" />
	<?php } ?>
	
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	<!-- Google Fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:700,600,500,400,300" rel="stylesheet" type="text/css">
	<?php 
	if( $this->theme_options->get( 'font_status' ) == '1' ) {
		$lista_fontow = array();
		if( $this->theme_options->get( 'body_font' ) != '' && $this->theme_options->get( 'body_font' ) != 'standard' && $this->theme_options->get( 'body_font' ) != 'Arial' && $this->theme_options->get( 'body_font' ) != 'Georgia' && $this->theme_options->get( 'body_font' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'body_font' );
			$lista_fontow[$font] = $font;
		}
		
		if( $this->theme_options->get( 'categories_bar' ) != '' && $this->theme_options->get( 'categories_bar' ) != 'standard' && $this->theme_options->get( 'categories_bar' ) != 'Arial' && $this->theme_options->get( 'categories_bar' ) != 'Georgia' && $this->theme_options->get( 'categories_bar' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'categories_bar' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $this->theme_options->get( 'headlines' ) != '' && $this->theme_options->get( 'headlines' ) != 'standard' && $this->theme_options->get( 'headlines' ) != 'Arial' && $this->theme_options->get( 'headlines' ) != 'Georgia' && $this->theme_options->get( 'headlines' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'headlines' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $this->theme_options->get( 'footer_headlines' ) != '' && $this->theme_options->get( 'footer_headlines' ) != 'standard'  && $this->theme_options->get( 'footer_headlines' ) != 'Arial' && $this->theme_options->get( 'footer_headlines' ) != 'Georgia' && $this->theme_options->get( 'footer_headlines' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'footer_headlines' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $this->theme_options->get( 'page_name' ) != '' && $this->theme_options->get( 'page_name' ) != 'standard' && $this->theme_options->get( 'page_name' ) != 'Arial' && $this->theme_options->get( 'page_name' ) != 'Georgia' && $this->theme_options->get( 'page_name' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'page_name' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $this->theme_options->get( 'button_font' ) != '' && $this->theme_options->get( 'button_font' ) != 'standard' && $this->theme_options->get( 'button_font' ) != 'Arial' && $this->theme_options->get( 'button_font' ) != 'Georgia' && $this->theme_options->get( 'button_font' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'button_font' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		if( $this->theme_options->get( 'custom_price' ) != '' && $this->theme_options->get( 'custom_price' ) != 'standard' && $this->theme_options->get( 'custom_price' ) != 'Arial' && $this->theme_options->get( 'custom_price' ) != 'Georgia' && $this->theme_options->get( 'custom_price' ) != 'Times New Roman' ) {
			$font = $this->theme_options->get( 'custom_price' );
			if(!isset($lista_fontow[$font])) {
				$lista_fontow[$font] = $font;
			}
		}
		
		foreach($lista_fontow as $font) {
			echo '<link href="//fonts.googleapis.com/css?family=' . $font . ':700,600,500,400,300" rel="stylesheet" type="text/css">';
			echo "\n";
		}
	}
	?>
	
	<?php $lista_plikow = array(
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/bootstrap.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/bootstrap-theme.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/stylesheet.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/responsive.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/slider.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/camera_slider.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/blog.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/menu.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/filter_product.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/font-awesome.min.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/magnific-popup.css',
			'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/jquery-ui.css'
	); 
		
	if($this->theme_options->get( 'page_width' ) == 1) {
		$lista_plikow[] = 'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/wide-grid.css';
	} 
	
	if($this->theme_options->get( 'page_width' ) == 3) {
		$lista_plikow[] = 'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/standard-grid.css';
	} 
		
	if($this->theme_options->get( 'colors_status' ) == 1 || $this->theme_options->get( 'font_status' ) == 1) {
		$url = false;
		if($this->theme_options->get( 'colors_status' ) == 1) {
			$array = array(
					'body_font_text',
					'body_font_links',
					'body_font_links_hover',
					'body_price_text',
					'body_background_color',
					'top_bar_text',
					'top_bar_background_gradient_top',
					'top_bar_background_gradient_bottom',
					'top_menu_links',
					'top_cart_icon_background_gradient_top',
					'top_cart_icon_background_gradient_bottom',
					'top_cart_block_price',
					'top_background_color',
					'menu_main_links',
					'menu_background_gradient_top',
					'menu_background_gradient_bottom',
					'menu_hover_background_gradient_top',
					'menu_hover_background_gradient_bottom',
					'vertical_menu_heading_text',
					'vertical_menu_heading_background_gradient_top',
					'vertical_menu_heading_background_gradient_bottom',
					'slider_bullets_background_color',
					'slider_bullet_active_background_color',
					'slider_background_color',
					'header_background_color',
					'header_border_bottom_color',
					'sale_color_text',
					'sale_background_gradient_top',
					'sale_background_gradient_bottom',
					'ratings_background_gradient_top',
					'ratings_background_gradient_bottom',
					'ratings_active_background_gradient_top',
					'ratings_active_background_gradient_bottom',
					'buttons_color_text',
					'buttons_background_gradient_top',
					'buttons_background_gradient_bottom',
					'second_buttons_color_text',
					'second_buttons_background_gradient_top',
					'second_buttons_background_gradient_bottom',
					'carousel_buttons_background_gradient_top',
					'carousel_buttons_background_gradient_bottom',
					'carousel_bullets_background_gradient_top',
					'carousel_bullets_background_gradient_bottom',
					'carousel_active_bullets_background_gradient_top',
					'carousel_active_bullets_background_gradient_bottom',
					'customfooter_color_text',
					'customfooter_color_heading',
					'customfooter_color_icon_heading',
					'customfooter_color_icon_contact_us',
					'customfooter_border_color',
					'customfooter_background_color',
					'footer_color_text',
					'footer_color_bullets',
					'footer_color_heading',
					'footer_background_color'
			);
				
			$i = 0;
			foreach($array as $color) {
				if($i != 0) {
					$url .= '&';
				} 
				$url .= $color.'='.str_replace(array('#', ' '), '', $this->theme_options->get( $color ));
				$i++;
			}
		} else {
			$url = 'color_status=0';
		}
		
		if( $this->theme_options->get( 'font_status' ) == '1' ) {
			$url .= '&font_status=1';
			if( $this->theme_options->get( 'body_font' ) != '' && $this->theme_options->get( 'body_font' ) != 'standard' ) {
				$url .= '&body_font=' . str_replace(" ", "+", $this->theme_options->get( 'body_font' ));
			}
			
			if( $this->theme_options->get( 'categories_bar' ) != '' && $this->theme_options->get( 'categories_bar' ) != 'standard' ) {
				$url .= '&categories_bar_font=' . str_replace(" ", "+", $this->theme_options->get( 'categories_bar' ));
			}
			
			if( $this->theme_options->get( 'headlines' ) != '' && $this->theme_options->get( 'headlines' ) != 'standard' ) {
				$url .= '&headlines_font=' . str_replace(" ", "+", $this->theme_options->get( 'headlines' ));
			}
			
			if( $this->theme_options->get( 'footer_headlines' ) != '' && $this->theme_options->get( 'footer_headlines' ) != 'standard' ) {
				$url .= '&footer_headlines_font=' . str_replace(" ", "+", $this->theme_options->get( 'footer_headlines' ));
			}
			
			if( $this->theme_options->get( 'page_name' ) != '' && $this->theme_options->get( 'page_name' ) != 'standard' ) {
				$url .= '&page_name_font=' . str_replace(" ", "+", $this->theme_options->get( 'page_name' ));
			}
			
			if( $this->theme_options->get( 'button_font' ) != '' && $this->theme_options->get( 'button_font' ) != 'standard' ) {
				$url .= '&button_font=' . str_replace(" ", "+", $this->theme_options->get( 'button_font' ));
			}
			
			if( $this->theme_options->get( 'custom_price' ) != '' && $this->theme_options->get( 'custom_price' ) != 'standard' ) {
				$url .= '&custom_price_font=' . str_replace(" ", "+", $this->theme_options->get( 'custom_price' ));
			}
			
			$url .= '&body_font_px=' . $this->theme_options->get( 'body_font_px' );
			$url .= '&body_font_weight=' . $this->theme_options->get( 'body_font_weight' );
			$url .= '&body_font_smaller_px=' . $this->theme_options->get( 'body_font_smaller_px' );
			$url .= '&categories_bar_weight=' . $this->theme_options->get( 'categories_bar_weight' );
			$url .= '&categories_bar_px=' . $this->theme_options->get( 'categories_bar_px' );
			$url .= '&headlines_weight=' . $this->theme_options->get( 'headlines_weight' );
			$url .= '&headlines_px=' . $this->theme_options->get( 'headlines_px' );
			$url .= '&footer_headlines_weight=' . $this->theme_options->get( 'footer_headlines_weight' );
			$url .= '&footer_headlines_px=' . $this->theme_options->get( 'footer_headlines_px' );
			$url .= '&page_name_weight=' . $this->theme_options->get( 'page_name_weight' );
			$url .= '&page_name_px=' . $this->theme_options->get( 'page_name_px' );
			$url .= '&button_font_weight=' . $this->theme_options->get( 'button_font_weight' );
			$url .= '&button_font_px=' . $this->theme_options->get( 'button_font_px' );
			$url .= '&custom_price_weight=' . $this->theme_options->get( 'custom_price_weight' );
			$url .= '&custom_price_px=' . $this->theme_options->get( 'custom_price_px' );
			$url .= '&custom_price_px_medium=' . $this->theme_options->get( 'custom_price_px_medium' );
			$url .= '&custom_price_px_small=' . $this->theme_options->get( 'custom_price_px_small' );
			$url .= '&custom_price_px_old_price=' . $this->theme_options->get( 'custom_price_px_old_price' );
		}
			
		$lista_plikow[] = 'catalog/view/theme/'.$this->config->get( 'config_template' ).'/css/custom_color.css.php?'.$url;
	} ?>
		
	<?php echo $this->theme_options->compressorCodeCss( $this->config->get( 'config_template' ), $lista_plikow, $this->theme_options->get( 'compressor_code_status' ), HTTP_SERVER ); ?>
	
	<?php if($this->theme_options->get( 'background_status' ) == 1) { ?>
	<style type="text/css">
		<?php if($this->theme_options->get( 'body_background_background' ) == '1') { ?> 
		body { background-image:none !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'body_background_background' ) == '2') { ?> 
		body { background-image:url(image/<?php echo $this->theme_options->get( 'body_background' ); ?>);background-position:<?php echo $this->theme_options->get( 'body_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'body_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'body_background_attachment' ); ?> !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'body_background_background' ) == '3') { ?> 
		body { background-image:url(image/subtle_patterns/<?php echo $this->theme_options->get( 'body_background_subtle_patterns' ); ?>);background-position:<?php echo $this->theme_options->get( 'body_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'body_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'body_background_attachment' ); ?> !important; }
		<?php } ?>
		
		<?php if($this->theme_options->get( 'header_background_background' ) == '1') { ?> 
		header { background-image:none !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'header_background_background' ) == '2') { ?> 
		header { background-image:url(image/<?php echo $this->theme_options->get( 'header_background' ); ?>);background-position:<?php echo $this->theme_options->get( 'header_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'header_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'header_background_attachment' ); ?> !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'header_background_background' ) == '3') { ?> 
		header { background-image:url(image/subtle_patterns/<?php echo $this->theme_options->get( 'header_background_subtle_patterns' ); ?>);background-position:<?php echo $this->theme_options->get( 'header_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'header_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'header_background_attachment' ); ?> !important; }
		<?php } ?>
		
		<?php if($this->theme_options->get( 'customfooter_background_background' ) == '1') { ?> 
		.custom-footer .pattern { background-image:none !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'customfooter_background_background' ) == '2') { ?> 
		.custom-footer .pattern { background-image:url(image/<?php echo $this->theme_options->get( 'customfooter_background' ); ?>);background-position:<?php echo $this->theme_options->get( 'customfooter_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'customfooter_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'customfooter_background_attachment' ); ?> !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'customfooter_background_background' ) == '3') { ?> 
		.custom-footer .pattern { background-image:url(image/subtle_patterns/<?php echo $this->theme_options->get( 'customfooter_background_subtle_patterns' ); ?>);background-position:<?php echo $this->theme_options->get( 'customfooter_background_position' ); ?>;background-repeat:<?php echo $this->theme_options->get( 'customfooter_background_repeat' ); ?> !important;background-attachment:<?php echo $this->theme_options->get( 'customfooter_background_attachment' ); ?> !important; }
		<?php } ?>
		
		<?php if($this->theme_options->get( 'content_headlines_background_background' ) == '1') { ?> 
		.box .strip-line,
		.breadcrumb .container .strip-line { background-image:none !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'content_headlines_background_background' ) == '2') { ?> 
		.box .strip-line,
		.breadcrumb .container .strip-line { background-image:url(image/<?php echo $this->theme_options->get( 'content_headlines_background' ); ?>); }
		<?php } ?>
		
		<?php if($this->theme_options->get( 'footer_headlines_background_background' ) == '1') { ?> 
		.footer .strip-line { background-image:none !important; }
		<?php } ?>
		<?php if($this->theme_options->get( 'footer_headlines_background_background' ) == '2') { ?> 
		.footer .strip-line { background-image:url(image/<?php echo $this->theme_options->get( 'footer_headlines_background' ); ?>); }
		<?php } ?>
	</style>
	<?php } ?>
	
	<?php if($this->theme_options->get( 'custom_code_css_status' ) == 1) { ?>
	<link rel="stylesheet" href="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/skins/store_<?php echo $this->theme_options->get( 'store' ); ?>/<?php echo $this->theme_options->get( 'skin' ); ?>/css/custom_code.css">
	<?php } ?>
	
	<?php foreach ($styles as $style) { ?>
	<?php if($style['href'] == 'catalog/view/theme/default/stylesheet/slideshow.css') { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/css/slideshow.css" media="<?php echo $style['media']; ?>" />
	<?php } elseif($style['href'] == 'catalog/view/theme/default/stylesheet/carousel.css') { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/css/carousel.css" media="<?php echo $style['media']; ?>" />
	<?php } else { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<?php } ?>
	
	<?php if($this->theme_options->get( 'page_width' ) == 2 && $this->theme_options->get( 'max_width' ) > 900) { ?>
	<style type="text/css">
		.standard-body .full-width .container {
			max-width: <?php echo $this->theme_options->get( 'max_width' ); ?>px;
			<?php if($this->theme_options->get( 'responsive_design' ) == '0') { ?>
			width: <?php echo $this->theme_options->get( 'max_width' ); ?>px;
			<?php } ?>
		}
		
		.standard-body .fixed .background,
		.main-fixed {
			max-width: <?php echo $this->theme_options->get( 'max_width' )-40; ?>px;
			<?php if($this->theme_options->get( 'responsive_design' ) == '0') { ?>
			width: <?php echo $this->theme_options->get( 'max_width' )-40; ?>px;
			<?php } ?>
		}
	</style>
	<?php } ?>
    
    <?php $lista_plikow = array(
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery-migrate-1.2.1.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery-ui.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/bootstrap.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/twitter-bootstrap-hover-dropdown.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.themepunch.plugins.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.themepunch.revolution.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/camera.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/products.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/common.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.cookie.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.magnific-popup.min.js',
    		'catalog/view/theme/'.$this->config->get( 'config_template' ).'/js/jquery.elevateZoom-3.0.3.min.js'
    ); ?>
    	
    <?php echo $this->theme_options->compressorCodeJs( $this->config->get( 'config_template' ), $lista_plikow, $this->theme_options->get( 'compressor_code_status' ), HTTP_SERVER ); ?>
	
	<script type="text/javascript">
	var transition = 'slide';
	var animation_time = 500;
	var checkout_text = '<?php if($this->theme_options->get( 'checkout_text', $this->config->get( 'config_language_id' ) ) != '') { echo $this->theme_options->get( 'checkout_text', $this->config->get( 'config_language_id' ) ); } else { echo 'Checkout'; } ?>';
	var continue_shopping_text = '<?php if($this->theme_options->get( 'continue_shopping_text', $this->config->get( 'config_language_id' ) ) != '') { echo $this->theme_options->get( 'continue_shopping_text', $this->config->get( 'config_language_id' ) ); } else { echo 'Continue shopping'; } ?>';
	var checkout_url = '<?php echo $checkout; ?>';
	var responsive_design = '<?php if($this->theme_options->get( 'responsive_design' ) == '0') { echo 'no'; } else { echo 'yes'; } ?>';
	</script>
	<?php foreach ($scripts as $script) { ?>
	<?php if($script == 'catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js') { ?>
	<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/js/jquery.nivo.slider.pack.js"></script>
	<?php } else { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	<?php } ?>
	<?php if($this->theme_options->get( 'custom_code_javascript_status' ) == 1) { ?>
	<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/skins/store_<?php echo $this->theme_options->get( 'store' ); ?>/<?php echo $this->theme_options->get( 'skin' ); ?>/js/custom_code.js"></script>
	<?php } ?>
	
	<?php if ($stores) { ?>
	<script type="text/javascript"><!--
	$(document).ready(function() {
	<?php foreach ($stores as $store) { ?>
	$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
	<?php } ?>
	});
	//--></script>
	<?php } ?>
	<?php echo $google_analytics; ?>    
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/js/respond.min.js"></script>
	<![endif]-->

	<!-- Begin Google Analytics -->
	
	<!-- End Google Analytics -->

</head>	
<body>
<div class="<?php if($this->theme_options->get( 'main_layout' ) == 2) { echo 'fixed-body'; } else { echo 'standard-body'; } ?>">
	<div id="main" class="<?php if($this->theme_options->get( 'main_layout' ) == 2) { echo 'main-fixed'; } ?>">
		<div class="hover-product"></div>
		<?php 
		if($this->theme_options->get( 'header_type' ) == 2) {
			include('catalog/view/theme/'.$this->config->get('config_template').'/template/common/header/header_02.tpl'); 
		} elseif($this->theme_options->get( 'header_type' ) == 3) {
			include('catalog/view/theme/'.$this->config->get('config_template').'/template/common/header/header_03.tpl');
		} elseif($this->theme_options->get( 'header_type' ) == 4) {
			include('catalog/view/theme/'.$this->config->get('config_template').'/template/common/header/header_04.tpl');
		} elseif($this->theme_options->get( 'header_type' ) == 5) {
			include('catalog/view/theme/'.$this->config->get('config_template').'/template/common/header/header_05.tpl');
		} else {
			include('catalog/view/theme/'.$this->config->get('config_template').'/template/common/header/header_01.tpl');
		}	
		?>
		
<?php if (isset($error) && $error) { ?>
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>