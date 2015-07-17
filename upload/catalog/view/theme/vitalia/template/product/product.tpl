<?php echo $header; ?>
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_top.tpl'); ?>
<div itemscope itemtype="http://data-vocabulary.org/Product">
  <span itemprop="name" class="hidden"><?php echo $heading_title; ?></span>
  <div class="product-info">
  	<div class="row">
  		<div class="col-sm-<?php if($this->theme_options->get( 'custom_block', 'product_page', $this->config->get( 'config_language_id' ), 'status' ) == 1) { echo 9; } else { echo 12; } ?>">
  			<div class="row">
			    <?php if($this->theme_options->get( 'product_image_zoom' ) != 2) { ?>
			    <script>
			    	$(document).ready(function(){
			    		<?php if($this->theme_options->get( 'product_image_zoom' ) == 1) { ?>
			    			$('#image').elevateZoom({
			    				zoomType: "inner",
			    				cursor: "pointer",
			    				zoomWindowFadeIn: 500,
			    				zoomWindowFadeOut: 750
			    			});
			    		<?php } else { ?>
				    		$('#image').elevateZoom({
								zoomWindowFadeIn: 500,
								zoomWindowFadeOut: 500,
								zoomWindowOffetx: 20,
								zoomWindowOffety: -1,
								cursor: "pointer",
								lensFadeIn: 500,
								lensFadeOut: 500,
				    		});
			    		<?php } ?>
			    		
			    		$('.thumbnails a').click(function() {
			    			var smallImage = $(this).attr('data-image');
			    			var largeImage = $(this).attr('data-zoom-image');
			    			var ez =   $('#image').data('elevateZoom');	
			    			$('#ex1').attr('href', largeImage);  
			    			ez.swaptheimage(smallImage, largeImage); 
			    			return false;
			    		});
			    	});
			    </script>
			    <?php } ?>
			    <?php $image_grid = 6; $product_center_grid = 6; 
			    if ($this->theme_options->get( 'product_image_size' ) == 1) {
			    	$image_grid = 4; $product_center_grid = 8;
			    }
			    
			    if ($this->theme_options->get( 'product_image_size' ) == 3) {
			    	$image_grid = 8; $product_center_grid = 4;
			    }
			    ?>
			    <div class="col-sm-<?php echo $image_grid; ?> popup-gallery">
			      <div class="row">
			      	  <?php if ($images && $this->theme_options->get( 'position_image_additional' ) == 2) { ?>
			      	  <div class="col-sm-2">
						<div class="thumbnails thumbnails-left clearfix">
							<ul>
							  <?php if($this->theme_options->get( 'product_image_zoom' ) != 2 && $thumb) { ?>
						      <li><p><a href="<?php echo $popup; ?>" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></p></li>
							  <?php } ?>
						      <?php foreach ($images as $image) { ?>
						      <li><p><a href="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></p></li>
						      <?php } ?>
						  </ul>
						</div>
			      	  </div>
			      	  <?php } ?>
			      	  
				      <div class="col-sm-<?php if($this->theme_options->get( 'position_image_additional' ) == 2) { echo 10; } else { echo 12; } ?>">
				      	<?php if ($thumb) { ?>
					      <div class="product-image <?php if($this->theme_options->get( 'product_image_zoom' ) != 2) { if($this->theme_options->get( 'product_image_zoom' ) == 1) { echo 'inner-cloud-zoom'; } else { echo 'cloud-zoom'; } } ?>">
					      	 <?php if($special && $this->theme_options->get( 'display_text_sale' ) != '0') { ?>
					      	 	<?php $text_sale = 'Sale';
					      	 	if($this->theme_options->get( 'sale_text', $this->config->get( 'config_language_id' ) ) != '') {
					      	 		$text_sale = $this->theme_options->get( 'sale_text', $this->config->get( 'config_language_id' ) );
					      	 	} ?>
					      	 	<?php if($this->theme_options->get( 'type_sale' ) == '1') { ?>
					      	 	<?php $product_detail = $this->theme_options->getDataProduct( $product_id );
					      	 	$roznica_ceny = $product_detail['price']-$product_detail['special'];
					      	 	$procent = ($roznica_ceny*100)/$product_detail['price']; ?>
					      	 	<div class="sale">-<?php echo round($procent); ?>%</div>
					      	 	<?php } else { ?>
					      	 	<div class="sale"><?php echo $text_sale; ?></div>
					      	 	<?php } ?>
					      	 <?php } ?>
					      	 
					     	 <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" id="ex1"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" itemprop="image" data-zoom-image="<?php echo $popup; ?>" /></a>
					      </div>
					  	 <?php } else { ?>
					  	 <div class="product-image">
					  	 	 <img src="image/no_image.jpg" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" itemprop="image" />
					  	 </div>
					  	 <?php } ?>
				      </div>
				      
				      <?php if ($images && $this->theme_options->get( 'position_image_additional' ) != 2) { ?>
				      <div class="col-sm-12">
					      <div class="thumbnails clearfix">
					      	<ul>
					      		<?php if($this->theme_options->get( 'product_image_zoom' ) != 2 && $thumb) { ?>
					      		<li><p><a href="<?php echo $popup; ?>" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></p></li>
					      		<?php } ?>
						        <?php foreach ($images as $image) { ?>
						        <li><p><a href="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>" data-zoom-image="<?php echo $image['popup']; ?>"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></p></li>
						        <?php } ?>
					        </ul>
					      </div>
				      </div>
				      <?php } ?>
			      </div>
			    </div>

			    <div class="col-sm-<?php echo $product_center_grid; ?> product-center clearfix">
			     <div itemprop="offerDetails" itemscope itemtype="http://data-vocabulary.org/Offer">
			      <div class="description">
			        <?php if ($manufacturer) { ?>
			        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>" itemprop="brand"><?php echo $manufacturer; ?></a><br />
			        <?php } ?>
			        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
			        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>			      
			     </div>

			      <?php if ($gift && $gift != "") { ?>
			      <div class="options">
			        <h2><?php echo "Quà tặng"; ?></h2>
			        <div><?php echo $gift; ?></div>
			      </div>
			      <?php } ?>
			     
			      <?php if ($options) { ?>
			      <div class="options">
			        <h2><?php echo $text_option; ?></h2>
			        <?php foreach ($options as $option) { ?>
			        <?php if ($option['type'] == 'select') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <select name="option[<?php echo $option['product_option_id']; ?>]">
			            <option value=""><?php echo $text_select; ?></option>
			            <?php foreach ($option['option_value'] as $option_value) { ?>
			            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
			            <?php if ($option_value['price']) { ?>
			            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
			            <?php } ?>
			            </option>
			            <?php } ?>
			          </select>
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'radio') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <?php foreach ($option['option_value'] as $option_value) { ?>
			          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
			          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
			            <?php if ($option_value['price']) { ?>
			            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
			            <?php } ?>
			          </label>
			          <br />
			          <?php } ?>
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'checkbox') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <?php foreach ($option['option_value'] as $option_value) { ?>
			          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
			          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
			            <?php if ($option_value['price']) { ?>
			            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
			            <?php } ?>
			          </label>
			          <br />
			          <?php } ?>
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'image') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <table class="option-image">
			            <?php foreach ($option['option_value'] as $option_value) { ?>
			            <tr>
			              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
			              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
			              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
			                  <?php if ($option_value['price']) { ?>
			                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
			                  <?php } ?>
			                </label></td>
			            </tr>
			            <?php } ?>
			          </table>
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'text') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'textarea') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'file') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
			          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'date') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'datetime') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
			        </div>
			        <?php } ?>
			        <?php if ($option['type'] == 'time') { ?>
			        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
			          <?php if ($option['required']) { ?>
			          <span class="required">*</span>
			          <?php } ?>
			          <b><?php echo $option['name']; ?>:</b><br />
			          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
			        </div>
			        <?php } ?>
			        <?php } ?>
			      </div>
			      <?php } ?>
			      <div class="cart">
			        
			      <?php if ($review_status) { ?>
			      <div class="review">
			      	<span itemprop="review" class="hidden" itemscope itemtype="http://data-vocabulary.org/Review-aggregate">
			      		<span itemprop="rating"><?php echo $rating; ?></span>
			      	</span>
			        <div class="rating"><i class="icon-star<?php if($rating >= 1) { echo ' active'; } ?>"></i><i class="icon-star<?php if($rating >= 2) { echo ' active'; } ?>"></i><i class="icon-star<?php if($rating >= 3) { echo ' active'; } ?>"></i><i class="icon-star<?php if($rating >= 4) { echo ' active'; } ?>"></i><i class="icon-star<?php if($rating >= 5) { echo ' active'; } ?>"></i>&nbsp;&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
			        <?php if($this->theme_options->get( 'product_social_share' ) != '0') { ?>
			        <div class="share"><!-- AddThis Button BEGIN -->
			          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
			          <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
			          <!-- AddThis Button END --> 
			        </div>
			        <?php } ?>
			      </div>
			      <?php } ?>
		    	</div>
		    </div>
    	</div>
    	
    	<?php if($this->theme_options->get( 'custom_block', 'product_page', $this->config->get( 'config_language_id' ), 'status' ) == 1) { ?>
    	<div class="col-sm-3">
    		<div class="product-block">
    			<?php if($this->theme_options->get( 'custom_block', 'product_page', $this->config->get( 'config_language_id' ), 'heading' ) != '') { ?>
    			<h4 class="title-block"><?php echo $this->theme_options->get( 'custom_block', 'product_page', $this->config->get( 'config_language_id' ), 'heading' ); ?></h4>
    			<div class="strip-line"></div>
    			<?php } ?>
    			<div class="block-content">
    				<?php echo html_entity_decode($this->theme_options->get( 'custom_block', 'product_page', $this->config->get( 'config_language_id' ), 'text' )); ?>
    			</div>
    		</div>
    	</div>
    	<?php } ?>
    </div>
  </div>
  <?php 
  	  $language_id = $this->config->get( 'config_language_id' );
	  $tabs = array();
	  
	  $tabs[] = array(
	  	'heading' => $tab_description,
	  	'content' => 'description',
	  	'sort' => 1
	  );
	  
	  if ($attribute_groups) { 
		  $tabs[] = array(
		  	'heading' => $tab_attribute,
		  	'content' => 'attribute',
		  	'sort' => 3
		  );
	  }
	  
	  if ($review_status) { 
	  	  $tabs[] = array(
	  	  	'heading' => $tab_review,
	  	  	'content' => 'review',
	  	  	'sort' => 5
	  	  );
	  }
	  
	  if(is_array($this->config->get('product_tabs'))) {
		  foreach($this->config->get('product_tabs') as $tab) {
		  	if($tab['status'] == 1 || $tab['product_id'] == $product_id) {
		  		foreach($tab['tabs'] as $zakladka) {
		  			if($zakladka['status'] == 1) {
		  				$heading = false; $content = false;
		  				if(isset($zakladka[$language_id])) {
		  					$heading = $zakladka[$language_id]['name'];
		  					$content = html_entity_decode($zakladka[$language_id]['html']);
		  				}
		  				$tabs[] = array(
		  					'heading' => $heading,
		  					'content' => $content,
		  					'sort' => $zakladka['sort_order']
		  				);
		  			}
		  		}
		  	}
		  }
	  }
	  
	  usort($tabs, "cmp_by_optionNumber");
  ?>
  <div id="tabs" class="htabs">
  	<?php $i = 0; foreach($tabs as $tab) { $i++;
  		$id = 'tab_'.$i;
  		if($tab['content'] == 'description') { $id = 'tab-description'; }
  		if($tab['content'] == 'attribute') { $id = 'tab-attribute'; }
  		if($tab['content'] == 'review') { $id = 'tab-review'; }
  		echo '<a href="#'.$id.'">'.$tab['heading'].'</a>';
  	} ?>
  </div>
  <?php $i = 0; foreach($tabs as $tab) { $i++;
  	$id = 'tab_'.$i;
  	if($tab['content'] != 'description' && $tab['content'] != 'attribute' && $tab['content'] != 'review') {
  		echo '<div id="'.$id.'" class="tab-content">'.$tab['content'].'</div>';
  	}
  } ?>
  <div id="tab-description" class="tab-content" itemprop="description"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
	  <?php foreach ($attribute_groups as $attribute_group) { ?>
		    <h2><?php echo $attribute_group['name']; ?></h2>
	  	<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
				<?php echo html_entity_decode($attribute['text']); ?>
	  	<?php } ?>
	  <?php } ?>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 100%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags_product"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <?php 
  $class = 3; 
  $id = rand(0, 5000)*rand(0, 5000); 
  $all = 4; 
  $row = 4; 
  
  if($this->theme_options->get( 'product_per_pow' ) == 6) { $class = 2; }
  if($this->theme_options->get( 'product_per_pow' ) == 5) { $class = 25; }
  if($this->theme_options->get( 'product_per_pow' ) == 3) { $class = 4; }
  
  if($this->theme_options->get( 'product_per_pow' ) > 1) { $row = $this->theme_options->get( 'product_per_pow' ); $all = $this->theme_options->get( 'product_per_pow' ); } 
  ?>
  <div class="box">
    <?php if($this->theme_options->get( 'product_scroll_related' ) != '0') { ?>
    <!-- Carousel nav -->
    <a class="next" href="#myCarousel<?php echo $id; ?>" data-slide="next"><span></span></a>
    <a class="prev" href="#myCarousel<?php echo $id; ?>" data-slide="prev"><span></span></a>
    <?php } ?>
  	
    <div class="box-heading"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</div>
    <div class="strip-line"></div>
    <div class="box-content products related-products">
      <div class="box-product">
      	<div id="myCarousel<?php echo $id; ?>" <?php if($this->theme_options->get( 'product_scroll_related' ) != '0') { ?>class="carousel slide"<?php } ?>>
      		<!-- Carousel items -->
      		<div class="carousel-inner">
      			<?php $i = 0; $row_fluid = 0; $item = 0; foreach ($products as $product) { $row_fluid++; ?>
  	    			<?php if($i == 0) { $item++; echo '<div class="active item"><div class="product-grid"><div class="row">'; } ?>
  	    			<?php $r=$row_fluid-floor($row_fluid/$all)*$all; if($row_fluid>$all && $r == 1) { if($this->theme_options->get( 'product_scroll_related' ) != '0') { echo '</div></div></div><div class="item"><div class="product-grid"><div class="row">'; $item++; } else { echo '</div><div class="row">'; } } else { $r=$row_fluid-floor($row_fluid/$row)*$row; if($row_fluid>$row && $r == 1) { echo '</div><div class="row">'; } } ?>
  	    			<div class="col-sm-<?php echo $class; ?> col-xs-6">
  	    				<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/product.tpl'); ?>
  	    			</div>
      			<?php $i++; } ?>
      			<?php if($i > 0) { echo '</div></div></div>'; } ?>
      		</div>
  		</div>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.popup-gallery').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
			titleSrc: function(item) {
				return item.el.attr('title');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});

$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
				
				if (json['error']['profile']) {
				    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
				}
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
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>