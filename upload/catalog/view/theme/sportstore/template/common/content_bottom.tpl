<?php $i = 0; foreach ($modules as $module) { ?>
<?php $i++; ?>
<?php } ?>
<?php if($i >0 ) { ?><p class="clear"></p><?php } ?>
<?php foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } ?>