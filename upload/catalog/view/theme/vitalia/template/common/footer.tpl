<?php 
if($this->registry->has('theme_options') == true) { 
	require_once( DIR_TEMPLATE.$this->config->get('config_template')."/lib/module.php" );
	$modules = new Modules($this->registry);
	
	// Pobranie zmiennych
	$language_id = $this->config->get( 'config_language_id' );
	$customfooter = $this->theme_options->get( 'customfooter' );
	if(!isset($customfooter[$language_id])) {
		$customfooter[$language_id] = array(
			'aboutus_status' => 0,
			'twitter_status' => 0,
			'facebook_status' => 0,
			'contact_status' => 0
		);
	}
	
	$customfooter_top = $modules->getModules('customfooter_top');
	$customfooter_bottom = $modules->getModules('customfooter_bottom');
	
	// Sprawdzanie czy panele są włączone
	if(isset($customfooter[$language_id]) || count($customfooter_top) || count($customfooter_bottom)) { 
		if($customfooter[$language_id]['twitter_status'] == '1' || $customfooter[$language_id]['contact_status'] == '1' || $customfooter[$language_id]['aboutus_status'] == '1' || $customfooter[$language_id]['facebook_status'] == '1' || count($customfooter_top) || count($customfooter_bottom)) { 
			
			// Ustalanie szerokości paneli
			$grids = 12; $test = 0;  
			if($customfooter[$language_id]['aboutus_status'] == '1') { $test++; } 
			if($customfooter[$language_id]['twitter_status'] == '1') { $test++; } 
			if($customfooter[$language_id]['facebook_status'] == '1') { $test++; } 
			if($customfooter[$language_id]['contact_status'] == '1') { $test++; } 
			if($test == 0) { $test = 1; }
			$grids = 12/$test; 
	
	?>
	<!-- CUSTOM FOOTER
		================================================== -->
	<div class="custom-footer <?php if($this->theme_options->get( 'custom_footer_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?>">
		<div class="background-custom-footer"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<div class="container" style="padding-bottom: 0px;">
					<?php 
					if( count($customfooter_top) ) { 
						foreach ($customfooter_top as $module) {
							echo $module;
						}
					} ?>
				
					<div class="row">
						<?php if($customfooter[$language_id]['aboutus_status'] == '1') { ?>
						<!-- About us -->
						<div class="col-sm-<?php echo $grids; ?>">
							<?php if($customfooter[$language_id]['aboutus_title'] != '') { ?>
							<h4><i class="icon-info-sign"></i> <?php echo $customfooter[$language_id]['aboutus_title']; ?></h4>
							<?php } ?>
							<p><?php echo html_entity_decode(nl2br($customfooter[$language_id]['aboutus_text'])); ?></p>
						</div>
						<?php } ?>
						
						<?php if($customfooter[$language_id]['contact_status'] == '1') { ?>
						<!-- Contact -->
						<div class="col-sm-<?php echo $grids; ?>">
							<?php if($customfooter[$language_id]['contact_title'] != '') { ?>
							<h4><i class="icon-envelope"></i> <?php echo $customfooter[$language_id]['contact_title']; ?></h4>
							<?php } ?>
							<ul class="contact-us clearfix">
								<?php if($customfooter[$language_id]['contact_phone'] != '' || $customfooter[$language_id]['contact_phone2'] != '') { ?>
								<!-- Phone -->
								<li>
									<i class="icon-mobile-phone"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_phone'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_phone']; ?><br>
										<?php } ?>
										<?php if($customfooter[$language_id]['contact_phone2'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_phone2']; ?>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_email'] != '' || $customfooter[$language_id]['contact_email2'] != '') { ?>
								<!-- Email -->
								<li>
									<i class="icon-envelope"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_email'] != '') { ?>
											<span><?php echo $customfooter[$language_id]['contact_email']; ?></span><br>
										<?php } ?>
										<?php if($customfooter[$language_id]['contact_email2'] != '') { ?>
											<span><?php echo $customfooter[$language_id]['contact_email2']; ?></span>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
								<?php if($customfooter[$language_id]['contact_skype'] != '' || $customfooter[$language_id]['contact_skype2'] != '') { ?>
								<!-- Phone -->
								<li>
									<i class="icon-skype"></i>
									<p>
										<?php if($customfooter[$language_id]['contact_skype'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_skype']; ?><br>
										<?php } ?>
										<?php if($customfooter[$language_id]['contact_skype2'] != '') { ?>
											<?php echo $customfooter[$language_id]['contact_skype2']; ?>
										<?php } ?>
									</p>
								</li>
								<?php } ?>
							</ul>
						</div>
						<?php } ?>
						
						<?php if($customfooter[$language_id]['twitter_status'] == '1') { ?>
						<!-- Twitter -->
						<div class="col-sm-<?php echo $grids; ?>">
							<?php if($customfooter[$language_id]['twitter_title'] != '') { ?>
							<h4><i class="icon-twitter"></i> <?php echo $customfooter[$language_id]['twitter_title']; ?></h4>
							<?php } ?>
							
							<div style="position: relative;margin-top: -10px;margin-bottom: -10px;"><a class="twitter-timeline"  href="https://twitter.com/@<?php echo $customfooter[$language_id]['twitter_profile']; ?>" data-chrome="noheader nofooter noborders noscrollbar transparent" data-tweet-limit="2"  data-widget-id="<?php echo $customfooter[$language_id]['twitter_widget_id'] ; ?>" data-theme="<?php if($customfooter[$language_id]['twitter_theme'] == 'dark') { echo 'dark'; } else { echo 'light'; } ?>" data-related="twitterapi,twitter" data-aria-polite="assertive">Tweets by @<?php echo $customfooter[$language_id]['twitter_profile'] ; ?></a>
							<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
							window.setTimeout(function(){
							    $(".twitter-timeline").contents().find(".e-entry-title").css("font-size","12px");
							    $(".twitter-timeline").contents().find(".tweet").css("font-size","12px");
							    $(".twitter-timeline").contents().find(".p-name").css("font-size","12px");
							  }, 1000);</script></div>
						</div>
						<?php } ?>
						
						<?php if($customfooter[$language_id]['facebook_status'] == '1') { ?>
						<!-- Facebook -->
						<div class="col-sm-<?php echo $grids; ?>">
							<?php if($customfooter[$language_id]['facebook_title'] != '') { ?>
							<h4><i class="icon-facebook-sign"></i> <?php echo $customfooter[$language_id]['facebook_title']; ?></h4>
							<?php } ?>
							
							<div id="fb-root"></div>
							<script>(function(d, s, id) {
							  var js, fjs = d.getElementsByTagName(s)[0];
							  if (d.getElementById(id)) return;
							  js = d.createElement(s); js.id = id;
							  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
							  fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));</script>
							
							<div id="facebook">
								<div class="fb-like-box fb_iframe_widget" profile_id="<?php echo $customfooter[$language_id]['facebook_id']; ?>" data-show-border="false"
								 data-width="260" data-height="<?php if($customfooter[$language_id]['facebook_height'] > 0) { echo $customfooter[$language_id]['facebook_height']; } else { echo '210'; } ?>" <?php if($customfooter[$language_id]['show_faces'] != '1') { ?>data-connections="<?php if($customfooter[$language_id]['facebook_faces'] > 0) { echo $customfooter[$language_id]['facebook_faces']; } else { echo '8'; } ?>"<?php } ?> data-colorscheme="light" data-stream="false" data-header="false" data-show-faces="<?php if($customfooter[$language_id]['show_faces'] == '1') { echo 'false'; } else { echo 'true'; } ?>" fb-xfbml-state="rendered"></div>
							</div>
						</div>
						<?php } ?>
					</div>
					
					<?php 
					if( count($customfooter_bottom) ) { 
						foreach ($customfooter_bottom as $module) {
							echo $module;
						}
					} ?>
				</div>
			</div>
		</div>
	</div>
	<?php } } ?>
	
	<!-- FOOTER
		================================================== -->
	<!-- Van Dao -->
	
	<!-- COPYRIGHT
		================================================== -->
	<div class="copyright <?php if($this->theme_options->get( 'footer_layout' ) == 2) { echo 'fixed'; } else { echo 'full-width'; } ?>">
		<div class="background-copyright"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<div class="container" style="padding-bottom: 0px;">
					<div class="line"></div>
					<?php if(is_array($this->theme_options->get( 'payment' ))) { if($this->theme_options->get( 'payment_status' ) != '0') { ?>
					<ul>
						<?php foreach($this->theme_options->get( 'payment' ) as $payment) { 
							echo '<li>';
							if($payment['link'] != '') {
								$new_tab = false;
								if($payment['new_tab'] == 1) {
									$new_tab = ' target="_blank"';
								}
								echo '<a href="' .$payment['link']. '"'.$new_tab.'>';
							}
							echo '<img src="image/' .$payment['img']. '" alt="' .$payment['name']. '">';
							if($payment['link'] != '') {
								echo '</a>';
							}
							echo '</li>'; 
						} ?>
					</ul>
					<?php } } ?>

					<p><?php echo "vlpower © " . date("Y"). " " . $customfooter[$language_id]['aboutus_title'] //echo $powered; ?></p>
					
					<?php 
					$bottom = $modules->getModules('bottom');
					if( count($bottom) ) { 
						foreach ($bottom as $module) {
							echo $module;
						}
					} ?>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get( 'config_template' ); ?>/js/megamenu.js"></script>
</div>

<a href="#" class="scrollup"><i class="icon-chevron-up"></i></a>
</div>
<?php } ?>
</body>
</html>