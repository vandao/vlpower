<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/report.png" alt="" /> <?php echo $heading_title; ?> </h1>
    </div>
    <div class="content">
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_ip; ?></td>
            <td class="left"><?php echo $column_customer; ?></td>
            <td class="left"><?php echo $column_tracking_info; ?></td>
            <td class="left"><?php echo $column_checkout; ?></td>
            <td class="right"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr class="filter">
            <td align="left"><input type="text" name="filter_ip" value="<?php echo $filter_ip; ?>" /></td>
            <td align="left"><input type="text" name="filter_customer" value="<?php echo $filter_customer; ?>" /></td>
            <td align="left">&nbsp;</td>
            <td align="left">&nbsp;</td>
            <td align="right"><a onClick="filter();" class="button">Filter</a></td>
          </tr>
          <?php if ($customers) { ?>
          <?php foreach ($customers as $customer) { ?>
          <tr>
            <td class="left"><a onclick="window.open('http://whatismyipaddress.com/ip/<?php echo $customer['ip']; ?>');"><?php echo $customer['ip']; ?></a></td>
            <td class="left"><?php echo $customer['customer']; ?></td>
            <td class="left"><b><?php echo $column_referer; ?>&nbsp;:&nbsp;</b><a onclick="window.open('<?php echo $customer['referer']; ?>');"><?php echo implode('<br/>', str_split($customer['referer'], 60)); ?></a>
			<br><br>
			<b><?php echo $column_country_name; ?>&nbsp;:&nbsp;</b><?php echo $customer['country']; ?>
			<br><br>
			<b><?php echo $column_browser; ?>&nbsp;:&nbsp;</b><?php echo $customer['browser']; ?>
			<br><br>
			<b><?php echo $column_landing_page; ?>&nbsp;:&nbsp;</b><?php echo $customer['landing_page']; ?>
			<br><br>
			<b><?php echo $column_time_arrived; ?>&nbsp;:&nbsp;</b><?php echo $customer['time_arrived']; ?>
			<br><br>
			<b><?php echo $column_last_click; ?>&nbsp;:&nbsp;</b><?php echo $customer['last_click']; ?>
			<br><br>
			<b><?php echo $column_last_page; ?>&nbsp;:&nbsp;</b><?php echo $customer['last_page']; ?>
			<br><br>
			<b><?php echo $column_num_clicks; ?>&nbsp;:&nbsp;</b><?php echo $customer['num_clicks']; ?>
			<br><br>
			<b><?php echo $column_products_viewed; ?>&nbsp;:&nbsp;</b>
				<?php foreach ($customer['viewed'] as $viewed) { ?>
					[ <?php echo $viewed['product_viewed']; ?> ]  
				<?php } ?>
			<br><br>
			<b><?php echo $column_cart_contents; ?>&nbsp;:&nbsp;</b>
				<?php foreach ($customer['cart_contents'] as $product_name) { ?>
					[ <?php echo $product_name['product_name']; ?> ] 
				<?php } ?>
			<br><br>
			<b><?php echo $column_cart_total; ?>&nbsp;:&nbsp;</b><?php echo $customer['cart_total']; ?>
			<br><br>
			<b><?php echo $column_cats_viewed; ?>&nbsp;:&nbsp;</b>
				<?php foreach ($customer['cats_viewed'] as $cat_viewed) { ?>
					[ <?php echo $cat_viewed['category_name']; ?> ]  
				<?php } ?>
			<br><br>
			<b><?php echo $column_routes; ?>&nbsp;:&nbsp;</b>
				<?php foreach ($customer['routes'] as $route) { ?>
					[ <?php echo $route['routes']; ?> ]  
				<?php } ?>
			<br><br>
			<b><?php echo $column_searches; ?>&nbsp;:&nbsp;</b>
				<?php foreach ($customer['searches'] as $search) { ?>
					[ <?php echo $search['searches']; ?> ]  
				<?php } ?>
			</td>
            <td class="left"><?php echo $customer['checkout']; ?></a></td>
            <td class="right"><?php foreach ($customer['action'] as $action) { ?>
              [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
              <?php } ?>
			</td>   
			  
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="5"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=report/customer_online_plus&token=<?php echo $token; ?>';
	
	var filter_customer = $('input[name=\'filter_customer\']').attr('value');
	
	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
		
	var filter_ip = $('input[name=\'filter_ip\']').attr('value');
	
	if (filter_ip) {
		url += '&filter_ip=' + encodeURIComponent(filter_ip);
	}
				
	location = url;
}
//--></script> 
<?php echo $footer; ?>