<div class="<?php if($slider['settings']['layout_type'] == 1) { echo 'container'; } else { echo 'fullwidth'; } ?>">
	<div class="camera_wrap" id="camera_wrap_<?php echo $slider['id']; ?>">
		<?php foreach($slider['content'] as $sliders) {
			if($sliders[$language_id]['status'] == 1) { 
				$link = false;
				$image = $sliders[$language_id]['slider'];
				
				if($sliders[$language_id]['link'] != '') {
					$link = ' data-link="'.$sliders[$language_id]['link'].'"';
				} ?>
				<div data-src="image/<?php echo $image; ?>"<?php if($link) { echo $link; } ?>></div>
		<?php	}
		} ?>
	</div>
</div>

    <script>
		jQuery(function(){
			var x = "<?php echo $slider['settings']['slider_width']; ?>";
			var y = "<?php echo $slider['settings']['slider_height']; ?>";
			var num = y / x * 100;
			
			var options = $.parseJSON('{"fx":"random","time":3500,"transPeriod":900,"autoAdvance":true,"mobileAutoAdvance":true,"navigation":true,"pagination":true,"hover":true,"loader":"none"}');
			
			options.height = num + '%';
			options.minHeight = '';
			
			jQuery('#camera_wrap_<?php echo $slider['id']; ?>').camera(options);
		});
	</script>