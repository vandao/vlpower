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
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
  <h2><?php echo $text_address_book; ?></h2>
  <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table style="width: 100%;">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
    <div class="right"><a href="<?php echo $insert; ?>" class="button"><span><?php echo $button_new_address; ?></span></a></div>
  </div>
	
  		</div>
		
	</div>	
	
  </div>	
  <!-- End Center -->	
  <?php echo $column_right; ?>		
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>