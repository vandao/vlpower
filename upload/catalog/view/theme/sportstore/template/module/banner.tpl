<div id="banner<?php echo $module; ?>" class="banner box-no-bg" style="width: auto">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" style="display:block" alt="<?php echo $banner['title']; ?>" class="box-shadow" title="<?php echo $banner['title']; ?>" /></a></div>
  <?php } else { ?>
  <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="box-shadow" style="display:block" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
<script type="text/javascript"><!--
var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>