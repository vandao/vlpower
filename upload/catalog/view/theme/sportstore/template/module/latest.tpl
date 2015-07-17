 	<!--jCarousel library-->	

	<script type="text/javascript" src="catalog/view/theme/sportstore/js/jquery.jcarousel.min.js"></script>
	
	<script type="text/javascript">

	function mycarousel_initCallback(carousel)
	{
	    // Disable autoscrolling if the user clicks the prev or next button.
	    carousel.buttonNext.bind('click', function() {
	        carousel.startAuto(0);
	    });

	    carousel.buttonPrev.bind('click', function() {
	        carousel.startAuto(0);
	    });

	    // Pause autoscrolling if the user moves with the cursor over the clip.
	    carousel.clip.hover(function() {
	        carousel.stopAuto();
	    }, function() {
	        carousel.startAuto();
	    });
	};

	jQuery(document).ready(function() {
	    jQuery('#newest-products').jcarousel({
	        auto: 15,
	        wrap: 'last',
	        initCallback: mycarousel_initCallback
	    });
	});

	</script>

	<!-- Box -> Latest -->

		<div class="box-color-2 box-shadow">

			<!-- Title -->
			
			<h3 class="box-color-2-title"><span><?php echo $heading_title; ?></span></h3>	

			<!-- Text -->

			<div class="box-color-2-text">
					
		    <ul id="newest-products" class="jcarousel-skin-tango">
			 
		      <?php foreach ($products as $product) { ?>
				<!-- Item -->	
		      <li>
		        <?php if ($product['thumb']) { ?>
				  <!-- Img --><div class="img"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="150px" height="100px" alt="" /></a></div>	
		        <?php } ?>
				  <h2><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h2>
		        
		        <!-- VAN DAO -->
		        <a onclick="window.location.href='<?php echo $product['href']; ?>'" class="button"><span><?php echo $button_cart; ?></span></a>
		      </li>
				<!-- End item -->
		      <?php } ?>
				
		    </ul>
				
			</div>

			<!-- End Text -->

		</div>
		
		<!-- End Box -> Latest -->
