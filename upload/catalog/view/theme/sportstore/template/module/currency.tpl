<?php if (count($currencies) > 1) { ?>
	<!-- Currency -->
	
      <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form">
	
		<div id="currency_switcher" class="switcher grey-30 float-right">
		
          <?php foreach ($currencies as $currency) { ?>
          <?php if ($currency['code'] == $currency_code) { ?>
			 <p>Currency: <span class="orange"><?php echo $currency['title']; ?></span></p>
          <?php } ?>
          <?php } ?>
			<ul class="option box-shadow">
				
				<?php foreach ($currencies as $currency) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $('#currency_form').submit();"><?php echo $currency['title']; ?></a></li>
				<?php } ?>
			
			</ul>
      	<input type="hidden" name="currency_code" value="" />
      	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
						
		</div>
		
	</form><!-- End currency form -->
	
	<!-- End currency -->
<?php } ?>
