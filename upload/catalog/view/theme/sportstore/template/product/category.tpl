<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php echo $content_top; ?>	
  <?php echo $column_left; ?>
  <?php $liczba = 12; if($column_left != '') { $liczba = $liczba-3; } if($column_right != '') { $liczba = $liczba-3; } ?>	
  <!-- Center -->	
  <div class="grid-<?php echo $liczba; ?> float-left">
	
		<!-- Box -->

		<div class="box-color-2 box-shadow">

			<!-- Title -->

			<h3 class="box-color-2-title"><span><?php echo $heading_title; ?></span></h3>

			<!-- Text -->

			<div class="box-color-2-text">
	
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div><p class="border-content clear"></p>
  <?php } ?>
  <?php if ($categories) { ?>
  <h2 class="color-h2"><?php echo $text_refine; ?></h2>
  <div class="category-list">

    <ul>
	 	<?php foreach ($categories as $category) { ?>
		<?php if($category['thumb'] != '') { $image = $this->model_tool_image->resize($category['thumb'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height')); } else { $image = 'image/no_image.jpg'; } ?>
      <li><a href="<?php echo $category['href']; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $category['name']; ?>" /><br /><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
	 
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"><h2 class="color-h2"><?php echo $text_display; ?></h2> <div class="view-list-active"><?php echo $text_list; ?></div> <div class="view-grid"><a onclick="display('grid');"><?php echo $text_grid; ?></a></div></div>
    <div class="limit"><?php echo $text_limit; ?>
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
    <div class="sort"><?php echo $text_sort; ?>
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
  </div>
  <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare_total"><?php echo $text_compare; ?></a></div>
  <div class="product-list">
    <?php $s = 0; foreach ($products as $product) { if(!($s%4) && $s != 0) { echo '<p class="border-content clear grid" style="display:none"></p>'; }  $s++; if($s != 1) { echo '<p class="border-content clear list"></p>'; } ?>
    <div>
      <?php if ($product['thumb']) { ?>
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" width="150px" height="100px" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><div class="description"><?php echo $product['description']; ?></div></div>
		<div class="product-text">
     
      <!-- VAN DAO -->
      <div class="cart"><a onclick="window.location.href='<?php echo $product['href']; ?>'" class="button"><span><?php echo $button_cart; ?></span></a></div>
      <div class="wishlist"></div>
      <div class="compare"></div>
		</div>
    </div>
    <?php } ?>
  </div>	
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>	
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php } ?>
	
  		</div>
		
	</div>	
	
  </div>	
  <!-- End Center -->	
  <?php echo $column_right; ?>	
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {	
		$('.grid').css("display", "none");
		$('.list').css("display", "block");
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="product-text">';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
						
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
						
			$(element).html(html);
		});		
				
		$('.display').html('<div class="display"><h2 class="color-h2"><?php echo $text_display; ?></h2> <div class="view-list-active"><?php echo $text_list; ?></div> <div class="view-grid"><a onclick="display(\'grid\');"><?php echo $text_grid; ?></a></div></div>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		$('.list').css("display", "none");
		$('.grid').css("display", "block");
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<div class="display"><h2 class="color-h2"><?php echo $text_display; ?></h2> <div class="view-list"><a onclick="display(\'list\');"><?php echo $text_list; ?></a></div> <div class="view-grid-active"><?php echo $text_grid; ?></div></div>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>