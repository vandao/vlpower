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
	
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_newsletter; ?></td>
          <td><?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button"><span><?php echo $button_back; ?></span></a></div>
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
	
  		</div>
		
	</div>	
	
  </div>	
  <!-- End Center -->	
  <?php echo $column_right; ?>		
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>