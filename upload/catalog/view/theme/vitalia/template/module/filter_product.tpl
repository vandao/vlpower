<?php $class = 3; $id = rand(0, 5000)*rand(0, 5000); $all = $cols*$itemsperpage; $row = $itemsperpage; ?>
<?php
if($itemsperpage == 1) { $class = 12; }
if($itemsperpage == 2) { $class = 6; }
if($itemsperpage == 3) { $class = 4; }
if($itemsperpage == 4) { $class = 3; }
if($itemsperpage == 5) { $class = 25; }
if($itemsperpage == 6) { $class = 2; }
?>
<?php if( count($tabs) > 1 ) { ?>
<div class="filter-product">
	<div class="filter-tabs clearfix">
		<ul id="tab<?php echo $id; ?>">
			<?php $i = 0; foreach($tabs as $tab) {
				echo '<li'.($i == 0 ? ' class="active"' : '').'><a href="#'.$tab['title'].'-'.$id.'-'.$i.'">'.$tab['heading'].'</a></li>';
			$i++; } ?>
		</ul>
	</div>
	
	<div class="tab-content">
		<?php $s = 0; foreach($tabs as $tab) { ?>
		<div class="tab-pane <?php if($s == 0) { echo 'active'; } ?>" id="<?php echo $tab['title'].'-'.$id.'-'.$s; ?>">
			<?php if($carousel != 0) { ?>
			<!-- Carousel nav -->
			<a class="next-button" href="#myCarousel<?php echo $id.'-'.$s; ?>" data-slide="next"><span></span></a>
			<a class="prev-button" href="#myCarousel<?php echo $id.'-'.$s; ?>" data-slide="prev"><span></span></a>
			<?php } ?>
			
			<div class="box-product">
				<div id="myCarousel<?php echo $id.'-'.$s; ?>" class="carousel slide">
					<!-- Carousel items -->
					<div class="carousel-inner">
						<?php $i = 0; $row_fluid = 0; foreach ($tab['products'] as $product) { $row_fluid++; ?>
			    			<?php if($i == 0) { echo '<div class="active item"><div class="product-grid"><div class="row">'; } ?>
			    			<?php $r=$row_fluid-floor($row_fluid/$all)*$all; if($row_fluid>$all && $r == 1) { echo '</div></div></div><div class="item"><div class="product-grid"><div class="row">'; } else { $r=$row_fluid-floor($row_fluid/$row)*$row; if($row_fluid>$row && $r == 1) { echo '</div><div class="row">'; } } ?>
			    			<div class="col-sm-<?php echo $class; ?> col-xs-6">
			    				<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/product.tpl'); ?>
			    			</div>
						<?php $i++; } ?>
						<?php if($i > 0) { echo '</div></div></div>'; } ?>
					</div>
				</div>
			</div>
		</div>
		<?php $s++; } ?>
	</div>
</div>
 
<script type="text/javascript">
$('#tab<?php echo $id; ?> a').click(function (e) {
  e.preventDefault();
  $(this).tab('show');
})
</script>
<?php } else { ?>
<?php foreach($tabs as $tab) { ?>
<div class="box">
  <?php if($carousel != 0) { ?>
  <!-- Carousel nav -->
  <a class="next" href="#myCarousel<?php echo $id; ?>" data-slide="next"><span></span></a>
  <a class="prev" href="#myCarousel<?php echo $id; ?>" data-slide="prev"><span></span></a>
  <?php } ?>
	
  <div class="box-heading"><?php echo $tab['heading']; ?></div>
  <div class="strip-line"></div>
  <div class="box-content products">
    <div class="box-product">
    	<div id="myCarousel<?php echo $id; ?>" <?php if($carousel != 0) { ?>class="carousel slide"<?php } ?>>
    		<!-- Carousel items -->
    		<div class="carousel-inner">
    			<?php $i = 0; $row_fluid = 0; $item = 0; foreach ($tab['products'] as $product) { $row_fluid++; ?>
	    			<?php if($i == 0) { $item++; echo '<div class="active item"><div class="product-grid"><div class="row">'; } ?>
	    			<?php $r=$row_fluid-floor($row_fluid/$all)*$all; if($row_fluid>$all && $r == 1) { if($this->theme_options->get( 'product_scroll_featured' ) != '0') { echo '</div></div></div><div class="item"><div class="product-grid"><div class="row">'; $item++; } else { echo '</div><div class="row">'; } } else { $r=$row_fluid-floor($row_fluid/$row)*$row; if($row_fluid>$row && $r == 1) { echo '</div><div class="row">'; } } ?>
	    			<div class="col-sm-<?php echo $class; ?> col-xs-6">
	    				<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/product.tpl'); ?>
	    			</div>
    			<?php $i++; } ?>
    			<?php if($i > 0) { echo '</div></div></div>'; } ?>
    		</div>
    		
    		<?php if($carousel != 0) { ?>
    		<!-- Indicators -->
    		<ol class="carousel-indicators">
    		  <?php for ($i = 0; $i < $item; $i++) { ?>
    		   <li data-target="#myCarousel<?php echo $id; ?>" data-slide-to="<?php echo $i; ?>"<?php if($i == 0) { echo ' class="active"'; } ?>></li>
    		  <?php } ?>
    		</ol>
    		<?php } ?>
		</div>
    </div>
  </div>
</div>
<?php } ?>
<?php } ?>