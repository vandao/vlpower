<?php echo $header; ?>
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_top.tpl'); ?>

  <h2 style="margin-bottom: 20px;margin-top: 0px"><?php echo $text_critea; ?></h2>
  <div class="content" id="content-search">
    <p><?php echo $entry_search; ?>
      <?php if ($search) { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" style="margin-left: 5px;margin-right: 5px" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" style="margin-left: 5px;margin-right: 5px" />
      <?php } ?>
      <select name="category_id" style="margin-left: 5px;margin-right: 5px">
        <option value="0"><?php echo $text_category; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_1['children'] as $category_2) { ?>
        <?php if ($category_2['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_2['children'] as $category_3) { ?>
        <?php if ($category_3['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </select>
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
      <label for="sub_category"><?php echo $text_sub_category; ?></label>
    </p>
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <?php } ?>
    <label for="description"><?php echo $entry_description; ?></label>
  </div>
  <div class="buttons">
    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
  </div>
  <h2 style="margin-bottom: 20px"><?php echo $text_search; ?></h2>
  
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
  <?php } ?>
<script type="text/javascript"><!--
$('#content-search input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content-search input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

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