<!-- HEADER
	================================================== -->
<header>
	<div class="background-header"></div>
	<div class="slider-header">
		<!-- Top Bar -->
		<div id="top-bar" class="<?php if($this->theme_options->get( 'top_bar_layout' ) == 2) { echo 'fixed'; } else { echo 'full-width'; } ?>">
			<div class="background-top-bar"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
					<div class="container">
						<div class="row">
							<!-- Top Bar Left -->
							<div class="col-sm-6">
								<!-- Welcome text -->
								<div class="welcome-text">
									<!-- Van Dao -->
								</div>
							</div>
							
							<!-- Top Bar Right -->
							<div class="col-sm-6" id="top-bar-right">
								<?php echo $currency.$language; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Top of pages -->
		<div id="top" class="<?php if($this->theme_options->get( 'header_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?>">
			<div class="background-top"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
					<div class="container">
						<div class="row">
							<!-- Header Left -->
							<div class="col-sm-3" id="header-left">
								<?php if ($logo) { ?>
								<!-- Logo -->
								<h1><a href="/"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></h1>
								<?php } ?>
							</div>
							
							<!-- Header Center -->
							<div class="col-sm-6" id="header-center">									
								<!-- Search -->
								<div style="padding-bottom: 20px; text-align: center;">
									<h2 style="color: yellow; font-size: 24px;">CÔNG TY TNHH MÁY PHÁT ĐIỆN VẠN LONG</h2>
									<span style="color: #ffffff; font-size: 14px;">Địa chỉ: 93/2A Đường TX14, KP1, P.Thạnh Xuân, Q12,TP.HCM, Fax: 08. 37164479</span>
								</div>
								
								<!-- Links -->
							</div>
							
							<!-- Header Right -->
							<div class="col-sm-3" id="header-right">
								<?php
									$customfooter = $this->theme_options->get( 'customfooter' );
									$language_id = $this->config->get( 'config_language_id' );
								?>
								<?php if($customfooter[$language_id]['contact_status'] == '1') { ?>
									<!-- Contact -->
										<ul class="contact-us clearfix">
											<?php if($customfooter[$language_id]['contact_phone'] != '' || $customfooter[$language_id]['contact_phone2'] != '') { ?>
											<!-- Phone -->
											<li style="margin-bottom: -15px;">
												<i class="icon-mobile-phone"></i>
												<p style="text-align: left;">
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
											<li style="margin-bottom: -15px;">
												<i class="icon-envelope"></i>
												<p style="text-align: left;">
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
											<li style="margin-bottom: -15px;">
												<i class="icon-skype"></i>
												<p style="text-align: left;">
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
								<?php } ?>
							</div>
						</div>
					</div>
					
					<?php 
					$menu = $modules->getModules('menu');
					if( count($menu) ) {
						foreach ($menu as $module) {
							echo $module;
						}
					} elseif($categories) {
					?>
					<div class="container-megamenu container horizontal">
						<div id="megaMenuToggle">
							<div class="megamenuToogle-wrapper">
								<div class="megamenuToogle-pattern">
									<div class="container">
										<div><span></span><span></span><span></span></div>
										Menu
									</div>
								</div>
							</div>
						</div>
						
						<div class="megamenu-wrapper">
							<div class="megamenu-pattern">
								<div class="container">
									<ul class="megamenu">
										<li class="home"><a href="/"><i class="icon-home"></i></a></li>
										<?php foreach ($categories as $category) { ?>
										<?php if ($category['children']) { ?>
										<li class="with-sub-menu hover"><p class="close-menu"></p>
											<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
										<?php } else { ?>
										<li>
											<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
										<?php } ?>
											<?php if ($category['children']) { ?>
											<?php 
												$width = '100%';
												$row_fluid = 3;
												if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
												if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
												if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
											?>
											<div class="sub-menu" style="width: <?php echo $width; ?>">
												<div class="content">
													<div class="row hover-menu">
														<?php for ($i = 0; $i < count($category['children']);) { ?>
														<div class="col-sm-<?php echo $row_fluid; ?>">
															<div class="menu">
																<ul>
																  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
																  <?php for (; $i < $j; $i++) { ?>
																  <?php if (isset($category['children'][$i])) { ?>
																  <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="window.location = '<?php echo $category['children'][$i]['href']; ?>';"><?php echo $category['children'][$i]['name']; ?></a></li>
																  <?php } ?>
																  <?php } ?>
																</ul>
															</div>
														</div>
														<?php } ?>
													</div>
												</div>
											</div>
											<?php } ?>
										</li>
										<?php } ?>
										<li>
											<a href="/index.php?route=information/news"><span><strong>Tin Tức</strong></span></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<?php
					}
					?>
				</div>
			</div>
		</div>
	</div>
	
	<?php $slideshow = $modules->getModules('slideshow'); ?>
	<?php  if(count($slideshow)) { ?>
	<!-- Slider -->
	<div id="slider" class="<?php if($this->theme_options->get( 'slideshow_layout' ) == 1) { echo 'full-width'; } else { echo 'fixed'; } ?>">
		<div class="background-slider"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<?php foreach($slideshow as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php } ?>
</header>