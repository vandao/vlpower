		<!-- Box -> Information -->

		<div class="box-color-1 box-shadow">

			<!-- Title -->
			
			<h3 class="box-color-1-title"><span><?php echo $heading_title; ?></span></h3>	

			<!-- Text -->

			<div class="box-color-1-text">
			
		    <ul>
		      <?php foreach ($informations as $information) { ?>
		      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
		      <?php } ?>
		      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		    </ul>
				
			</div>

			<!-- End Text -->

		</div>
		
		<!-- End Box -> Information -->