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
	
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
  <h2><?php echo $text_my_account; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_tracking; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
    </ul>
  </div>
  <h2><?php echo $text_my_transactions; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
    </ul>
  </div>
	
  		</div>
		
	</div>	
	
  </div>	
  <!-- End Center -->	
  <?php echo $column_right; ?>		
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>