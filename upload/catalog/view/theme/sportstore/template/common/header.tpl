<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xmlns:fb="http://ogp.me/ns/fb#">
<head>
<title><?php echo $title; ?></title>
<meta property="og:title" content="<?php echo $title; ?>" />

<base href="<?php echo $base; ?>" />

<?php foreach ($this->document->getFBMeta() as $fbMeta) { ?>
	<meta property="<?php echo $fbMeta['property'] ?>" content="<?php echo $fbMeta['content']; ?>" />
<?php } ?>

<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<meta property="og:description" content="<?php echo $description; ?>" />
<?php } else { ?>
<meta name="description" content="<?php echo "Mua Ban Xe Oto 24h, Chevrolet Viet Long, Dich vu sua chua, Phu tung, Phu Kien chinh hang, Cruze, Spark, Captiva, Aveo, Colorado, Orlando"; ?>" />
<?php } ?>

<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } else { ?>
<meta name="keywords" content="<?php echo "Mua Ban Xe Oto 24h, Chevrolet Viet Long, Dich vu sua chua, Phu tung, Phu Kien chinh hang, Cruze, Spark, Captiva, Aveo, Colorado, Orlando"; ?>" />
<?php } ?>

<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php if( $this->config->get('sportstore_header_font') != 'Arial'){	?>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('sportstore_header_font') ?>&v1' rel='stylesheet' type='text/css'>
<?php } ?>
<link href="https://fonts.googleapis.com/css?family=Francois%20One" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sportstore/stylesheet/styles.css" />
<script type="text/javascript" src="catalog/view/theme/sportstore/js/jquery-1.6.2.js"></script>
<script type="text/javascript" src="catalog/view/theme/sportstore/js/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sportstore/js/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript">var welcome = '<?php if (!$logged) { echo $text_welcome; } else { echo $text_logged; } ?>'; </script>
<script type="text/javascript" src="catalog/view/theme/sportstore/js/jquery-workarounds.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sportstore/stylesheet/jcarousel.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/sportstore/stylesheet/nivo-slider.css" />
<?php foreach ($styles as $style) { ?> 
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" /> 
<?php } ?>
<?php if($this->config->get('sportstore_skin') == '1'){ ?>	
<?php $bgbody = 'fff';
if($this->config->get('bg_body') != '' && $this->config->get('sportstore_status') == '1') { $bgbody = $this->config->get('bg_body'); } $pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_2.png),';
if($this->config->get('sportstore_status') == '1') {
if ($this->config->get('sportstore_body_bg_pattern') == 'own') { 
	$pattern = 'url('.HTTPS_IMAGE . $this->config->get('own_image').'),'; 
} else if ($this->config->get('sportstore_body_bg_pattern')!= "no_pattern") {  
	$pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_'.$this->config->get('sportstore_body_bg_pattern').'.png),'; 
} else {
	$pattern = '';
} } ?>
<link href="catalog/view/theme/sportstore/stylesheet/color2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.jcarousel-next-horizontal { background:url(catalog/view/theme/sportstore/images/right.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/right.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
.jcarousel-prev-horizontal { background:url(catalog/view/theme/sportstore/images/left.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/left.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
</style>
<?php } elseif($this->config->get('sportstore_skin') == '2') { ?>
<link href="catalog/view/theme/sportstore/stylesheet/color3.css" rel="stylesheet" type="text/css" />
<?php $bgbody = 'eeeee4';
if($this->config->get('bg_body') != '' && $this->config->get('sportstore_status') == '1') { $bgbody = $this->config->get('bg_body'); } $pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_2.png),';
if($this->config->get('sportstore_status') == '1') {
if ($this->config->get('sportstore_body_bg_pattern') == 'own') { 
	$pattern = 'url('.HTTPS_IMAGE . $this->config->get('own_image').'),'; 
} else if ($this->config->get('sportstore_body_bg_pattern')!= "no_pattern") {  
	$pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_'.$this->config->get('sportstore_body_bg_pattern').'.png),'; 
} else {
	$pattern = '';
} } ?>
<style type="text/css">
.jcarousel-next-horizontal { background:url(catalog/view/theme/sportstore/images/right.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/right.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
.jcarousel-prev-horizontal { background:url(catalog/view/theme/sportstore/images/left.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/left.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
</style>
<?php } else { ?>
<link href="catalog/view/theme/sportstore/stylesheet/colors.css" rel="stylesheet" type="text/css" />
<?php $bgbody = '232323';
if($this->config->get('bg_body') != '' && $this->config->get('sportstore_status') == '1') { $bgbody = $this->config->get('bg_body'); } $pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_1.png),';
if($this->config->get('sportstore_status') == '1') {
if ($this->config->get('sportstore_body_bg_pattern') == 'own') { 
	$pattern = 'url('.HTTPS_IMAGE . $this->config->get('own_image').'),'; 
} else if ($this->config->get('sportstore_body_bg_pattern')!= "no_pattern") {  
	$pattern = 'url(catalog/view/theme/sportstore/images/patterns/pattern_'.$this->config->get('sportstore_body_bg_pattern').'.png),'; 
} else {
	$pattern = '';
} } ?>
<style type="text/css">
.jcarousel-next-horizontal { background:url(catalog/view/theme/sportstore/images/right1.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/right1.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
.jcarousel-prev-horizontal { background:url(catalog/view/theme/sportstore/images/left1.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>;-pie-background:url(catalog/view/theme/sportstore/images/left1.png), <?php echo $pattern; ?> #<?php echo $bgbody; ?>; }
</style>
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<?php echo $google_analytics; ?>

<?php if($this->config->get('sportstore_status') == '1'){
	
	// custom styling
	?>	
	
	<style type="text/css">

<?php if($this->config->get('sportstore_body_font') != '') { ?>	
body, ul.list-items li div.text h2 a, ul.list-items li div.text h2, #newest-products li h2 a, #newest-products li h2, div.box-product .name a {
  font-family:<?php echo $this->config->get('sportstore_body_font') ?>;
  }
<?php } ?>

h1, h2, h3, h4, h5, h6, .button-green, .button, .google-font, div#top ul#menu li a, div#categories ul li a, div#submenu .welcome-text, div#submenu #search p
 {
<?php 
$toReplace =  $this->config->get('sportstore_header_font');
$font = str_replace("+", " ", $toReplace);
?>
font-family: '<?php echo $font; ?>';
}

<?php if($this->config->get('bg_body') != '') { ?>		
body { background-color:#<?php echo $this->config->get('bg_body') ?>; }
<?php } ?>

  <?php if ($this->config->get('sportstore_body_bg_pattern') == 'own') { ?>
	
  	  body{
background-image:url("<?php echo HTTPS_IMAGE . $this->config->get('own_image') ?>");
} 	

<?php   } else if ($this->config->get('sportstore_body_bg_pattern')!= "no_pattern") {  ?>
  body{
background-image:url("catalog/view/theme/sportstore/images/patterns/pattern_<?php echo  $this->config->get('sportstore_body_bg_pattern');?>.png");
}
<?php } else if ($this->config->get('sportstore_body_bg_pattern')!= "standard") { ?>
body { background-image:none; }
<?php } ?>

<?php if($this->config->get('border_top_bar') != '') { ?>		
div#top-bar { border-top:3px solid #<?php echo $this->config->get('border_top_bar') ?>; }
<?php } ?>

<?php if($this->config->get('navigation_top_gradient') != '' && $this->config->get('navigation_bottom_gradient') != '') { ?>		
div#categories ul li.standard div { border:3px solid #<?php echo $this->config->get('navigation_bottom_gradient') ?>;border-top:none; }
div#categories { background:#<?php echo $this->config->get('navigation_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('navigation_bottom_gradient') ?> 0%, #<?php echo $this->config->get('navigation_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('navigation_bottom_gradient') ?> 0%, #<?php echo $this->config->get('navigation_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('navigation_bottom_gradient') ?> 0%, #<?php echo $this->config->get('navigation_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('navigation_bottom_gradient') ?> 0%, #<?php echo $this->config->get('navigation_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('navigation_bottom_gradient') ?> 0%, #<?php echo $this->config->get('navigation_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('navigation_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('navigation_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('navigation_top_gradient') ?>, #<?php echo $this->config->get('navigation_bottom_gradient') ?>); }
<?php } ?>

<?php if($this->config->get('submenu_top_gradient') != '' && $this->config->get('submenu_bottom_gradient') != '') { ?>
div#categories ul li.standard div { background:#<?php echo $this->config->get('submenu_top_gradient') ?>; }
div#submenu { background:#<?php echo $this->config->get('submenu_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('submenu_bottom_gradient') ?> 0%, #<?php echo $this->config->get('submenu_top_gradient') ?> 60%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('submenu_bottom_gradient') ?> 0%, #<?php echo $this->config->get('submenu_top_gradient') ?> 60%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('submenu_bottom_gradient') ?> 0%, #<?php echo $this->config->get('submenu_top_gradient') ?> 60%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('submenu_bottom_gradient') ?> 0%, #<?php echo $this->config->get('submenu_top_gradient') ?> 60%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('submenu_bottom_gradient') ?> 0%, #<?php echo $this->config->get('submenu_top_gradient') ?> 60%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('submenu_bottom_gradient') ?>,color-stop(0.6, #<?php echo $this->config->get('submenu_top_gradient') ?>)));-pie-background: linear-gradient(#<?php echo $this->config->get('submenu_top_gradient') ?>, #<?php echo $this->config->get('submenu_bottom_gradient') ?>); }
div#categories ul li:hover, div#categories ul li.active { background:#<?php echo $this->config->get('submenu_top_gradient') ?>; }
<?php } ?>

<?php if($this->config->get('box_1_title_top_gradient') != '' && $this->config->get('box_1_title_bottom_gradient') != '') { ?>
div.box-color-1 h3.box-color-1-title { background:#<?php echo $this->config->get('box_1_title_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_1_title_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_1_title_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_1_title_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_1_title_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_1_title_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('box_1_title_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('box_1_title_top_gradient') ?>, #<?php echo $this->config->get('box_1_title_bottom_gradient') ?>); }
<?php } ?>

<?php if($this->config->get('box_2_title_top_gradient') != '' && $this->config->get('box_2_title_bottom_gradient') != '') { ?>
div.box-color-2 h3.box-color-2-title { background:#<?php echo $this->config->get('box_2_title_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_2_title_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_2_title_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_2_title_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_2_title_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_2_title_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('box_2_title_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('box_2_title_top_gradient') ?>, #<?php echo $this->config->get('box_2_title_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('box_3_title_top_gradient') != '' && $this->config->get('box_3_title_bottom_gradient') != '') { ?>
div.box-color-3 h3.box-color-3-title { background:#<?php echo $this->config->get('box_3_title_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_3_title_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_3_title_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_3_title_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_3_title_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?> 0%, #<?php echo $this->config->get('box_3_title_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('box_3_title_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('box_3_title_top_gradient') ?>, #<?php echo $this->config->get('box_3_title_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('button_content_top_gradient') != '' && $this->config->get('button_content_bottom_gradient') != '') { ?>
.button { background:#<?php echo $this->config->get('button_content_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('button_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_content_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('button_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_content_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('button_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_content_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('button_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_content_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('button_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_content_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('button_content_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('button_content_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('button_content_top_gradient') ?>, #<?php echo $this->config->get('button_content_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('button_hover_content_top_gradient') != '' && $this->config->get('button_hover_content_bottom_gradient') != '') { ?>
.button:hover { background:#<?php echo $this->config->get('button_hover_content_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_content_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_content_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_content_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_content_top_gradient') ?> 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_content_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('button_hover_content_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('button_hover_content_top_gradient') ?>, #<?php echo $this->config->get('button_hover_content_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('button_footer_top_gradient') != '' && $this->config->get('button_footer_bottom_gradient') != '') { ?>
.button-green { background:#<?php echo $this->config->get('button_footer_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('button_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_footer_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('button_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_footer_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('button_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_footer_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('button_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_footer_top_gradient') ?>) 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('button_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_footer_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('button_footer_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('button_footer_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('button_footer_top_gradient') ?>, #<?php echo $this->config->get('button_footer_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('button_hover_footer_top_gradient') != '' && $this->config->get('button_hover_footer_bottom_gradient') != '') { ?>
.button-green:hover { background:#<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?>;background-image: linear-gradient(bottom, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?> 94%);background-image: -o-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?> 94%);background-image: -moz-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?> 94%);background-image: -webkit-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?>) 94%);background-image: -ms-linear-gradient(bottom, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?> 0%, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?> 94%);background-image: -webkit-gradient(linear,left bottom,left top,color-stop(0, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?>),color-stop(0.94, #<?php echo $this->config->get('button_hover_footer_top_gradient') ?>));-pie-background: linear-gradient(#<?php echo $this->config->get('button_hover_footer_top_gradient') ?>, #<?php echo $this->config->get('button_hover_footer_bottom_gradient') ?>); }
<?php } ?>	

<?php if($this->config->get('body_font_color_1') != '') { ?>
span.orange, div.orange, p.orange, a.orange, strong.orange, div.box-category ul li ul li a { color:#<?php echo $this->config->get('body_font_color_1') ?>; }
<?php } ?>	

<?php if($this->config->get('body_font_color_2') != '') { ?>
span.green, div.green, p.green, a.green, strong.green { color:#<?php echo $this->config->get('body_font_color_2') ?>; }
<?php } ?>	

<?php if($this->config->get('body_font_color_3') != '') { ?>
span.white, div.white, p.white, a.white, strong.white { color:#<?php echo $this->config->get('body_font_color_3') ?>; }
<?php } ?>	

<?php if($this->config->get('body_font_color_4') != '') { ?>
span.grey-50, div.grey-50, p.grey-50, a.grey-50, strong.grey-50, div.grey-50 a { color:#<?php echo $this->config->get('body_font_color_4') ?>; }
<?php } ?>	

<?php if($this->config->get('body_font_color_5') != '') { ?>
span.grey-30, div.grey-30, p.grey-30, strong.grey-30, div.grey-30 a, p.grey-30 a { color:#<?php echo $this->config->get('body_font_color_5') ?>; }
<?php } ?>	

<?php if($this->config->get('price_color') != '') { ?>
.price { color:#<?php echo $this->config->get('price_color') ?> !important; }
<?php } ?>	

<?php if($this->config->get('old_price_color') != '') { ?>
.price .price-old { color:#<?php echo $this->config->get('old_price_color') ?> !important; }
<?php } ?>	

<?php if($this->config->get('product_name') != '') { ?>
#newest_products li h2 a, ul.list-items li .text strong, .name a { color:#<?php echo $this->config->get('product_name') ?> !important; }
<?php } ?>	

<?php if($this->config->get('custom_font_color_1') != '') { ?>
h1.orange, h2.orange, h3.orange, h4.orange, h5.orange, h6.orange, .custom-orange { color:#<?php echo $this->config->get('custom_font_color_1') ?>; }
<?php } ?>	

<?php if($this->config->get('custom_font_color_2') != '') { ?>
h1.white, h2.white, h3.white, h4.white, h5.white, h6.white, div#categories ul li a, .button-green, .welcome-text, .welcome-text a, .box-color-1-title span, .box-color-3-title span, .box-color-2-title span { color:#<?php echo $this->config->get('custom_font_color_2') ?> !important; }
<?php } ?>	

<?php if($this->config->get('custom_font_color_3') != '') { ?>
h1.grey-30, h2.grey-30, h3.grey-30, h4.grey-30, h5.grey-30, h6.grey-30, ul#menu a.grey-30 { color:#<?php echo $this->config->get('custom_font_color_3') ?>; }
<?php } ?>	

<?php if($this->config->get('text_search') != '') { ?>
#search p { color:#<?php echo $this->config->get('text_search') ?>; }
<?php } ?>	

	</style>
	
<?php } ?>
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>

<!-- Begin Google Analytics -->
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-64444234-1', 'auto');
	  ga('send', 'pageview');
	</script>

</head>
<body>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- Top bar -->

<div id="top-bar">
<div class="set-size">

	<?php echo $language; ?>
	<?php echo $currency; ?>
	
</div>
</div>

<!-- End top bar -->

<!-- Top -->

<div id="top" class="set-size">
	
	<?php if($logo) { ?>
	<!-- Logo -->
	
	<h2 class="float-left"><a href="/"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" /></a></h2>
	<?php } ?>
	
	<!-- Shopping cart & menu -->
	
	<div class="float-right">
		<!-- Van Dao -->
		
		<?php if ($contact_status == '1') : ?>
		<!-- Contact -->
		
		<!-- Van Dao -->
		<h3 class="white" style="padding-top:10px; margin-right: 10px; font-size: 16px;">
 		<?php if (! empty ( $gsm )) {	?>
		<!-- GSM --><div style="padding-top: 5px;">gsm: <span class="custom-orange"><?php	echo $gsm; ?></span></div>
		<?php	} ?>
 		<?php if (! empty ( $skype )) {	?> 
		<!-- Skype --><div style="padding-top: 5px;">skype: <span class="custom-orange"><?php echo $skype; ?></span></div>
		<?php	} ?>
 		<?php if (! empty ( $email )) {	?> 
		<!-- mail --><div style="padding-top: 5px;">mail: <span class="custom-orange"><?php echo $email; ?></span></div>
		<?php	} ?>
 		<?php if (! empty ( $fax )) {	?>
		<!-- fax --><div style="padding-top: 5px;">hotline: <span class="custom-orange"><?php echo $fax; ?></span></div>
		<?php	} ?>
		</h3>
	
		
		<!-- End contact -->
		<?php endif; ?>
	
	</div>
	
	<!-- End shopping cart & menu -->
	
</div>

<!-- End top -->

<?php if ($categories) { 

?>

<!-- Categories -->

<div id="categories" class="set-size-grid box-shadow">

	<ul>
		
		<?php foreach ($categories as $category) { $type = ' class="standard"'; if($category['column'] == 0) { $type = ' class="submenu"'; } if(count($category['children']) < 1) { $type = false; } ?>
		<li<?php echo $type; ?>>
	
			<a href="<?php echo $category['href']; ?>"><?php echo $category['name'];?></a>
			<?php if ($category['children']) { ?>
			<!-- Submenu -->
			<div>
				
				<ul class="column-<?php echo $category['column']; ?>">
					
					<?php $i = 0; for (; $i < count($category['children']); $i++) { ?>
					<li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php if($category['column'] == 0) { echo '>> '; } ?><?php echo  $category['children'][$i]['name']; ?></a>
					<?php 
					
					$categories_2 = $this->model_catalog_category->getCategories($category['children'][$i]['category_id']);				
					if($categories_2) { 
					
					echo '<ul class="subsubmenu box-shadow">';
					
						foreach ($categories_2 as $category_2) { 
						
						echo '<li><a href="'.$this->url->link('product/category', 'path='.$category['category_id'].'_' . $category['children'][$i]['category_id'] . '_' . $category_2['category_id']).'">' . $category_2['name'] . '</a></li>';			
						
						} 
						
					echo '</ul>';
						
					}
					 
					?>
					</li>
					<?php } ?>

				</ul>
					
			</div>
			<!-- End submenu -->
			<?php } ?>
			
		</li>
		<?php } ?>
		
	</ul>
	
</div>

<!-- End categories -->

<?php } ?>

<!-- Submenu -->

<div id="submenu" class="set-size-grid box-shadow">
		
	<!-- Welcome text -->
	
	<!-- Van Dao -->

	<!-- End welcome text -->
	
	<!-- Search -->
	
	<div id="search" class="float-right">
	
		<p class="custom-orange float-left"><?php echo $text_search; ?></p>
    	<input type="text" name="search" class="search-text autoclear float-left" value="<?php echo $search; ?>" />
		<div class="button-search search-submit float-left"></div>
	
	</div>
	
	<!-- End search -->
	
</div>

<!-- End submenu -->

<!-- Content -->

<div class="set-size">

<div id="notification"></div>
