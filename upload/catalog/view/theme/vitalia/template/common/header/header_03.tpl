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
									<?php if (!$logged) { ?>
									<?php echo $text_welcome; ?>
									<?php } else { ?>
									<?php echo $text_logged; ?>
									<?php } ?>
								</div>
							</div>
							
							<!-- Top Bar Right -->
							<div class="col-sm-6" id="top-bar-right">
								<?php echo $cart; ?>
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
							<!-- Header Center -->
							<div class="col-sm-12 text-center" id="header-center">
								<?php if ($logo) { ?>
								<!-- Logo -->
								<h1><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></h1>
								<?php } ?>	
								
								<!-- Links -->
								<ul class="header-links">
									<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
									<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								</ul>							
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
										Navigation
									</div>
								</div>
							</div>
						</div>
						
						<div class="megamenu-wrapper">
							<div class="megamenu-pattern">
								<div class="container">
									<ul class="megamenu">
										<li class="home"><a href="<?php echo $home; ?>"><i class="icon-home"></i></a></li>
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