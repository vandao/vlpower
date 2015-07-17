		<!-- Box -> Account -->

		<div class="box-color-3 box-shadow">

			<!-- Title -->
			
			<h3 class="box-color-3-title"><span><?php echo $heading_title; ?></span></h3>	

			<!-- Text -->

			<div class="box-color-3-text">

			    <div class="box-category">
			      <ul>
			        <?php foreach ($categories as $category) { ?>
			        <li>
			          <?php if ($category['category_id'] == $category_id) { ?>
			          <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
			          <?php } else { ?>
			          <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
			          <?php } ?>
			          <?php if ($category['children']) { ?>
			          <ul>
			            <?php foreach ($category['children'] as $child) { ?>
			            <li>
			              <?php if ($child['category_id'] == $child_id) { ?>
			              <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
			              <?php } else { ?>
			              <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
			              <?php } ?>
							  <!-- Start -->	
							  <?php $categories1 = $this->model_catalog_category->getCategories($child['category_id']); ?>	
				          <?php if ($categories1) { ?>
				          <ul style="padding:10px 0px 10px 10px">
				            <?php foreach ($categories1 as $category1) { ?>
				            <li>
				              <?php if ($category1['category_id'] == $submenu) { ?>
				              <a href="<?php echo $this->url->link('product/category', 'path='.$category['category_id'].'_' . $child['category_id'] . '_' . $category1['category_id']); ?>" class="active"> - <?php echo $category1['name']; ?></a>
				              <?php } else { ?>
				              <a href="<?php echo $this->url->link('product/category', 'path='.$category['category_id'].'_' . $child['category_id'] . '_' . $category1['category_id']) ?>"> - <?php echo $category1['name']; ?></a>
				              <?php } ?>
				            </li>
				            <?php } ?>
				          </ul>
				          <?php } ?>
							 <!-- END -->
			            </li>
			            <?php } ?>
			          </ul>
			          <?php } ?>
			        </li>
			        <?php } ?>
			      </ul>
			    </div>
	 
			</div>

			<!-- End Text -->

		</div>
		
		<!-- End Box -> Account -->