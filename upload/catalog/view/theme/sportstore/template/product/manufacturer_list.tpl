<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php echo $content_top; ?>	
  <?php echo $column_left; ?>
  <?php $liczba = 12; if($column_left != '') { $liczba = $liczba-3; } if($column_right != '') { $liczba = $liczba-3; } ?>	
  <!-- Center -->	
  <div class="grid-<?php echo $liczba; ?> float-left">
	
		<!-- Box -->

		<div class="box-color-2 box-shadow">

			<!-- Title -->

			<h3 class="box-color-2-title"><span><?php echo $heading_title; ?></span></h3>

			<!-- Text -->

			<div class="box-color-2-text">
	
  <?php if ($categories) { ?>
  <p><b><?php echo $text_index; ?></b>
    <?php foreach ($categories as $category) { ?>
    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
    <?php } ?>
  </p>
  <?php foreach ($categories as $category) { ?>
  <div class="manufacturer-list">
    <div class="manufacturer-heading"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>
    <div class="manufacturer-content">
      <?php if ($category['manufacturer']) { ?>
      <?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
      <ul>
        <?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($category['manufacturer'][$i])) { ?>
        <li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><span><?php echo $button_continue; ?></span></a></div>
  </div>
  <?php } ?>
	
  		</div>
		
	</div>	
	
  </div>
  <!-- End Center -->	
  <?php echo $column_right; ?>	
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>