		<!-- Box -->

		<div class="box-color-2 box-shadow">

			<!-- Title -->

			<h3 class="box-color-2-title"><span><?php echo $heading_title; ?></span></h3>

			<!-- Text -->

			<div class="box-color-2-text">
	
		    <div class="box-product">
		      <?php foreach ($products as $product) { ?>
		      <div>
		        <?php if ($product['thumb']) { ?>
		        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
		        <?php } ?>
		        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
		        
		        <?php if ($product['rating']) { ?>
		        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
		        <?php } ?>
		        <!-- VAN DAO -->
		        <div class="cart"><a onclick="window.location.href='<?php echo $product['href']; ?>'" class="button"><span><?php echo $button_cart; ?></span></a></div>
		      </div>
		      <?php } ?>
		    </div>
	
  		</div>
		
	</div>	
	
	<!-- End box -->