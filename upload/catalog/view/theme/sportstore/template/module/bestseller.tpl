		<!-- Box -> Bestseller -->

		<div class="box-color-1 box-shadow">

			<!-- Title -->
			
			<h3 class="box-color-1-title"><span><?php echo $heading_title; ?></span></h3>	

			<!-- Text -->

			<div class="box-color-1-text">

				<!-- List items -->

				<ul class="list-items">
		      <?php $i = 0; foreach ($products as $product) { ?>
					<!-- Item -->
					<li>
			        <?php if ($product['thumb']) { ?>
					  <div class="img float-left"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" width="60px" height="45px" alt="" /></a></div>	
			        <?php } ?>
						<div class="text float-left">

							<strong><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></strong>
				        <?php if ($product['price']) { ?>
				        <p class="price">
				          <?php if (!$product['special']) { ?>
				          <?php echo $product['price']; ?>
				          <?php } else { ?>
				          <span class="price-old"><?php echo $product['price']; ?></span> <?php echo $product['special']; ?>
				          <?php } ?>
				        </p>
				        <?php } ?>
						
						</div>
						<p class="clear"></p>
						
					</li>
					<!-- End item -->
		      <?php $i++; } ?>
				</ul>	

				<ul class="btn">
					
					<?php $test = ceil($i/3); ?>
					<?php for( $s = 1; $s <= $test; $s++ ) { ?>
					<li><a href="#"><?php echo $s; ?></a></li>
					<?php } ?>

				</ul>

			</div>

			<!-- End Text -->

		</div>
		
		<!-- End Box -> Bestseller -->