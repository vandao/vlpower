<?php echo $header; ?>
<!-- Content -->

<div id="content" class="set-size">

<?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $column_left; ?><div class="float-left column-right-home grid-9"><?php echo $column_right; ?></div>
<?php if($content_bottom != '') { ?><div id="content-bottom"><?php echo $content_bottom; ?></div><?php } ?>

</div>

<!-- End Content -->
<?php echo $footer; ?>