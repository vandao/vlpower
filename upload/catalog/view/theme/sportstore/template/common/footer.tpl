	<p class="clear" style="height:38px"></p>

</div>

<!-- End content -->

<!-- Footer -->

<div id="footer">
	
 <?php 
$displayCustomFooter =  $this->config->get('customFooter_status');

if($displayCustomFooter == 1) {

echo $customFooter; 
}
?>
	
	<!-- Footer Navigation -->
	
	<!-- Van Dao -->
	
	<!-- End footer navigation -->
	
	<!-- Separator --><p class="separator"></p>
	
	<!-- Copyright -->
	
	
	<!-- End copyright -->

</div>

<!-- End footer -->
</html>