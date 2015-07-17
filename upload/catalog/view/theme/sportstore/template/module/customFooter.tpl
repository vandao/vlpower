
	<!-- Footer top outside -->
	
	<div class="footer-top-outside set-size">
		
		 <?php if ($about_status == '1') : ?>
		<!-- Sportstore -->
		
		<div class="grid-4 float-left">
			
<?php 

if($this->config->get('about_us_image_status') == '1'){
	
	echo '<img src="'. HTTPS_IMAGE . $this->config->get('about_us_image') . '"/><br />';
	
}

?>
			<span class="green" style="font-size:20px"><?php echo $about_header; ?></span>
			
			<p class="grey-50">
			
				<?php echo html_entity_decode($about_text); ?>
							
			</p>
		
		</div>
		
		<!-- End sportstore -->
		
		<?php endif; ?>
		
		<?php if ($contact_status == '1') : ?>
		<!-- Contact -->
		
		<div class="grid-4 float-left">
			<!-- Van Dao -->
     		<?php if (! empty ( $gsm )) {	?> 
			<!-- GSM --><h3 class="white">gsm: <span class="custom-orange"><?php	echo $gsm; ?></span></h3>
			<?php	} ?>
     		<?php if (! empty ( $skype )) {	?> 
			<!-- Skype --><h3 class="white">skype: <span class="custom-orange"><?php echo $skype; ?></span></h3>
			<?php	} ?>
     		<?php if (! empty ( $email )) {	?> 
			<!-- mail --><h3 class="white">mail: <span class="custom-orange"><?php echo $email; ?></span></h3>
			<?php	} ?>
     		<?php if (! empty ( $fax )) {	?> 
			<!-- fax --><h3 class="white">hotline: <span class="custom-orange"><?php echo $fax; ?></span></h3>
			<?php	} ?>			
		
		</div>
		
		<!-- End contact -->
		<?php endif; ?>
		
		<?php if ($facebook_status == '1' || $followus_column_status == '1') : ?>
		<!-- Follow us and facebook -->
		
		<div class="grid-4 float-left">
			
			<?php if ($followus_column_status == '1') : ?>
			<!-- Follow us -->
			
			<h3 class="white"><?php echo html_entity_decode($custom_panel_header_text); ?></h3>
			
			<?php echo html_entity_decode($followus_column_content); ?>
			
			<!-- End follow us -->
			<?php endif; ?>
			<?php if ($facebook_status == '1') : $styl = $this->config->get('sportstore_skin'); if($this->config->get('sportstore_skin') != '1' && $this->config->get('sportstore_skin') != '2') { $styl = false; } ?>
			<!-- Facebook -->
			
			<div style="height:10px"></div>
			<div style="position:relative;margin-left:-10px"><fb:like-box profile_id="<?php echo $facebook_id; ?>" width="310" height="70" colorscheme="dark" show-faces="false" stream="false" border_color="transparent" header="false"></fb:like-box></div>

			<!-- End Facebook -->
			<?php endif; ?>
		
		</div>
		
		<!-- End follow us and facebook -->
		<?php endif; ?>
	
		<p class="clear"></p>
	
	</div>
	
	<!-- End footer top outside -->
	
	<!-- Separator --><div class="set-size-grid"><p class="separator"></p></div>
