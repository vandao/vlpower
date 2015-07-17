<?php echo $header; ?>
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_top.tpl'); ?>
 
 
  <?php if (isset($news_info)) { ?>
    <div class="news" <?php if ($image) { echo 'style="min-height:' . $min_height . 'px;"'; } ?>>
      <?php if ($image && false) { ?>
        <div class="image">
          <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a>
        </div>
      <?php } ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $description; ?>
    </div>
  <?php } elseif (isset($news_data)) { ?>
    <h1><?php echo $heading_title; ?></h1>
    <div class="product-list"<?php if($this->theme_options->get('default_list_grid') == '1') { echo ' style="display:none;"'; } ?>>
    <?php foreach ($news_data as $news) { ?>
     <div>
      <div class="row">
        <div class="image col-sm-3">          
          <?php if($news['image'] && $news['image'] != '') { ?>
          <a href="<?php echo $news['href']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>"/></a>
          <?php } else { ?>
          <a href="<?php echo $news['href']; ?>" title="<?php echo $heading_title; ?>"><img src="image/no_image.jpg" alt="<?php echo $news['title']; ?>" /></a>
          <?php } ?>
        </div>
        
        <div class="name-desc col-sm-9">
          <div class="name"><a href="<?php echo $news['href']; ?>"> <?php echo $news['title']; ?></a></div>
          <div class="description"><?php echo $news['description']; ?></div>
          <div class="rating-reviews clearfix">
            <a href="<?php echo $news['href']; ?>"> <?php echo "Chi tiết"; ?></a><br />
            <a href="<?php echo $news['href']; ?>"><img src="catalog/view/theme/default/image/message-news.png" alt="" /></a> <b><?php echo $text_posted; ?></b><?php echo $news['posted']; ?>            
          </div>
        </div>
      </div>
    </div>
    <?php } ?>
    </div>
  <?php } ?>

  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
<?php include('catalog/view/theme/'.$this->config->get('config_template').'/template/new_elements/wrapper_bottom.tpl'); ?>

<?php echo $footer; ?>