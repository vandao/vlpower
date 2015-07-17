		<!-- Box -> Store -->

		<div class="box-color-1 box-shadow">

			<!-- Title -->
			
			<h3 class="box-color-1-title"><span><?php echo $heading_title; ?></span></h3>	

			<!-- Text -->

			<div class="box-color-1-text">
			

    <p style="text-align: center;"><?php echo $text_store; ?></p>
    <?php foreach ($stores as $store) { ?>
    <?php if ($store['store_id'] == $store_id) { ?>
    <a href="<?php echo $store['url']; ?>"><b><?php echo $store['name']; ?></b></a><br />
    <?php } else { ?>
    <a href="<?php echo $store['url']; ?>"><?php echo $store['name']; ?></a><br />
    <?php } ?>
    <?php } ?>
    <br />
				
			</div>

			<!-- End Text -->

		</div>
		
		<!-- End Box -> Store -->
