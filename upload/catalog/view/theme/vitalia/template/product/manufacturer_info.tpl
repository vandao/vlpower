<?php echo $header; ?>
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_top.tpl'); ?>

  <?php if ($products) { ?>
  <!-- Filter -->
  <div class="product-filter clearfix">
  	<div class="options">
  		<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  		
  		<div class="button-group display" data-toggle="buttons-radio">
  			<button id="grid" <?php if($this->theme_options->get('default_list_grid') == '1') { echo 'class="active"'; } ?> rel="tooltip" title="Grid" onclick="display('grid');"><i class="icon-th-large"></i></button>
  			<button id="list" <?php if($this->theme_options->get('default_list_grid') != '1') { echo 'class="active"'; } ?> rel="tooltip" title="List" onclick="display('list');"><i class="icon-th-list"></i></button>
  		</div>
  	</div>
  	
  	<div class="list-options">
  		<div class="sort">
  			<?php echo $text_sort; ?>
  			<select onchange="location = this.value;">
  			  <?php foreach ($sorts as $sorts) { ?>
  			  <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
  			  <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
  			  <?php } else { ?>
  			  <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
  			  <?php } ?>
  			  <?php } ?>
  			</select>
  		</div>
  		
  		<div class="limit">
  			<?php echo $text_limit; ?>
  			<select onchange="location = this.value;">
  			  <?php foreach ($limits as $limits) { ?>
  			  <?php if ($limits['value'] == $limit) { ?>
  			  <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
  			  <?php } else { ?>
  			  <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
  			  <?php } ?>
  			  <?php } ?>
  			</select>
  		</div>
  	</div>
  </div>
  
  <!-- Products list -->
  <div class="product-list"<?php if($this->theme_options->get('default_list_grid') == '1') { echo ' style="display:none;"'; } ?>>
  	<?php foreach ($products as $product) { ?>
	<!-- Product -->
	<div>
		<div class="row">
			<div class="image col-sm-3">
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
				<?php if($product['thumb']) { ?>
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
				<?php } else { ?>
				<a href="<?php echo $product['href']; ?>"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" /></a>
				<?php } ?>
			</div>
			
			<div class="name-desc col-sm-6">
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<div class="description"><?php echo $product['description']; ?></div>
				<?php if ($product['rating']) { ?>
				<div class="rating-reviews clearfix">
					<div class="rating"><i class="icon-star<?php if($product['rating'] >= 1) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 2) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 3) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 4) { echo ' active'; } ?>"></i><i class="icon-star<?php if($product['rating'] >= 5) { echo ' active'; } ?>"></i></div>
				</div>
				<?php } ?>
			</div>
			
			<div class="actions col-sm-3">
				<div>				
					
					<div class="add-to-cart"><a onclick="window.location.href='<?php echo $product['href']; ?>'" class="button"><?php echo $button_cart; ?></a></div>
				</div>
			</div>
		</div>
	</div>
  	<?php } ?>
  </div>
  
  <!-- Products grid -->
  <?php 
  $class = 3; 
  $row = 4; 
  
  if($this->theme_options->get( 'product_per_pow' ) == 6) { $class = 2; }
  if($this->theme_options->get( 'product_per_pow' ) == 5) { $class = 25; }
  if($this->theme_options->get( 'product_per_pow' ) == 3) { $class = 4; }
  
  if($this->theme_options->get( 'product_per_pow' ) > 1) { $row = $this->theme_options->get( 'product_per_pow' ); } 
  ?>
  <div class="product-grid"<?php if(!($this->theme_options->get('default_list_grid') == '1')) { echo ' style="display:none;"'; } ?>>
  	<div class="row">
	  	<?php $row_fluid = 0; foreach ($products as $product) { $row_fluid++; ?>
		  	<?php $r=$row_fluid-floor($row_fluid/$row)*$row; if($row_fluid>$row && $r == 1) { echo '</div><div class="row">'; } ?>
		  	<div class="col-sm-<?php echo $class; ?> col-xs-6">
		  	    <?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/product.tpl'); ?>
		  	</div>
	    <?php } ?>
    </div>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
<script type="text/javascript"><!--
function display(view) {

	if (view == 'list') {
		$('.product-grid').css("display", "none");
		$('.product-list').css("display", "block");

		$('.display').html('<button id="grid" rel="tooltip" title="Grid" onclick="display(\'grid\');"><i class="icon-th-large"></i></button> <button class="active" id="list" rel="tooltip" title="List" onclick="display(\'list\');"><i class="icon-th-list"></i></button>');
		
		$.cookie('display', 'list'); 
	} else {
	
		$('.product-grid').css("display", "block");
		$('.product-list').css("display", "none");
					
		$('.display').html('<button class="active" id="grid" rel="tooltip" title="Grid" onclick="display(\'grid\');"><i class="icon-th-large"></i></button> <button id="list" rel="tooltip" title="List" onclick="display(\'list\');"><i class="icon-th-list"></i></button>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
}
//--></script> 
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>