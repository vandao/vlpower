<!-- Product -->
<div class="product clearfix">
	<div class="left">
		<?php if ($product['thumb']) { ?>
		<?php if($product['special'] && $this->theme_options->get( 'display_text_sale' ) != '0') { ?>
			<?php $text_sale = 'Sale';
			if($this->theme_options->get( 'sale_text', $this->config->get( 'config_language_id' ) ) != '') {
				$text_sale = $this->theme_options->get( 'sale_text', $this->config->get( 'config_language_id' ) );
			} ?>
			<?php if($this->theme_options->get( 'type_sale' ) == '1') { ?>
			<?php $product_detail = $this->theme_options->getDataProduct( $product['product_id'] );
			$roznica_ceny = $product_detail['price']-$product_detail['special'];
			$procent = ($roznica_ceny*100)/$product_detail['price']; ?>
			<div class="sale">-<?php echo round($procent); ?>%</div>
			<?php } else { ?>
			<div class="sale"><?php echo $text_sale; ?></div>
			<?php } ?>
		<?php } ?>
		<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
		<?php } else { ?>
		<div class="image"><a href="<?php echo $product['href']; ?>"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" /></a></div>
		<?php } ?>
	</div>
	<div class="right">
		<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>		
		<?php if ($product['rating'] && $this->theme_options->get( 'display_rating' ) != '0') { ?>
		<div class="rating"><i class="icon-star<?php if($product['rating'] >= 1) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 2) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 3) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 4) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 5) { echo ' active'; } ?>"></i></div>
		<?php } ?>
		<?php if($this->theme_options->get( 'display_add_to_compare' ) != '0' || $this->theme_options->get( 'display_add_to_wishlist' ) != '0' || $this->theme_options->get( 'display_add_to_cart' ) != '0') { ?>
		<div class="only-hover">
			<?php if($this->theme_options->get( 'display_add_to_cart' ) != '0') { ?>
			<a onclick="window.location.href='<?php echo $product['href']; ?>'" class="button"><?php echo $button_cart; ?></a>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
</div>