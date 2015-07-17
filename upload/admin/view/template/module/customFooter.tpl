<?php
echo $header;
?>
<div id="content">
<?php

if ($error_warning) {
	?>
<div class="warning"><?php
	echo $error_warning;
	?></div>
<?php
}
?>
<div class="box">

<div class="heading">
<h1><?php
echo $heading_title;
?></h1>
<div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php
echo $button_save;
?></span></a><a onclick="location = '<?php
echo $cancel;
?>';"
	class="button"><span><?php
	echo $button_cancel;
	?></span></a></div>
</div>

<form action="<?php
echo $action;
?>" method="post"
	enctype="multipart/form-data" id="form">
	</br>
<td>Custom Footer Module Status: </td>
		<select name="customFooter_status">
              <?php
														if ($customFooter_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select>
            </br></br>
<div id="tabs" class="htabs"><a href="#tab_about">About Us</a><a
	href="#tab_contact">Contact</a><a href="#tab_facebook">Facebook</a><a
	href="#tab_followus">Custom panel</a>
<div id="tab_about">
<table class="form">
	<tr>
		<td>About Us Column Status</td>
		<td><select name="about_status">
              <?php
														if ($about_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Header text:</td>
		<td><input type="text" name="about_header"
			value="<?php
			echo $about_header;
			?>"></td>
	</tr>

	<tr>
		<td>About text:</td>
		<td><textarea name="about_text" rows="10" cols="50"> <?php
		echo $about_text;
		?></textarea>
		</td>
	</tr>
	<tr>
 <td>Image: </br>
           <?php 
           if(isset($about_us_image_status) && $about_us_image_status == '1'){
           	 ?>
           	 <input type="radio"  name="about_us_image_status" value="1" CHECKED/> Yes<br />
			<input type="radio" name="about_us_image_status" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="about_us_image_status" value="1" /> Yes<br />
			<input type="radio" name="about_us_image_status" value="0" CHECKED> No
         <?php   } ?>
           </td>
	<td>
             
              <input type="hidden" name="about_us_image" value="<?php echo $about_us_image; ?>" id="about_us_image" />
                <img src="<?php echo $about_us_image_preview; ?>" alt="" id="about_us_image_preview" class="image" onclick="image_upload('about_us_image', 'about_us_image_preview');" /></td>         
          </td>
	
	
	</tr>

</table>
</div>

<div id="tab_contact"><p style="clear:both"></p>
<br>Fill in the contact details you want to be displayed in your store front-end. If you don't want some of contact details to be displayed, just leave these fields empty
<table class="form">
	<tr>
		<td>Contact Column Status</td>
		<td><select name="contact_status">
              <?php
														if ($contact_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>

	<tr>
		<td>GSM:</td>
		<td><input type="text" name="gsm"
			value="<?php
			echo $gsm;
			?>"></td>
	</tr>
	
	<tr>
		<td>E-mail:</td>
		<td><input type="text" name="email"
			value="<?php
			echo $email;
			?>"></td>
	</tr>

	<tr>
		<td>Skype:</td>
		<td><input type="text" name="skype"
			value="<?php
			echo $skype;
			?>"></td>
	</tr>
	

	<tr>
		<td>Fax:</td>
		<td><input type="text" name="fax"
			value="<?php
			echo $fax;
			?>"></td>
	</tr>
	

</table>
</div>

<div id="tab_facebook">
<table class="form">
	
	<tr>
		<td>Facebook Column Status</td>
		<td><select name="facebook_status">
              <?php
														if ($facebook_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
		<tr>
		<td>Facebook page ID:</td>
		<td><input type="text" name="facebook_id"
			value="<?php
			echo $facebook_id;
			?>"></td>
	</tr>
	
	
</table>
</div>
<div id="tab_followus">
<table class="form">
	<tr>
		<td>Custom Panel Column Status</td>
		<td><select name="followus_column_status">
              <?php
														if ($followus_column_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
		<tr>
		<td>Header text:</td>
		<td><input type="text" name="custom_panel_header_text"
			value="<?php
			echo $custom_panel_header_text;
			?>" style="width:400px"></td>
	</tr>	
		<tr>
		<td>Content: </td>
		<td>
		<textarea name="followus_column_content" rows="10" cols="40" style="width:600px;height:200px"><?php echo $followus_column_content; ?></textarea>
		</td>
	</tr>
</table>
</div>


</form>
</div>
</div>
</div>
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 

<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script> 

<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 

<?php
echo $footer;
?>