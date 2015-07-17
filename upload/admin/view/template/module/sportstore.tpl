<?php echo $header; ?>
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<!-- Uni-store Theme Options -->

<div class="bg-uni-store">
<div class="bg-uni-store-bottom">
<div class="bg-uni-store-top">

	<!-- Title -->

	<h1>SPORTSTORE Theme Options</h1>
	
	<!-- Text -->
	
	<div class="text">
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	
		<!-- Select color settings -->
		
		<div class="select-color-settings">
		
			<p>Select color settings</p>
			
			<ul>
			
				<li><a href="javascript:;" rel="0"<?php if($sportstore_skin < 1) { echo ' class="active"'; } ?>><img src="view/image/uni-store/image_1.png" alt=""></a></li>
				<li><a href="javascript:;" rel="1"<?php if($sportstore_skin == 1) { echo ' class="active"'; } ?>><img src="view/image/uni-store/image_2.png" alt=""></a></li>
				<li><a href="javascript:;" rel="2"<?php if($sportstore_skin == 2) { echo ' class="active"'; } ?>><img src="view/image/uni-store/image_3.png" alt=""></a></li>
			
			</ul>
			<input name="sportstore_skin" value="<?php echo $sportstore_skin; ?>" id="sportstore_skin" type="hidden" />
		
		</div>
		
		<?php $selected_disabled = false; $selected_enabled = false; if($sportstore_status == 0) { $selected_disabled = ' selected="selected"'; } if($sportstore_status == 1) { $selected_enabled = ' selected="selected"'; } ?>
		<select name="sportstore_status"><option value="0"<?php echo $selected_disabled; ?>>Disabled</option><option value="1"<?php echo $selected_enabled; ?>>Enabled</option></select><p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
		
		<!-- LEFT -->
		
		<div class="left">
		
			<h3>Text Color:</h3>
			<!-- Input -->
			<div>
			
				<p>Body font color 1</p>
				<div class="input"><input type="text" value="<?php echo $body_font_color_1; ?>" id="body_font_color_1" name="body_font_color_1" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Body font color 2</p>
				<div class="input"><input type="text" value="<?php echo $body_font_color_2; ?>" id="body_font_color_2" name="body_font_color_2" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Body font color 3</p>
				<div class="input"><input type="text" value="<?php echo $body_font_color_3; ?>" id="body_font_color_3" name="body_font_color_3" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Body font color 4</p>
				<div class="input"><input type="text" value="<?php echo $body_font_color_4; ?>" id="body_font_color_4" name="body_font_color_4" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Body font color 5</p>
				<div class="input"><input type="text" value="<?php echo $body_font_color_5; ?>" id="body_font_color_5" name="body_font_color_5" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Price color</p>
				<div class="input"><input type="text" value="<?php echo $price_color; ?>" id="price_color" name="price_color" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Old price color</p>
				<div class="input"><input type="text" value="<?php echo $old_price_color; ?>" id="old_price_color" name="old_price_color" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Product name</p>
				<div class="input"><input type="text" value="<?php echo $product_name; ?>" id="product_name" name="product_name" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Text search</p>
				<div class="input"><input type="text" value="<?php echo $text_search; ?>" id="text_search" name="text_search" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Custom font color 1</p>
				<div class="input"><input type="text" value="<?php echo $custom_font_color_1; ?>" id="custom_font_color_1" name="custom_font_color_1" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Custom font color 2</p>
				<div class="input"><input type="text" value="<?php echo $custom_font_color_2; ?>" id="custom_font_color_2" name="custom_font_color_2" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Custom font color 3</p>
				<div class="input"><input type="text" value="<?php echo $custom_font_color_3; ?>" id="custom_font_color_3" name="custom_font_color_3" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->

			<h3>Text options:</h3>
			<!-- Input -->
			<div>
			
				<p>Body font:</p>
				<div class="input">          <select name="sportstore_body_font" style="width:170px">

              <?php if (isset($sportstore_body_font)) {
              $selected = "selected";
              ?>
              <option value="Arial" <?php if($sportstore_body_font=='Arial'){echo $selected;} ?>>Arial</option>
              <option value="Verdana" <?php if($sportstore_body_font=='Verdana'){echo $selected;} ?>>Verdana</option>
              <option value="Helvetica" <?php if($sportstore_body_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
              
              <option value="Lucida Grande" <?php if($sportstore_body_font=='Lucida Grande'){echo $selected;} ?>>Lucida Grande</option>
              <option value="Trebuchet MS" <?php if($sportstore_body_font=='Helvetica'){echo $selected;} ?>>Trebuchet MS</option>
              <option value="Times New Roman" <?php if($sportstore_body_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
              <option value="Tahoma" <?php if($sportstore_body_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
              <option value="Georgia" <?php if($sportstore_body_font=='Georgia'){echo $selected;} ?>>Georgia</option>
                           
              <?php } else { ?>
              <option value="Arial" selected="selected">Arial</option>
              <option value="Verdana">Verdana</option>    
           <option value="Helvetica">Helvetica</option>
              <option value="Lucida Grande">Lucida Grande</option>
             <option value="Trebuchet MS">Trebuchet MS</option>
            <option value="Times New Roman">Times New Roman</option>
             <option value="Tahoma">Tahoma</option>
            <option value="Georgia">Georgia</option>
              
              <?php } ?>
            </select></div>
			
			</div>
			<!-- End Input -->	
			<!-- Input -->
			<div>
			
				<p>Headlines font:</p>
				<div class="input">          <select name="sportstore_header_font" style="width:170px">
              <?php $selected = "selected"; 
              ?>
<option value="Francois+One" <?php if($sportstore_header_font=='Francois+One' || $sportstore_header_font == ''){echo $selected;} ?>>Francois One</option>
		  <option value="Arial" <?php if($sportstore_header_font=='Arial'){echo $selected;} ?>>Arial</option>
<option value="Aclonica" <?php if($sportstore_header_font=='Aclonica'){echo $selected;} ?>>Aclonica</option>
<option value="Allan" <?php if($sportstore_header_font=='Allan'){echo $selected;} ?>>Allan</option>
<option value="Annie+Use+Your+Telescope" <?php if($sportstore_header_font=='Annie+Use+Your+Telescope'){echo $selected;} ?>>Annie Use Your Telescope</option>
<option value="Anonymous+Pro" <?php if($sportstore_header_font=='Anonymous+Pro'){echo $selected;} ?>>Anonymous Pro</option>
<option value="Allerta+Stencil" <?php if($sportstore_header_font=='Allerta+Stencil'){echo $selected;} ?>>Allerta Stencil</option>
<option value="Allerta" <?php if($sportstore_header_font=='Allerta'){echo $selected;} ?>>Allerta</option>
<option value="Amaranth" <?php if($sportstore_header_font=='Amaranth'){echo $selected;} ?>>Amaranth</option>
<option value="Anton" <?php if($sportstore_header_font=='Anton'){echo $selected;} ?>>Anton</option>
<option value="Architects+Daughter" <?php if($sportstore_header_font=='Architects+Daughter'){echo $selected;} ?>>Architects Daughter</option>
<option value="Arimo" <?php if($sportstore_header_font=='Arimo'){echo $selected;} ?>>Arimo</option>
<option value="Artifika" <?php if($sportstore_header_font=='Artifika'){echo $selected;} ?>>Artifika</option>
<option value="Arvo" <?php if($sportstore_header_font=='Arvo'){echo $selected;} ?>>Arvo</option>
<option value="Asset" <?php if($sportstore_header_font=='Asset'){echo $selected;} ?>>Asset</option>
<option value="Astloch" <?php if($sportstore_header_font=='Astloch'){echo $selected;} ?>>Astloch</option>
<option value="Bangers" <?php if($sportstore_header_font=='Bangers'){echo $selected;} ?>>Bangers</option>
<option value="Bentham" <?php if($sportstore_header_font=='Bentham'){echo $selected;} ?>>Bentham</option>
<option value="Bevan" <?php if($sportstore_header_font=='Bevan'){echo $selected;} ?>>Bevan</option>
<option value="Bigshot+One" <?php if($sportstore_header_font=='Bigshot+One'){echo $selected;} ?>>Bigshot One</option>
<option value="Bowlby+One" <?php if($sportstore_header_font=='Bowlby+One'){echo $selected;} ?>>Bowlby One</option>
<option value="Bowlby+One+SC" <?php if($sportstore_header_font=='Bowlby+One+SC'){echo $selected;} ?>>Bowlby One SC</option>
<option value="Brawler" <?php if($sportstore_header_font=='Brawler'){echo $selected;} ?>>Brawler </option>
<option value="Buda" <?php if($sportstore_header_font=='Buda'){echo $selected;} ?>>Buda</option>
<option value="Cabin" <?php if($sportstore_header_font=='Cabin'){echo $selected;} ?>>Cabin</option>
<option value="Calligraffitti" <?php if($sportstore_header_font=='Calligraffitti'){echo $selected;} ?>>Calligraffitti</option>
<option value="Candal" <?php if($sportstore_header_font=='Candal'){echo $selected;} ?>>Candal</option>
<option value="Cantarell" <?php if($sportstore_header_font=='Cantarell'){echo $selected;} ?>>Cantarell</option>
<option value="Cardo" <?php if($sportstore_header_font=='Cardo'){echo $selected;} ?>>Cardo</option>
<option value="Carter One" <?php if($sportstore_header_font=='Carter One'){echo $selected;} ?>>Carter One</option>
<option value="Caudex" <?php if($sportstore_header_font=='Caudex'){echo $selected;} ?>>Caudex</option>
<option value="Cedarville+Cursive" <?php if($sportstore_header_font=='Cedarville+Cursive'){echo $selected;} ?>>Cedarville Cursive</option>
<option value="Cherry+Cream+Soda" <?php if($sportstore_header_font=='Cherry+Cream+Soda'){echo $selected;} ?>>Cherry Cream Soda</option>
<option value="Chewy" <?php if($sportstore_header_font=='Chewy'){echo $selected;} ?>>Chewy</option>
<option value="Coda" <?php if($sportstore_header_font=='Coda'){echo $selected;} ?>>Coda</option>
<option value="Coming+Soon" <?php if($sportstore_header_font=='Coming+Soon'){echo $selected;} ?>>Coming Soon</option>
<option value="Copse" <?php if($sportstore_header_font=='Copse'){echo $selected;} ?>>Copse</option>
<option value="Corben" <?php if($sportstore_header_font=='Corben'){echo $selected;} ?>>Corben</option>
<option value="Cousine" <?php if($sportstore_header_font=='Cousine'){echo $selected;} ?>>Cousine</option>
<option value="Covered+By+Your+Grace" <?php if($sportstore_header_font=='Covered+By+Your+Grace'){echo $selected;} ?>>Covered By Your Grace</option>
<option value="Crafty+Girls" <?php if($sportstore_header_font=='Crafty+Girls'){echo $selected;} ?>>Crafty Girls</option>
<option value="Crimson+Text" <?php if($sportstore_header_font=='Crimson+Text'){echo $selected;} ?>>Crimson Text</option>
<option value="Crushed" <?php if($sportstore_header_font=='Crushed'){echo $selected;} ?>>Crushed</option>
<option value="Cuprum" <?php if($sportstore_header_font=='Cuprum'){echo $selected;} ?>>Cuprum</option>
<option value="Damion" <?php if($sportstore_header_font=='Damion'){echo $selected;} ?>>Damion</option>
<option value="Dancing+Script" <?php if($sportstore_header_font=='Dancing+Script'){echo $selected;} ?>>Dancing Script</option>
<option value="Dawning+of+a+New+Day" <?php if($sportstore_header_font=='Dawning+of+a+New+Day'){echo $selected;} ?>>Dawning of a New Day</option>
<option value="Didact+Gothic" <?php if($sportstore_header_font=='Didact+Gothic'){echo $selected;} ?>>Didact Gothic</option>
<option value="Droid+Sans" <?php if($sportstore_header_font=='Droid+Sans'){echo $selected;} ?>>Droid Sans</option>
<option value="Droid+Sans+Mono" <?php if($sportstore_header_font=='Droid+Sans+Mono'){echo $selected;} ?>>Droid Sans Mono</option>
<option value="Droid+Serif" <?php if($sportstore_header_font=='Droid+Serif'){echo $selected;} ?>>Droid Serif</option>
<option value="EB+Garamond" <?php if($sportstore_header_font=='EB+Garamond'){echo $selected;} ?>>EB Garamond</option>
<option value="Expletus+Sans" <?php if($sportstore_header_font=='Expletus+Sans'){echo $selected;} ?>>Expletus Sans</option>
<option value="Fontdiner+Swanky" <?php if($sportstore_header_font=='Fontdiner+Swanky'){echo $selected;} ?>>Fontdiner Swanky</option>
<option value="Forum" <?php if($sportstore_header_font=='Forum'){echo $selected;} ?>>Forum</option>
<option value="Geo" <?php if($sportstore_header_font=='Geo'){echo $selected;} ?>>Geo</option>
<option value="Give+You+Glory" <?php if($sportstore_header_font=='Give+You+Glory'){echo $selected;} ?>>Give You Glory</option>
<option value="Goblin+One" <?php if($sportstore_header_font=='Goblin+One'){echo $selected;} ?>>Goblin One</option>
<option value="Goudy+Bookletter+1911" <?php if($sportstore_header_font=='Goudy+Bookletter+1911'){echo $selected;} ?>>Goudy Bookletter 1911</option>
<option value="Gravitas+One" <?php if($sportstore_header_font=='Gravitas+One'){echo $selected;} ?>>Gravitas One</option>
<option value="Gruppo" <?php if($sportstore_header_font=='Gruppo'){echo $selected;} ?>>Gruppo</option>
<option value="Hammersmith+One" <?php if($sportstore_header_font=='Hammersmith+One'){echo $selected;} ?>>Hammersmith One</option>
<option value="Holtwood+One+SC" <?php if($sportstore_header_font=='Holtwood+One+SC'){echo $selected;} ?>>Holtwood One SC</option>
<option value="Homemade+Apple" <?php if($sportstore_header_font=='Homemade+Apple'){echo $selected;} ?>>Homemade Apple</option>
<option value="Inconsolata" <?php if($sportstore_header_font=='Inconsolata'){echo $selected;} ?>>Inconsolata</option>
<option value="Indie+Flower" <?php if($sportstore_header_font=='Indie+Flower'){echo $selected;} ?>>Indie Flower</option>
<option value="IM+Fell+DW+Pica" <?php if($sportstore_header_font=='IM+Fell+DW+Pica'){echo $selected;} ?>>IM Fell DW Pica</option>
<option value="IM+Fell+DW+Pica+SC" <?php if($sportstore_header_font=='IM+Fell+DW+Pica+SC'){echo $selected;} ?>>IM Fell DW Pica SC</option>
<option value="IM+Fell+Double+Pica" <?php if($sportstore_header_font=='IM+Fell+Double+Pica'){echo $selected;} ?>>IM Fell Double Pica</option>
<option value="IM+Fell+Double+Pica+SC" <?php if($sportstore_header_font=='IM+Fell+Double+Pica+SC'){echo $selected;} ?>>IM Fell Double Pica SC</option>
<option value="IM+Fell+English" <?php if($sportstore_header_font=='IM+Fell+English'){echo $selected;} ?>>IM Fell English</option>
<option value="IM+Fell+English+SC" <?php if($sportstore_header_font=='IM+Fell+English+SC'){echo $selected;} ?>>IM Fell English SC</option>
<option value="IM+Fell+French+Canon" <?php if($sportstore_header_font=='IM+Fell+French+Canon'){echo $selected;} ?>>IM Fell French Canon</option>
<option value="IM+Fell+French+Canon+SC" <?php if($sportstore_header_font=='IM+Fell+French+Canon+SC'){echo $selected;} ?>>IM Fell French Canon SC</option>
<option value="IM+Fell+Great+Primer" <?php if($sportstore_header_font=='IM+Fell+Great+Primer'){echo $selected;} ?>>IM Fell Great Primer</option>
<option value="IM+Fell+Great+Primer+SC" <?php if($sportstore_header_font=='IM+Fell+Great+Primer+SC'){echo $selected;} ?>>IM Fell Great Primer SC</option>
<option value="Irish+Grover" <?php if($sportstore_header_font=='Irish+Grover'){echo $selected;} ?>>Irish Grover</option>
<option value="Irish+Growler" <?php if($sportstore_header_font=='Irish+Growler'){echo $selected;} ?>>Irish Growler</option>
<option value="Istok+Web" <?php if($sportstore_header_font=='Istok+Web'){echo $selected;} ?>>Istok Web</option>
<option value="Josefin+Sans" <?php if($sportstore_header_font=='Josefin+Sans'){echo $selected;} ?>>Josefin Sans Regular 400</option>
<option value="Josefin+Slab" <?php if($sportstore_header_font=='Josefin+Slab'){echo $selected;} ?>>Josefin Slab Regular 400</option>
<option value="Judson" <?php if($sportstore_header_font=='Judson'){echo $selected;} ?>>Judson</option>
<option value="Jura" <?php if($sportstore_header_font=='Jura'){echo $selected;} ?>> Jura Regular</option>
<option value="Just+Another+Hand" <?php if($sportstore_header_font=='Just+Another+Hand'){echo $selected;} ?>>Just Another Hand</option>
<option value="Just+Me+Again+Down+Here" <?php if($sportstore_header_font=='Just+Me+Again+Down+Here'){echo $selected;} ?>>Just Me Again Down Here</option>
<option value="Kameron" <?php if($sportstore_header_font=='Kameron'){echo $selected;} ?>>Kameron</option>
<option value="Kenia" <?php if($sportstore_header_font=='Kenia'){echo $selected;} ?>>Kenia</option>
<option value="Kranky" <?php if($sportstore_header_font=='Kranky'){echo $selected;} ?>>Kranky</option>
<option value="Kreon" <?php if($sportstore_header_font=='Kreon'){echo $selected;} ?>>Kreon</option>
<option value="Kristi" <?php if($sportstore_header_font=='Kristi'){echo $selected;} ?>>Kristi</option>
<option value="La+Belle+Aurore" <?php if($sportstore_header_font=='La+Belle+Aurore'){echo $selected;} ?>>La Belle Aurore</option>
<option value="Lato" <?php if($sportstore_header_font=='Lato'){echo $selected;} ?>>Lato</option>
<option value="League+Script" <?php if($sportstore_header_font=='League+Script'){echo $selected;} ?>>League Script</option>
<option value="Lekton" <?php if($sportstore_header_font=='Lekton'){echo $selected;} ?>> Lekton </option>
<option value="Limelight" <?php if($sportstore_header_font=='Limelight'){echo $selected;} ?>> Limelight </option>
<option value="Lobster" <?php if($sportstore_header_font=='Lobster'){echo $selected;} ?>>Lobster</option>
<option value="Lobster Two" <?php if($sportstore_header_font=='Lobster Two'){echo $selected;} ?>>Lobster Two</option>
<option value="Lora" <?php if($sportstore_header_font=='Lora'){echo $selected;} ?>>Lora</option>
<option value="Love+Ya+Like+A+Sister" <?php if($sportstore_header_font=='Love+Ya+Like+A+Sister'){echo $selected;} ?>>Love Ya Like A Sister</option>
<option value="Loved+by+the+King" <?php if($sportstore_header_font=='Loved+by+the+King'){echo $selected;} ?>>Loved by the King</option>
<option value="Luckiest+Guy" <?php if($sportstore_header_font=='Luckiest+Guy'){echo $selected;} ?>>Luckiest Guy</option>
<option value="Maiden+Orange" <?php if($sportstore_header_font=='Maiden+Orange'){echo $selected;} ?>>Maiden Orange</option>
<option value="Mako" <?php if($sportstore_header_font=='Mako'){echo $selected;} ?>>Mako</option>
<option value="Maven+Pro" <?php if($sportstore_header_font=='Maven+Pro'){echo $selected;} ?>> Maven Pro</option>
<option value="Meddon" <?php if($sportstore_header_font=='Meddon'){echo $selected;} ?>>Meddon</option>
<option value="MedievalSharp" <?php if($sportstore_header_font=='MedievalSharp'){echo $selected;} ?>>MedievalSharp</option>
<option value="Megrim" <?php if($sportstore_header_font=='Megrim'){echo $selected;} ?>>Megrim</option>
<option value="Merriweather" <?php if($sportstore_header_font=='Merriweather'){echo $selected;} ?>>Merriweather</option>
<option value="Metrophobic" <?php if($sportstore_header_font=='Metrophobic'){echo $selected;} ?>>Metrophobic</option>
<option value="Michroma" <?php if($sportstore_header_font=='Michroma'){echo $selected;} ?>>Michroma</option>
<option value="Miltonian Tattoo" <?php if($sportstore_header_font=='Miltonian Tattoo'){echo $selected;} ?>>Miltonian Tattoo</option>
<option value="Miltonian" <?php if($sportstore_header_font=='Miltonian'){echo $selected;} ?>>Miltonian</option>
<option value="Modern Antiqua" <?php if($sportstore_header_font=='Modern Antiqua'){echo $selected;} ?>>Modern Antiqua</option>
<option value="Monofett" <?php if($sportstore_header_font=='Monofett'){echo $selected;} ?>>Monofett</option>
<option value="Molengo" <?php if($sportstore_header_font=='Molengo'){echo $selected;} ?>>Molengo</option>
<option value="Mountains of Christmas" <?php if($sportstore_header_font=='Mountains of Christmas'){echo $selected;} ?>>Mountains of Christmas</option>
<option value="Muli" <?php if($sportstore_header_font=='Muli'){echo $selected;} ?>>Muli Regular</option>
<option value="Neucha" <?php if($sportstore_header_font=='Neucha'){echo $selected;} ?>>Neucha</option>
<option value="Neuton" <?php if($sportstore_header_font=='Neuton'){echo $selected;} ?>>Neuton</option>
<option value="News+Cycle" <?php if($sportstore_header_font=='News+Cycle'){echo $selected;} ?>>News Cycle</option>
<option value="Nixie+One" <?php if($sportstore_header_font=='Nixie+One'){echo $selected;} ?>>Nixie One</option>
<option value="Nobile" <?php if($sportstore_header_font=='Nobile'){echo $selected;} ?>>Nobile</option>
<option value="Nova+Cut" <?php if($sportstore_header_font=='Nova+Cut'){echo $selected;} ?>>Nova Cut</option>
<option value="Nova+Flat" <?php if($sportstore_header_font=='Nova+Flat'){echo $selected;} ?>>Nova Flat</option>
<option value="Nova+Mono" <?php if($sportstore_header_font=='Nova+Mono'){echo $selected;} ?>>Nova Mono</option>
<option value="Nova+Oval" <?php if($sportstore_header_font=='Nova+Oval'){echo $selected;} ?>>Nova Oval</option>
<option value="Nova+Round" <?php if($sportstore_header_font=='Nova+Round'){echo $selected;} ?>>Nova Round</option>
<option value="Nova+Script" <?php if($sportstore_header_font=='Nova+Script'){echo $selected;} ?>>Nova Script</option>
<option value="Nova+Slim" <?php if($sportstore_header_font=='Nova+Slim'){echo $selected;} ?>>Nova Slim</option>
<option value="Nova+Square" <?php if($sportstore_header_font=='Nova+Square'){echo $selected;} ?>>Nova Square</option>
<option value="Nunito:light" <?php if($sportstore_header_font=='Nunito:light'){echo $selected;} ?>> Nunito Light</option>
<option value="Nunito" <?php if($sportstore_header_font=='Nunito'){echo $selected;} ?>> Nunito Regular</option>
<option value="OFL+Sorts+Mill+Goudy+TT" <?php if($sportstore_header_font=='OFL+Sorts+Mill+Goudy+TT'){echo $selected;} ?>>OFL Sorts Mill Goudy TT</option>
<option value="Old+Standard+TT" <?php if($sportstore_header_font=='Old+Standard+TT'){echo $selected;} ?>>Old Standard TT</option>
<option value="Open+Sans" <?php if($sportstore_header_font=='Open+Sans'){echo $selected;} ?>>Open Sans regular</option>
<option value="Open+Sans+Condensed" <?php if($sportstore_header_font=='Open+Sans+Condensed'){echo $selected;} ?>>Open Sans Condensed</option>
<option value="Orbitron" <?php if($sportstore_header_font=='Orbitron'){echo $selected;} ?>>Orbitron Regular (400)</option>
<option value="Oswald" <?php if($sportstore_header_font=='Oswald'){echo $selected;} ?>>Oswald</option>
<option value="Over+the+Rainbow" <?php if($sportstore_header_font=='Over+the+Rainbow'){echo $selected;} ?>>Over the Rainbow</option>
<option value="Reenie+Beanie" <?php if($sportstore_header_font=='Reenie+Beanie'){echo $selected;} ?>>Reenie Beanie</option>
<option value="Pacifico" <?php if($sportstore_header_font=='Pacifico'){echo $selected;} ?>>Pacifico</option>
<option value="Patrick+Hand" <?php if($sportstore_header_font=='Patrick+Hand'){echo $selected;} ?>>Patrick Hand</option>
<option value="Paytone+One" <?php if($sportstore_header_font=='Paytone+One'){echo $selected;} ?>>Paytone One</option>
<option value="Permanent+Marker" <?php if($sportstore_header_font=='Permanent+Marker'){echo $selected;} ?>>Permanent Marker</option>
<option value="Philosopher" <?php if($sportstore_header_font=='Philosopher'){echo $selected;} ?>>Philosopher</option>
<option value="Play" <?php if($sportstore_header_font=='Play'){echo $selected;} ?>>Play</option>
<option value="Playfair+Display" <?php if($sportstore_header_font=='Playfair+Display'){echo $selected;} ?>> Playfair Display </option>
<option value="Podkova" <?php if($sportstore_header_font=='Podkova'){echo $selected;} ?>> Podkova </option>
<option value="PT+Sans" <?php if($sportstore_header_font=='PT+Sans'){echo $selected;} ?>>PT Sans</option>
<option value="PT+Sans+Narrow" <?php if($sportstore_header_font=='PT+Sans+Narrow'){echo $selected;} ?>>PT Sans Narrow</option>
<option value="PT+Sans+Narrow:regular,bold" <?php if($sportstore_header_font=='PT+Sans+Narrow:regular,bold'){echo $selected;} ?>>PT Sans Narrow (plus bold)</option>
<option value="PT+Serif" <?php if($sportstore_header_font=='PT+Serif'){echo $selected;} ?>>PT Serif</option>
<option value="PT+Serif Caption" <?php if($sportstore_header_font=='PT+Serif Caption'){echo $selected;} ?>>PT Serif Caption</option>
<option value="Puritan" <?php if($sportstore_header_font=='PT+Serif Caption'){echo $selected;} ?>>Puritan</option>
<option value="Quattrocento" <?php if($sportstore_header_font=='Quattrocento'){echo $selected;} ?>>Quattrocento</option>
<option value="Quattrocento+Sans" <?php if($sportstore_header_font=='Quattrocento+Sans'){echo $selected;} ?>>Quattrocento Sans</option>
<option value="Radley" <?php if($sportstore_header_font=='Radley'){echo $selected;} ?>>Radley</option>
<option value="Raleway" <?php if($sportstore_header_font=='Raleway'){echo $selected;} ?>>Raleway</option>
<option value="Redressed" <?php if($sportstore_header_font=='Redressed'){echo $selected;} ?>>Redressed</option>
<option value="Rock+Salt" <?php if($sportstore_header_font=='Rock+Salt'){echo $selected;} ?>>Rock Salt</option>
<option value="Rokkitt" <?php if($sportstore_header_font=='Rokkitt'){echo $selected;} ?>>Rokkitt</option>
<option value="Ruslan+Display" <?php if($sportstore_header_font=='Ruslan+Display'){echo $selected;} ?>>Ruslan Display</option>
<option value="Schoolbell" <?php if($sportstore_header_font=='Schoolbell'){echo $selected;} ?>>Schoolbell</option>
<option value="Shadows+Into+Light" <?php if($sportstore_header_font=='Shadows+Into+Light'){echo $selected;} ?>>Shadows Into Light</option>
<option value="Shanti" <?php if($sportstore_header_font=='Shanti'){echo $selected;} ?>>Shanti</option>
<option value="Sigmar+One" <?php if($sportstore_header_font=='Sigmar+One'){echo $selected;} ?>>Sigmar One</option>
<option value="Six+Caps" <?php if($sportstore_header_font=='Six+Caps'){echo $selected;} ?>>Six Caps</option>
<option value="Slackey" <?php if($sportstore_header_font=='Slackey'){echo $selected;} ?>>Slackey</option>
<option value="Smythe" <?php if($sportstore_header_font=='Smythe'){echo $selected;} ?>>Smythe</option>
<option value="Sniglet" <?php if($sportstore_header_font=='Sniglet'){echo $selected;} ?>>Sniglet</option>
<option value="Special+Elite" <?php if($sportstore_header_font=='Special+Elite'){echo $selected;} ?>>Special Elite</option>
<option value="Stardos+Stencil" <?php if($sportstore_header_font=='Stardos+Stencil'){echo $selected;} ?>>Stardos Stencil</option>
<option value="Sue+Ellen+Francisco" <?php if($sportstore_header_font=='Sue+Ellen+Francisco'){echo $selected;} ?>>Sue Ellen Francisco</option>
<option value="Sunshiney" <?php if($sportstore_header_font=='Sunshiney'){echo $selected;} ?>>Sunshiney</option>
<option value="Swanky+and+Moo+Moo" <?php if($sportstore_header_font=='Swanky+and+Moo+Moo'){echo $selected;} ?>>Swanky and Moo Moo</option>
<option value="Syncopate" <?php if($sportstore_header_font=='Syncopate'){echo $selected;} ?>>Syncopate</option>
<option value="Tangerine" <?php if($sportstore_header_font=='Tangerine'){echo $selected;} ?>>Tangerine</option>
<option value="Tenor+Sans" <?php if($sportstore_header_font=='Tenor+Sans'){echo $selected;} ?>> Tenor Sans </option>
<option value="Terminal+Dosis+Light" <?php if($sportstore_header_font=='Terminal+Dosis+Light'){echo $selected;} ?>>Terminal Dosis Light</option>
<option value="The+Girl+Next+Door" <?php if($sportstore_header_font=='The+Girl+Next+Door'){echo $selected;} ?>>The Girl Next Door</option>
<option value="Tinos" <?php if($sportstore_header_font=='Tinos'){echo $selected;} ?>>Tinos</option>
<option value="Ubuntu" <?php if($sportstore_header_font=='Ubuntu'){echo $selected;} ?>>Ubuntu</option>
<option value="Ultra" <?php if($sportstore_header_font=='Ultra'){echo $selected;} ?>>Ultra</option>
<option value="Unkempt" <?php if($sportstore_header_font=='Unkempt'){echo $selected;} ?>>Unkempt</option>
<option value="UnifrakturCook:bold" <?php if($sportstore_header_font=='UnifrakturCook:bold'){echo $selected;} ?>>UnifrakturCook</option>
<option value="UnifrakturMaguntia" <?php if($sportstore_header_font=='UnifrakturMaguntia'){echo $selected;} ?>>UnifrakturMaguntia</option>
<option value="Varela" <?php if($sportstore_header_font=='Varela'){echo $selected;} ?>>Varela</option>
<option value="Varela Round" <?php if($sportstore_header_font=='Varela Round'){echo $selected;} ?>>Varela Round</option>
<option value="Vibur" <?php if($sportstore_header_font=='Vibur'){echo $selected;} ?>>Vibur</option>
<option value="Vollkorn" <?php if($sportstore_header_font=='Vollkorn'){echo $selected;} ?>>Vollkorn</option>
<option value="VT323" <?php if($sportstore_header_font=='VT323'){echo $selected;} ?>>VT323</option>
<option value="Waiting+for+the+Sunrise" <?php if($sportstore_header_font=='Waiting+for+the+Sunrise'){echo $selected;} ?>>Waiting for the Sunrise</option>
<option value="Wallpoet" <?php if($sportstore_header_font=='Wallpoet'){echo $selected;} ?>>Wallpoet</option>
<option value="Walter+Turncoat" <?php if($sportstore_header_font=='Walter+Turncoat'){echo $selected;} ?>>Walter Turncoat</option>
<option value="Wire+One" <?php if($sportstore_header_font=='Wire+One'){echo $selected;} ?>>Wire One</option>
<option value="Yanone+Kaffeesatz" <?php if($sportstore_header_font=='Yanone+Kaffeesatz'){echo $selected;} ?>>Yanone Kaffeesatz</option>
<option value="Yeseva+One" <?php if($sportstore_header_font=='Yeseva+One'){echo $selected;} ?>>Yeseva One</option>
<option value="Zeyada" <?php if($sportstore_header_font=='Zeyada'){echo $selected;} ?>>Zeyada</option>  
            </select> </div>
			
			</div>
			<!-- End Input -->		
		
		</div>
		
		<!-- End Left -->
		
		<!-- RIGHT -->
		
		<div class="right">
		
			<h3>Button Color:</h3>
			<!-- Input -->
			<div>
			
				<p>Button content top gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_content_top_gradient; ?>" id="button_content_top_gradient" name="button_content_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button content bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_content_bottom_gradient; ?>" id="button_content_bottom_gradient" name="button_content_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button hover content top gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_hover_content_top_gradient; ?>" id="button_hover_content_top_gradient" name="button_hover_content_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button hover content bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_hover_content_bottom_gradient; ?>" id="button_hover_content_bottom_gradient" name="button_hover_content_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button footer top gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_footer_top_gradient; ?>" id="button_footer_top_gradient" name="button_footer_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button footer bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_footer_bottom_gradient; ?>" id="button_footer_bottom_gradient" name="button_footer_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button hover footer top gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_hover_footer_top_gradient; ?>" id="button_hover_footer_top_gradient" name="button_hover_footer_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Button hover footer bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $button_hover_footer_bottom_gradient; ?>" id="button_hover_footer_bottom_gradient" name="button_hover_footer_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<h3>Rest elements:</h3>
			<!-- Input -->
			<div>
			
				<p>Navigation top gradient</p>
				<div class="input"><input type="text" value="<?php echo $navigation_top_gradient; ?>" id="navigation_top_gradient" name="navigation_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Navigation bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $navigation_bottom_gradient; ?>" id="navigation_bottom_gradient" name="navigation_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Submenu top gradient</p>
				<div class="input"><input type="text" value="<?php echo $submenu_top_gradient; ?>" id="submenu_top_gradient" name="submenu_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Submenu bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $submenu_bottom_gradient; ?>" id="submenu_bottom_gradient" name="submenu_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Border top bar</p>
				<div class="input"><input type="text" value="<?php echo $border_top_bar; ?>" id="border_top_bar" name="border_top_bar" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 1 title top gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_1_title_top_gradient; ?>" id="box_1_title_top_gradient" name="box_1_title_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 1 title bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_1_title_bottom_gradient; ?>" id="box_1_title_bottom_gradient" name="box_1_title_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 2 title top gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_2_title_top_gradient; ?>" id="box_2_title_top_gradient" name="box_2_title_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 2 title bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_2_title_bottom_gradient; ?>" id="box_2_title_bottom_gradient" name="box_2_title_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 3 title top gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_3_title_top_gradient; ?>" id="box_3_title_top_gradient" name="box_3_title_top_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Box 3 title bottom gradient</p>
				<div class="input"><input type="text" value="<?php echo $box_3_title_bottom_gradient; ?>" id="box_3_title_bottom_gradient" name="box_3_title_bottom_gradient" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<h3>Background color:</h3>
			<!-- Input -->
			<div>
			
				<p>Body</p>
				<div class="input"><input type="text" value="<?php echo $bg_body; ?>" id="bg_body" name="bg_body" style="width:41px" /></div>
			
			</div>
			<!-- End Input -->
			<h3>Background pattern</h3>
			<!-- Input -->
			<div>
			
				<p>Body pattern</p>
				<div class="input"><select name="sportstore_body_bg_pattern" style="width:170px">
				
              <option value="own"<?php if($sportstore_body_bg_pattern == 'own') { echo ' selected="selected"'; } ?>>Own</option>
              <option value="no_pattern"<?php if($sportstore_body_bg_pattern == 'no_pattern') { echo ' selected="selected"'; } ?>>No_pattern</option>

<?php 

for ($i = 1; $i <= 18; $i++) {
	$selected = ''; if($i == $sportstore_body_bg_pattern || ($sportstore_body_bg_pattern == '' && $i == 2)) { $selected = ' selected="selected"'; }
	echo '<option value="'. $i . '"'.$selected.'>' . $i .'</option>';
}
?>
				
				</select></div>
			
			</div>
			<!-- End Input -->
			<!-- Input -->
			<div>
			
				<p>Own pattern</p>
				<div class="input">
				
					<div class="own_image" onclick="image_upload('own_image', 'preview1');">
					
						<input type="hidden" name="own_image" value="<?php echo $own_image; ?>" id="own_image" />
						<img src="../image/<?php echo $own_image; ?>" alt="" id="preview1" />
					
					</div>
				
				</div>
			
			</div>
			<!-- End Input -->
		
		</div>
		
		<!-- End Right -->
		
		<p class="separator"></p>
		
		<div class="buttons"><a onclick="$('#form').submit();" class="button-save"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button-cancel"><span><?php echo $button_cancel; ?></span></a></div>
	
	</form>
	</div>
		
</div>
</div>
</div>

<!-- Uni-store Theme Options -->

</div>

<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".select-color-settings ul li a").click(function () {
		
		var styl = $(this).attr("rel");
		var element_index = $('.select-color-settings ul li a').index(this);
		$(".select-color-settings ul li a").removeClass("active");
		$(".select-color-settings ul li a").eq(element_index).addClass("active");
		$("#sportstore_skin").val(styl);
		
	});

});	
</script>

<script type="text/javascript">

$(document).ready(function() {

	$('#bg_body, #navigation_top_gradient, #navigation_bottom_gradient, #submenu_top_gradient, #submenu_top_gradient, #submenu_bottom_gradient, #border_top_bar, #box_1_title_top_gradient, #box_1_title_bottom_gradient, #box_2_title_top_gradient, #box_2_title_bottom_gradient, #box_3_title_top_gradient, #box_3_title_bottom_gradient, #button_content_top_gradient, #button_content_bottom_gradient, #button_footer_top_gradient, #button_footer_bottom_gradient, #button_hover_content_top_gradient, #button_hover_content_bottom_gradient, #button_hover_footer_top_gradient, #button_hover_footer_bottom_gradient, #body_font_color_1, #body_font_color_2, #body_font_color_3, #body_font_color_4, #body_font_color_5, #text_search, #custom_font_color_1, #custom_font_color_2, #custom_font_color_3, #price_color, #old_price_color, #product_name').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });
</script>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript">
<?php echo $footer; ?>