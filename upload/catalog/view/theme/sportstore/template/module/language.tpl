<?php if (count($languages) > 1) { ?>

	<!-- Language -->
	
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language_form">
	
		<div id="language_switcher" class="switcher grey-30 float-right">
		
          <?php foreach ($languages as $language) { ?>
          <?php if ($language['code'] == $language_code) { ?>
			 <p>Language: <span class="orange"><?php echo $language['name']; ?></span></p>
          <?php } ?>
          <?php } ?>
			<ul class="option box-shadow">
				
            <?php foreach ($languages as $language) { ?>
            <li><a href="javascript:;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();"><?php echo $language['name']; ?></a></li>
				<?php } ?>
			
			</ul>
	      <input type="hidden" name="language_code" value="" />
	      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			
		</div>
		
	</form><!-- End currency form -->
	
	<!-- End language -->
	
<?php } ?>