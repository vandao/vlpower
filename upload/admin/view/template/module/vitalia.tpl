<?php echo $header; ?>
<?php

function get_fonts() {
	$fonts = array(
		'standard',
		'ABeeZee',
		'Abel',
		'Abril Fatface',
		'Aclonica',
		'Acme',
		'Actor',
		'Adamina',
		'Advent Pro',
		'Aguafina Script',
		'Akronim',
		'Aladin',
		'Aldrich',
		'Alef',
		'Alegreya',
		'Alegreya SC',
		'Alex Brush',
		'Alfa Slab One',
		'Alice',
		'Alike',
		'Alike Angular',
		'Allan',
		'Allerta',
		'Allerta Stencil',
		'Allura',
		'Almendra',
		'Almendra Display',
		'Almendra SC',
		'Amarante',
		'Amaranth',
		'Amatic SC',
		'Amethysta',
		'Anaheim',
		'Andada',
		'Andika',
		'Angkor',
		'Annie Use Your Telescope',
		'Anonymous Pro',
		'Antic',
		'Antic Didone',
		'Antic Slab',
		'Anton',
		'Arapey',
		'Arbutus',
		'Arbutus Slab',
		'Architects Daughter',
		'Archivo Black',
		'Archivo Narrow',
		'Arial',
		'Arimo',
		'Arizonia',
		'Armata',
		'Artifika',
		'Arvo',
		'Asap',
		'Asset',
		'Astloch',
		'Asul',
		'Atomic Age',
		'Aubrey',
		'Audiowide',
		'Autour One',
		'Average',
		'Average Sans',
		'Averia Gruesa Libre',
		'Averia Libre',
		'Averia Sans Libre',
		'Averia Serif Libre',
		'Bad Script',
		'Balthazar',
		'Bangers',
		'Basic',
		'Battambang',
		'Baumans',
		'Bayon',
		'Belgrano',
		'Belleza',
		'BenchNine',
		'Bentham',
		'Berkshire Swash',
		'Bevan',
		'Bigelow Rules',
		'Bigshot One',
		'Bilbo',
		'Bilbo Swash Caps',
		'Bitter',
		'Black Ops One',
		'Bokor',
		'Bonbon',
		'Boogaloo',
		'Bowlby One',
		'Bowlby One SC',
		'Brawler',
		'Bree Serif',
		'Bubblegum Sans',
		'Bubbler One',
		'Buda',
		'Buenard',
		'Butcherman',
		'Butterfly Kids',
		'Cabin',
		'Cabin Condensed',
		'Cabin Sketch',
		'Caesar Dressing',
		'Cagliostro',
		'Calligraffitti',
		'Cambo',
		'Candal',
		'Cantarell',
		'Cantata One',
		'Cantora One',
		'Capriola',
		'Cardo',
		'Carme',
		'Carrois Gothic',
		'Carrois Gothic SC',
		'Carter One',
		'Caudex',
		'Cedarville Cursive',
		'Ceviche One',
		'Changa One',
		'Chango',
		'Chau Philomene One',
		'Chela One',
		'Chelsea Market',
		'Chenla',
		'Cherry Cream Soda',
		'Cherry Swash',
		'Chewy',
		'Chicle',
		'Chivo',
		'Cinzel',
		'Cinzel Decorative',
		'Clicker Script',
		'Coda',
		'Coda Caption',
		'Codystar',
		'Combo',
		'Comfortaa',
		'Coming Soon',
		'Concert One',
		'Condiment',
		'Content',
		'Contrail One',
		'Convergence',
		'Cookie',
		'Copse',
		'Corben',
		'Courgette',
		'Cousine',
		'Coustard',
		'Covered By Your Grace',
		'Crafty Girls',
		'Creepster',
		'Crete Round',
		'Crimson Text',
		'Croissant One',
		'Crushed',
		'Cuprum',
		'Cutive',
		'Cutive Mono',
		'Damion',
		'Dancing Script',
		'Dangrek',
		'Dawning of a New Day',
		'Days One',
		'Delius',
		'Delius Swash Caps',
		'Delius Unicase',
		'Della Respira',
		'Denk One',
		'Devonshire',
		'Didact Gothic',
		'Diplomata',
		'Diplomata SC',
		'Domine',
		'Donegal One',
		'Doppio One',
		'Dorsa',
		'Dosis',
		'Dr Sugiyama',
		'Droid Sans',
		'Droid Sans Mono',
		'Droid Serif',
		'Duru Sans',
		'Dynalight',
		'EB Garamond',
		'Eagle Lake',
		'Eater',
		'Economica',
		'Electrolize',
		'Elsie',
		'Elsie Swash Caps',
		'Emblema One',
		'Emilys Candy',
		'Engagement',
		'Englebert',
		'Enriqueta',
		'Erica One',
		'Esteban',
		'Euphoria Script',
		'Ewert',
		'Exo',
		'Expletus Sans',
		'Fanwood Text',
		'Fascinate',
		'Fascinate Inline',
		'Faster One',
		'Fasthand',
		'Fauna One',
		'Federant',
		'Federo',
		'Felipa',
		'Fenix',
		'Finger Paint',
		'Fjalla One',
		'Fjord One',
		'Flamenco',
		'Flavors',
		'Fondamento',
		'Fontdiner Swanky',
		'Forum',
		'Francois One',
		'Freckle Face',
		'Fredericka the Great',
		'Fredoka One',
		'Freehand',
		'Fresca',
		'Frijole',
		'Fruktur',
		'Fugaz One',
		'GFS Didot',
		'GFS Neohellenic',
		'Gabriela',
		'Gafata',
		'Galdeano',
		'Galindo',
		'Gentium Basic',
		'Gentium Book Basic',
		'Geo',
		'Georgia',
		'Geostar',
		'Geostar Fill',
		'Germania One',
		'Gilda Display',
		'Give You Glory',
		'Glass Antiqua',
		'Glegoo',
		'Gloria Hallelujah',
		'Goblin One',
		'Gochi Hand',
		'Gorditas',
		'Goudy Bookletter 1911',
		'Graduate',
		'Grand Hotel',
		'Gravitas One',
		'Great Vibes',
		'Griffy',
		'Gruppo',
		'Gudea',
		'Habibi',
		'Hammersmith One',
		'Hanalei',
		'Hanalei Fill',
		'Handlee',
		'Hanuman',
		'Happy Monkey',
		'Headland One',
		'Henny Penny',
		'Herr Von Muellerhoff',
		'Holtwood One SC',
		'Homemade Apple',
		'Homenaje',
		'IM Fell DW Pica',
		'IM Fell DW Pica SC',
		'IM Fell Double Pica',
		'IM Fell Double Pica SC',
		'IM Fell English',
		'IM Fell English SC',
		'IM Fell French Canon',
		'IM Fell French Canon SC',
		'IM Fell Great Primer',
		'IM Fell Great Primer SC',
		'Iceberg',
		'Iceland',
		'Imprima',
		'Inconsolata',
		'Inder',
		'Indie Flower',
		'Inika',
		'Irish Grover',
		'Istok Web',
		'Italiana',
		'Italianno',
		'Jacques Francois',
		'Jacques Francois Shadow',
		'Jim Nightshade',
		'Jockey One',
		'Jolly Lodger',
		'Josefin Sans',
		'Josefin Slab',
		'Joti One',
		'Judson',
		'Julee',
		'Julius Sans One',
		'Junge',
		'Jura',
		'Just Another Hand',
		'Just Me Again Down Here',
		'Kameron',
		'Karla',
		'Kaushan Script',
		'Kavoon',
		'Keania One',
		'Kelly Slab',
		'Kenia',
		'Khmer',
		'Kite One',
		'Knewave',
		'Kotta One',
		'Koulen',
		'Kranky',
		'Kreon',
		'Kristi',
		'Krona One',
		'La Belle Aurore',
		'Lancelot',
		'Lato',
		'League Script',
		'Leckerli One',
		'Ledger',
		'Lekton',
		'Lemon',
		'Libre Baskerville',
		'Life Savers',
		'Lilita One',
		'Lily Script One',
		'Limelight',
		'Linden Hill',
		'Lobster',
		'Lobster Two',
		'Londrina Outline',
		'Londrina Shadow',
		'Londrina Sketch',
		'Londrina Solid',
		'Lora',
		'Love Ya Like A Sister',
		'Loved by the King',
		'Lovers Quarrel',
		'Luckiest Guy',
		'Lusitana',
		'Lustria',
		'Macondo',
		'Macondo Swash Caps',
		'Magra',
		'Maiden Orange',
		'Mako',
		'Marcellus',
		'Marcellus SC',
		'Marck Script',
		'Margarine',
		'Marko One',
		'Marmelad',
		'Marvel',
		'Mate',
		'Mate SC',
		'Maven Pro',
		'McLaren',
		'Meddon',
		'MedievalSharp',
		'Medula One',
		'Megrim',
		'Meie Script',
		'Merienda',
		'Merienda One',
		'Merriweather',
		'Merriweather Sans',
		'Metal',
		'Metal Mania',
		'Metamorphous',
		'Metrophobic',
		'Michroma',
		'Milonga',
		'Miltonian',
		'Miltonian Tattoo',
		'Miniver',
		'Miss Fajardose',
		'Modern Antiqua',
		'Molengo',
		'Molle',
		'Monda',
		'Monofett',
		'Monoton',
		'Monsieur La Doulaise',
		'Montaga',
		'Montez',
		'Montserrat',
		'Montserrat Alternates',
		'Montserrat Subrayada',
		'Moul',
		'Moulpali',
		'Mountains of Christmas',
		'Mouse Memoirs',
		'Mr Bedfort',
		'Mr Dafoe',
		'Mr De Haviland',
		'Mrs Saint Delafield',
		'Mrs Sheppards',
		'Muli',
		'Mystery Quest',
		'Neucha',
		'Neuton',
		'New Rocker',
		'News Cycle',
		'Niconne',
		'Nixie One',
		'Nobile',
		'Nokora',
		'Norican',
		'Nosifer',
		'Nothing You Could Do',
		'Noticia Text',
		'Noto Sans',
		'Noto Serif',
		'Nova Cut',
		'Nova Flat',
		'Nova Mono',
		'Nova Oval',
		'Nova Round',
		'Nova Script',
		'Nova Slim',
		'Nova Square',
		'Numans',
		'Nunito',
		'Odor Mean Chey',
		'Offside',
		'Old Standard TT',
		'Oldenburg',
		'Oleo Script',
		'Oleo Script Swash Caps',
		'Open Sans',
		'Open Sans Condensed',
		'Oranienbaum',
		'Orbitron',
		'Oregano',
		'Orienta',
		'Original Surfer',
		'Oswald',
		'Over the Rainbow',
		'Overlock',
		'Overlock SC',
		'Ovo',
		'Oxygen',
		'Oxygen Mono',
		'PT Mono',
		'PT Sans',
		'PT Sans Caption',
		'PT Sans Narrow',
		'PT Serif',
		'PT Serif Caption',
		'Pacifico',
		'Paprika',
		'Parisienne',
		'Passero One',
		'Passion One',
		'Pathway Gothic One',
		'Patrick Hand',
		'Patrick Hand SC',
		'Patua One',
		'Paytone One',
		'Peralta',
		'Permanent Marker',
		'Petit Formal Script',
		'Petrona',
		'Philosopher',
		'Piedra',
		'Pinyon Script',
		'Pirata One',
		'Plaster',
		'Play',
		'Playball',
		'Playfair Display',
		'Playfair Display SC',
		'Podkova',
		'Poiret One',
		'Poller One',
		'Poly',
		'Pompiere',
		'Pontano Sans',
		'Port Lligat Sans',
		'Port Lligat Slab',
		'Prata',
		'Preahvihear',
		'Press Start 2P',
		'Princess Sofia',
		'Prociono',
		'Prosto One',
		'Puritan',
		'Purple Purse',
		'Quando',
		'Quantico',
		'Quattrocento',
		'Quattrocento Sans',
		'Questrial',
		'Quicksand',
		'Quintessential',
		'Qwigley',
		'Racing Sans One',
		'Radley',
		'Raleway',
		'Raleway Dots',
		'Rambla',
		'Rammetto One',
		'Ranchers',
		'Rancho',
		'Rationale',
		'Redressed',
		'Reenie Beanie',
		'Revalia',
		'Ribeye',
		'Ribeye Marrow',
		'Righteous',
		'Risque',
		'Roboto',
		'Roboto Condensed',
		'Roboto Slab',
		'Rochester',
		'Rock Salt',
		'Rokkitt',
		'Romanesco',
		'Ropa Sans',
		'Rosario',
		'Rosarivo',
		'Rouge Script',
		'Ruda',
		'Rufina',
		'Ruge Boogie',
		'Ruluko',
		'Rum Raisin',
		'Ruslan Display',
		'Russo One',
		'Ruthie',
		'Rye',
		'Sacramento',
		'Sail',
		'Salsa',
		'Sanchez',
		'Sancreek',
		'Sansita One',
		'Sarina',
		'Satisfy',
		'Scada',
		'Schoolbell',
		'Seaweed Script',
		'Sevillana',
		'Seymour One',
		'Shadows Into Light',
		'Shadows Into Light Two',
		'Shanti',
		'Share',
		'Share Tech',
		'Share Tech Mono',
		'Shojumaru',
		'Short Stack',
		'Siemreap',
		'Sigmar One',
		'Signika',
		'Signika Negative',
		'Simonetta',
		'Sintony',
		'Sirin Stencil',
		'Six Caps',
		'Skranji',
		'Slackey',
		'Smokum',
		'Smythe',
		'Sniglet',
		'Snippet',
		'Snowburst One',
		'Sofadi One',
		'Sofia',
		'Sonsie One',
		'Sorts Mill Goudy',
		'Source Code Pro',
		'Source Sans Pro',
		'Special Elite',
		'Spicy Rice',
		'Spinnaker',
		'Spirax',
		'Squada One',
		'Stalemate',
		'Stalinist One',
		'Stardos Stencil',
		'Stint Ultra Condensed',
		'Stint Ultra Expanded',
		'Stoke',
		'Strait',
		'Sue Ellen Francisco',
		'Sunshiney',
		'Supermercado One',
		'Suwannaphum',
		'Swanky and Moo Moo',
		'Syncopate',
		'Tangerine',
		'Taprom',
		'Tauri',
		'Telex',
		'Tenor Sans',
		'Text Me One',
		'The Girl Next Door',
		'Tienne',
		'Times New Roman',
		'Tinos',
		'Titan One',
		'Titillium Web',
		'Trade Winds',
		'Trocchi',
		'Trochut',
		'Trykker',
		'Tulpen One',
		'Ubuntu',
		'Ubuntu Condensed',
		'Ubuntu Mono',
		'Ultra',
		'Uncial Antiqua',
		'Underdog',
		'Unica One',
		'UnifrakturCook',
		'UnifrakturMaguntia',
		'Unkempt',
		'Unlock',
		'Unna',
		'VT323',
		'Vampiro One',
		'Varela',
		'Varela Round',
		'Vast Shadow',
		'Vibur',
		'Vidaloka',
		'Viga',
		'Voces',
		'Volkhov',
		'Vollkorn',
		'Voltaire',
		'Waiting for the Sunrise',
		'Wallpoet',
		'Walter Turncoat',
		'Warnes',
		'Wellfleet',
		'Wendy One',
		'Wire One',
		'Yanone Kaffeesatz',
		'Yellowtail',
		'Yeseva One',
		'Yesteryear',
		'Zeyada'	
	);
	return $fonts;
}

?>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/template_options.css" />
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="https://jqueryjs.googlecode.com/svn-history/r6125/trunk/plugins/cookie/jquery.cookie.js"></script>

<div id="content">
<?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } else { ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } } ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">

	<h3>Vitalia Theme Options</h3>
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	
		<!-- MULTISTORE -->
		<div id="tb_store_select">
			<label class="inline">Store</label>
			<select name="d_store_id" id="d_store_id">
			<?php foreach ($stores as $store): ?>
				<option value="<?php echo HTTPS_SERVER . 'index.php?route=module/vitalia&store_id=' . $store['store_id'] . '&token=' . $this->session->data['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			<?php endforeach; ?>
			</select>
		</div>
					    
		<input type="hidden" name="store_id" value="<?php echo $store_id; ?>" />
					    
		<script type="text/javascript">
			$(document).ready(function (){
				$("#d_store_id").bind("change", function() {
					window.location = $(this).val();
				});
				
				$("#form input").keypress(function(event) {
				    if (event.which == 13) {
				        return false;
				    }
				});
				
				$(".button-add").click(function() {
					$(".add-skin").show();
					return false;
				});
			});
		</script>
		<!-- END MULTISTORE -->
		
		<!-- Unlimited theme skins -->
		<div class="content theme-skins">
			<div>
				<ul class="skins">
					<?php $liczba_skinow = 0; if(isset($skins)) { foreach($skins as $skin) { $liczba_skinow++; } } ?>
					<?php $aktywny_skin = false; if($liczba_skinow > 0) { ?>
					<li><p>Active skin: <br><span><?php echo $active_skin; ?></span></p></li>
					<li>
						<select name="skin">
							<?php foreach($skins as $skin) { ?>
							<option<?php if($skin == $active_skin_edit) { $aktywny_skin = true; echo ' selected="selected"'; } ?> value="<?php echo $skin; ?>"><?php echo $skin; ?></option>
							<?php } ?>
						</select>
						<input type="hidden" name="save_skin" value="<?php echo $active_skin_edit; ?>" />
					</li>
					<li><input type="submit" name="button-active" class="button-active"></li>
					<?php } ?>
					<li><a onclick="#" class="button-add"><span>Add</span></a><div class="add-skin"><input type="text" name="add-skin-name" class="add-skin-name" value=""><input type="submit" name="add-skin" value="Add skin" class="button-add-skin"></div></li>
					<?php if($liczba_skinow > 0) { ?>
					<li><input type="submit" name="button-edit" class="button-edit"></li>
					<li><input type="submit" name="button-delete" class="button-delete" onclick="return confirm('Are you sure you want to delete?')"></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		<?php if($liczba_skinow > 0 && ($active_skin != '' || $aktywny_skin == true)) { ?>
		<!-- Content -->
		
		<div class="content">
		
			<div>
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
					
						<a href="#tab_general" id="general"><span>General</span></a>
						<a href="#tab_design" id="design"><span>Design</span></a>
						<a href="#tab_footer" id="tfooter"><span>Footer</span></a>
						<a href="#tab_custom_block" id="tcustomblock"><span>Custom block</span></a>
						<a href="#tab_custom_code" id="tcustomcode"><span>Custom code</span></a>
						<a href="#tab_payment" id="tpayment"><span>Payment</span></a>
						<a href="#tab_compressor_code" id="tcompressorcode"><span>Compressor code</span></a>
						<a href="#tab_install_data" id="tinstalldata"><span>Install data</span></a>
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- /////////////////// General -->
					
					<div id="tab_general" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_general" class="htabs tabs-design">
						
							<a href="#tab_layout" id="tlayout"><span>Layout</span></a>
							<a href="#tab_product" id="tproduct"><span>Product</span></a>
							<a href="#tab_category" id="tcategory"><span>Category</span></a>
							<a href="#tab_header" id="theader"><span>Header</span></a>
							<a href="#tab_translations" id="ttranslations"><span>Translations</span></a>
						
						</div>
						
						<!-- **************** Tab GENERAL OPTIONS -->
						
						<div id="tab_layout" class="tab-content">
							<h4>Responsive Design</h4>
							<div class="input with-status">
								<p>Responsive:</p>
								<?php if($responsive_design == 0 && $responsive_design != '') { echo '<div class="status status-off" title="0" rel="responsive_design"></div>'; } else { echo '<div class="status status-on" title="1" rel="responsive_design"></div>'; } ?>
								<input name="responsive_design" value="<?php echo $responsive_design; ?>" id="responsive_design" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<h4 style="padding-top:30px">Page Width</h4>
							<!-- Input -->
							<div class="input">
								<p>Page Width:</p>
								<select name="page_width" class="select-page-width">
									<option value="1" <?php if($page_width == 1) { echo 'selected="selected"'; } ?>>Wide (1220px)</option>
									<option value="3" <?php if($page_width == 3) { echo 'selected="selected"'; } ?>>Standard (980px)</option>
									<option value="2" <?php if($page_width == 2) { echo 'selected="selected"'; } ?>>Full width</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input page-width" <?php if($page_width != 2) { echo 'style="display:none"'; } ?>>
								<p>Max width:</p>
								<input type="text" name="max_width" value="<?php echo $max_width; ?>" style="margin-right:10px;width:60px">
								<div style="float:left;width:auto;padding-top:7px"><span style="color:#808080;font-size:11px">px</span></div>
								<div class="clear"></div>
							</div>
							
							<h4 style="padding-top:30px">Layout Type</h4>
							<!-- Input -->
							<div class="input">
								<p>Main:</p>
								<select name="main_layout">
									<option value="1" <?php if($main_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($main_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Top Bar:</p>
								<select name="top_bar_layout">
									<option value="1" <?php if($top_bar_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($top_bar_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Header:</p>
								<select name="header_layout">
									<option value="1" <?php if($header_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($header_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Slideshow:</p>
								<select name="slideshow_layout">
									<option value="1" <?php if($slideshow_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($slideshow_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Breadcrumb:</p>
								<select name="breadcrumb_layout">
									<option value="1" <?php if($breadcrumb_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($breadcrumb_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Content:</p>
								<select name="content_layout">
									<option value="1" <?php if($content_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($content_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Custom Footer:</p>
								<select name="custom_footer_layout">
									<option value="1" <?php if($custom_footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($custom_footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Footer:</p>
								<select name="footer_layout">
									<option value="1" <?php if($footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
									<option value="2" <?php if($footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
								</select>
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Product -->
						<div id="tab_product" class="tab-content">
							<h4>Sale badge</h4>
							<div class="input with-status">
								<p style="width:270px">Display Sale:</p>
								<?php if($display_text_sale == 0 && $display_text_sale != '') { echo '<div class="status status-off" title="0" rel="display_text_sale"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_sale"></div>'; } ?>
								<input name="display_text_sale" value="<?php echo $display_text_sale; ?>" id="display_text_sale" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Type Sale:</p>
								<select name="type_sale">
									<option value="0" <?php if($type_sale =='0'){echo ' selected="selected"';} ?>>Text</option>
									<option value="1" <?php if($type_sale =='1'){echo ' selected="selected"';} ?>>%</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Text Sale:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="sale_text[<?php echo $language_id; ?>]" <?php if(isset($sale_text[$language_id])) { echo 'value="'.$sale_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<h4 style="margin-top: 20px">Product page</h4>
							<div class="input">
								<p style="width:270px">Product image zoom:</p>
								<select name="product_image_zoom">
									<option value="0" <?php if($product_image_zoom =='0'){echo ' selected="selected"';} ?>>Cloud Zoom</option>
									<option value="1" <?php if($product_image_zoom =='1'){echo ' selected="selected"';} ?>>Inner Cloud Zoom</option>
									<option value="2" <?php if($product_image_zoom =='2'){echo ' selected="selected"';} ?>>Default</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Product image size:</p>
								<select name="product_image_size">
									<option value="1" <?php if($product_image_size =='1'){echo ' selected="selected"';} ?>>Small</option>
									<option value="2" <?php if($product_image_size =='2' || $product_image_size < 1){echo ' selected="selected"';} ?>>Medium</option>
									<option value="3" <?php if($product_image_size =='3'){echo ' selected="selected"';} ?>>Large</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Position image additional:</p>
								<select name="position_image_additional">
									<option value="1" <?php if($position_image_additional =='1'){echo ' selected="selected"';} ?>>Bottom</option>
									<option value="2" <?php if($position_image_additional =='2'){echo ' selected="selected"';} ?>>Left</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">Product social share:</p>
								<?php if($product_social_share == 0 && $product_social_share != '') { echo '<div class="status status-off" title="0" rel="product_social_share"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_social_share"></div>'; } ?>
								<input name="product_social_share" value="<?php echo $product_social_share; ?>" id="product_social_share" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<h4 style="margin-top: 20px">Product grid</h4>
							<div class="input">
								<p style="width:270px">Product number per row:</p>
								<select name="product_per_pow">
									<option value="3"<?php if($product_per_pow =='3'){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($product_per_pow =='4' || $product_per_pow < 3){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($product_per_pow =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($product_per_pow =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:250px">Display elements on product grid:</p>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- hover product</p>
								<?php if($hover_product == 0 && $hover_product != '') { echo '<div class="status status-off" title="0" rel="hover_product"></div>'; } else { echo '<div class="status status-on" title="1" rel="hover_product"></div>'; } ?>
								<input name="hover_product" value="<?php echo $hover_product; ?>" id="hover_product" type="hidden" />
								<div class="clear"></div>
							</div>

							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- rating</p>
								<?php if($display_rating == 0 && $display_rating != '') { echo '<div class="status status-off" title="0" rel="display_rating"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_rating"></div>'; } ?>
								<input name="display_rating" value="<?php echo $display_rating; ?>" id="display_rating" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- add to compare</p>
								<?php if($display_add_to_compare == 0 && $display_add_to_compare != '') { echo '<div class="status status-off" title="0" rel="display_add_to_compare"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_compare"></div>'; } ?>
								<input name="display_add_to_compare" value="<?php echo $display_add_to_compare; ?>" id="display_add_to_compare" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- add to wishlist</p>
								<?php if($display_add_to_wishlist == 0 && $display_add_to_wishlist != '') { echo '<div class="status status-off" title="0" rel="display_add_to_wishlist"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_wishlist"></div>'; } ?>
								<input name="display_add_to_wishlist" value="<?php echo $display_add_to_wishlist; ?>" id="display_add_to_wishlist" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- add to cart</p>
								<?php if($display_add_to_cart == 0 && $display_add_to_cart != '') { echo '<div class="status status-off" title="0" rel="display_add_to_cart"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_cart"></div>'; } ?>
								<input name="display_add_to_cart" value="<?php echo $display_add_to_cart; ?>" id="display_add_to_cart" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p>Product scroll:</p>
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- latest</p>
								<?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
								<input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- featured</p>
								<?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
								<input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- bestsellers</p>
								<?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
								<input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- specials</p>
								<?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
								<input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
								<div class="clear"></div>
							</div>
							
							<div class="input with-status">
								<p style="width:270px">&nbsp;&nbsp;&nbsp;- related</p>
								<?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
								<input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Category -->
						<div id="tab_category" class="tab-content">
							<h4>Category page</h4>
							<!-- Input -->
							<div class="input">
								<p style="width:270px">Product grid number per row:</p>
								<select name="product_per_pow2">
									<option value="2"<?php if($product_per_pow2 =='2'){echo ' selected="selected"';} ?>>2</option>
									<option value="3"<?php if($product_per_pow2 =='3'){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($product_per_pow2 =='4' || $product_per_pow2 < 2){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($product_per_pow2 =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($product_per_pow2 =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">Default list/grid:</p>
								<select name="default_list_grid">
							  		<option value="0" <?php if($default_list_grid =='0'){echo ' selected="selected"';} ?>>List</option>
							 		<option value="1" <?php if($default_list_grid =='1'){echo ' selected="selected"';} ?>>Grid</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">Refine search style:</p>
								<select name="refine_search_style">
									<option value="0" <?php if($refine_search_style =='0'){echo ' selected="selected"';} ?>>With images</option>
									<option value="1" <?php if($refine_search_style =='1'){echo ' selected="selected"';} ?>>Text only</option>
									<option value="2" <?php if($refine_search_style =='2'){echo ' selected="selected"';} ?>>Disable</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:270px">Refine search number per row:</p>
								<select name="refine_search_number">
									<option value="2"<?php if($refine_search_number =='2'){echo ' selected="selected"';} ?>>2</option>
									<option value="3"<?php if($refine_search_number =='3'|| $refine_search_number < 2){echo ' selected="selected"';} ?>>3</option>
									<option value="4"<?php if($refine_search_number =='4'){echo ' selected="selected"';} ?>>4</option>
									<option value="5"<?php if($refine_search_number =='5'){echo ' selected="selected"';} ?>>5</option>
									<option value="6"<?php if($refine_search_number =='6'){echo ' selected="selected"';} ?>>6</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p style="width:270px">Refine search image size:</p>
								<input type="text" name="refine_image_width" style="width:30px" value="<?php echo $refine_image_width; ?>" />
								<div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:5px"> x </div>
								<input type="text" name="refine_image_height" style="width:30px" value="<?php echo $refine_image_height; ?>" />
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Header -->
						<div id="tab_header" class="tab-content">
							<h4>Select header</h4>
							<div class="input">
								<p>Header Type:</p>
								<div style="float:left;width:600px">
									<div class="header_type">
										<input type="radio" name="header_type" value="1" <?php if($header_type < 2) { echo 'checked="checked"'; } ?> />
										<img src="view/image/module_template/header_01.png" alt="" />
										<div class="clear"></div>
									</div>
									
									<div class="header_type">
										<input type="radio" name="header_type" value="2" <?php if($header_type == 2) { echo 'checked="checked"'; } ?> />
										<img src="view/image/module_template/header_02.png" alt="" />
										<div class="clear"></div>
									</div>
									
									<div class="clear"></div>
									
									<div class="header_type">
										<input type="radio" name="header_type" value="3" <?php if($header_type == 3) { echo 'checked="checked"'; } ?> />
										<img src="view/image/module_template/header_03.png" alt="" />
										<div class="clear"></div>
									</div>
									
									<div class="header_type">
										<input type="radio" name="header_type" value="4" <?php if($header_type == 4) { echo 'checked="checked"'; } ?> />
										<img src="view/image/module_template/header_04.png" alt="" />
										<div class="clear"></div>
									</div>
									
									<div class="clear"></div>
									
									<div class="header_type">
										<input type="radio" name="header_type" value="5" <?php if($header_type == 5) { echo 'checked="checked"'; } ?> />
										<img src="view/image/module_template/header_05.png" alt="" />
										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- Translations -->
						<div id="tab_translations" class="tab-content">
							<h4>Translate words</h4>
							<div class="input">
								<p style="width:200px">Continue shopping:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="continue_shopping_text[<?php echo $language_id; ?>]" <?php if(isset($continue_shopping_text[$language_id])) { echo 'value="'.$continue_shopping_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">Checkout:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="checkout_text[<?php echo $language_id; ?>]" <?php if(isset($checkout_text[$language_id])) { echo 'value="'.$checkout_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">Add to compare:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="add_to_compare_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_compare_text[$language_id])) { echo 'value="'.$add_to_compare_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
							
							<div class="input">
								<p style="width:200px">Add to wishlist:</p>
								<div class="list-language">
									<?php foreach($languages as $language) { ?>
									<div class="language">
										<?php $language_id = $language['language_id']; ?>
										<img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
										<input type="text" name="add_to_wishlist_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_wishlist_text[$language_id])) { echo 'value="'.$add_to_wishlist_text[$language_id].'"'; } ?>>
									</div>
									<?php } ?>
								</div>
								<div class="clear"></div>
							</div>
						</div>
						
						<!-- **************** END TAB GENERAL OPTIONS -->
								
					</div>
					
					<!-- ////////////////////// End General -->
					
					<!-- Design -->
					
					<div id="tab_design" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_design" class="htabs tabs-design">
						
							<a href="#tab_font" id="tfont"><span>Font</span></a>
							<a href="#tab_colors" id="tcolors"><span>Colors</span></a>
							<a href="#tab_backgrounds" id="tbackgrounds"><span>Backgrounds</span></a>
						
						</div>
						
						<!-- Font, colors, background -->
						
						<!-- Font -->
					
						<div id="tab_font" class="tab-content">
						
							<!-- Status -->
							
							<?php if($font_status == 1) { echo '<div class="status status-on" title="1" rel="font_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="font_status"></div>'; } ?>
							
							<input name="font_status" value="<?php echo $font_status; ?>" id="font_status" type="hidden" />
							
							<!-- Title -->
							
							<h4>Font settings</h4>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Body Font:</p>
								<select name="body_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($body_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="body_font_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($body_font_weight==$x || ($x == 4 && $body_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="body_font_px" style="width:80px;margin-right:25px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_px==$x || ($x == 13 && $body_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:60px">Smaller</p>
								<select name="body_font_smaller_px" style="width:80px;margin-right:35px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($body_font_smaller_px==$x || ($x == 12 && $body_font_smaller_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Categories bar:</p>
								<select name="categories_bar">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($categories_bar == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																
								</select>
								<select name="categories_bar_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($categories_bar_weight==$x || ($x == 4 && $categories_bar_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="categories_bar_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($categories_bar_px==$x || ($x == 16 && $categories_bar_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Price:</p>
								<select name="custom_price">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($custom_price == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
								
								</select>
								<select name="custom_price_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($custom_price_weight==$x || ($x == 4 && $custom_price_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<p style="width:51px">Big</p>
								<select name="custom_price_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px==$x || ($x == 36 && $custom_price_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:71px">Medium</p>
								<select name="custom_price_px_medium" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_medium==$x || ($x == 24 && $custom_price_px_medium < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								
								<div class="clear" style="height:15px"></div>
								
								<div style="float:left;width:420px;height:10px"></div>
								
								<p style="width:51px">Small</p>
								<select name="custom_price_px_small" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_small==$x || ($x == 13 && $custom_price_px_small < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
								<p style="width:71px">Old price</p>
								<select name="custom_price_px_old_price" style="width:80px;margin-right:0px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($custom_price_px_old_price==$x || ($x == 13 && $custom_price_px_old_price < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
								
							<!-- Input -->
							
							<div class="input">
							
								<p>Headlines:</p>
								<select name="headlines">

								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
						
								</select>
								<select name="headlines_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($headlines_weight==$x || ($x == 4 && $headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								
								<select name="headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($headlines_px==$x || ($x == 18 && $headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Footer headlines:</p>
								<select name="footer_headlines">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($footer_headlines == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>
																	
								</select>
								<select name="footer_headlines_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($footer_headlines_weight==$x || ($x == 4 && $footer_headlines_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="footer_headlines_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($footer_headlines_px==$x || ($x == 20 && $footer_headlines_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Page name:</p>
								<select name="page_name">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($page_name == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

								</select>
								<select name="page_name_weight" style="width:60px;margin-right:20px">
								
									<?php for( $x = 3; $x <= 6; $x++ ) { ?>
								  <option value="<?php echo $x; ?>" <?php if($page_name_weight==$x || ($x == 6 && $page_name_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
									<?php } ?>
								
								</select>
								<select name="page_name_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($page_name_px==$x || ($x == 24 && $page_name_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							<!-- Input -->
							
							<div class="input">
							
								<p>Button:</p>
								<select name="button_font">
								
								<?php foreach (get_fonts() as $key => $font) { 
										
								
									if ($button_font == $font) {
										$selected = "selected";
									} else {
									  $selected = "";
									}

									echo '<option '.$selected.' value="'.$font.'">'.$font.'</option>';
								
								} ?>

							</select>
							<select name="button_font_weight" style="width:60px;margin-right:20px">
							
								<?php for( $x = 3; $x <= 6; $x++ ) { ?>
							  <option value="<?php echo $x; ?>" <?php if($button_font_weight==$x || ($x == 4 && $button_font_weight < 3)){echo ' selected="selected"';} ?>><?php echo $x*100; ?></option>
								<?php } ?>
							
							</select>
								<select name="button_font_px" style="width:80px">
								
									<?php for( $x = 9; $x <= 50; $x++ ) { ?>
					              <option value="<?php echo $x; ?>" <?php if($button_font_px==$x || ($x == 14 && $button_font_px < 6)){echo ' selected="selected"';} ?>><?php echo $x; ?> px</option>
									<?php } ?>
								
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
													
						</div>
					
						<!-- End Font -->
						
						<!-- Colors -->
						
						<div id="tab_colors" class="tab-content">
													
							<!-- Status -->
							
							<?php if($colors_status == 1) { echo '<div class="status status-on" title="1" rel="colors_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="colors_status"></div>'; } ?>
							
							<input name="colors_status" value="<?php echo $colors_status; ?>" id="colors_status" type="hidden" />
							
							<!-- Colros body -->
							<div class="colors_left" style="padding-top: 0px">
								<h4>Body</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body text:</p>
									<div><input type="text" value="<?php echo $body_font_text; ?>" id="body_font_text" name="body_font_text" <?php if($body_font_text != '') { echo 'style="border-right: 20px solid '.$body_font_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body links:</p>
									<div><input type="text" value="<?php echo $body_font_links; ?>" id="body_font_links" name="body_font_links" <?php if($body_font_links != '') { echo 'style="border-right: 20px solid '.$body_font_links.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Body links hover:</p>
									<div><input type="text" value="<?php echo $body_font_links_hover; ?>" id="body_font_links_hover" name="body_font_links_hover" <?php if($body_font_links_hover != '') { echo 'style="border-right: 20px solid '.$body_font_links_hover.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Price text:</p>
									<div><input type="text" value="<?php echo $body_price_text; ?>" id="body_price_text" name="body_price_text" <?php if($body_price_text != '') { echo 'style="border-right: 20px solid '.$body_price_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $body_background_color; ?>" id="body_background_color" name="body_background_color" <?php if($body_background_color != '') { echo 'style="border-right: 20px solid '.$body_background_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Body -->
							
							<!-- Colors Header -->
							<div class="colors_left">
								<h4>Header</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $header_background_color; ?>" id="header_background_color" name="header_background_color" <?php if($header_background_color != '') { echo 'style="border-right: 20px solid '.$header_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Border bottom color:</p>
									<div><input type="text" value="<?php echo $header_border_bottom_color; ?>" id="header_border_bottom_color" name="header_border_bottom_color" <?php if($header_border_bottom_color != '') { echo 'style="border-right: 20px solid '.$header_border_bottom_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Top bar -->
							
							
							<!-- Colros top bar -->
							<div class="colors_left">
								<h4>Top Bar</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Top bar text:</p>
									<div><input type="text" value="<?php echo $top_bar_text; ?>" id="top_bar_text" name="top_bar_text" <?php if($top_bar_text != '') { echo 'style="border-right: 20px solid '.$top_bar_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $top_bar_background_gradient_top; ?>" id="top_bar_background_gradient_top" name="top_bar_background_gradient_top" <?php if($top_bar_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$top_bar_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $top_bar_background_gradient_bottom; ?>" id="top_bar_background_gradient_bottom" name="top_bar_background_gradient_bottom" <?php if($top_bar_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$top_bar_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Top bar -->
							
							<!-- Colros top bar -->
							<div class="colors_left">
								<h4>Top</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Menu links:</p>
									<div><input type="text" value="<?php echo $top_menu_links; ?>" id="top_menu_links" name="top_menu_links" <?php if($top_menu_links != '') { echo 'style="border-right: 20px solid '.$top_menu_links.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Cart icon background gradient top:</p>
									<div><input type="text" value="<?php echo $top_cart_icon_background_gradient_top; ?>" id="top_cart_icon_background_gradient_top" name="top_cart_icon_background_gradient_top" <?php if($top_cart_icon_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$top_cart_icon_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Cart icon background gradient bottom:</p>
									<div><input type="text" value="<?php echo $top_cart_icon_background_gradient_bottom; ?>" id="top_cart_icon_background_gradient_bottom" name="top_cart_icon_background_gradient_bottom" <?php if($top_cart_icon_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$top_cart_icon_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Cart block price:</p>
									<div><input type="text" value="<?php echo $top_cart_block_price; ?>" id="top_cart_block_price" name="top_cart_block_price" <?php if($top_cart_block_price != '') { echo 'style="border-right: 20px solid '.$top_cart_block_price.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $top_background_color; ?>" id="top_background_color" name="top_background_color" <?php if($top_background_color != '') { echo 'style="border-right: 20px solid '.$top_background_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Top bar -->
							
							<!-- Colors Menu -->
							<div class="colors_left">
								<h4>Menu</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Main links:</p>
									<div><input type="text" value="<?php echo $menu_main_links; ?>" id="menu_main_links" name="menu_main_links" <?php if($menu_main_links != '') { echo 'style="border-right: 20px solid '.$menu_main_links.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $menu_background_gradient_top; ?>" id="menu_background_gradient_top" name="menu_background_gradient_top" <?php if($menu_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$menu_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $menu_background_gradient_bottom; ?>" id="menu_background_gradient_bottom" name="menu_background_gradient_bottom" <?php if($menu_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$menu_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Hover background gradient top:</p>
									<div><input type="text" value="<?php echo $menu_hover_background_gradient_top; ?>" id="menu_hover_background_gradient_top" name="menu_hover_background_gradient_top" <?php if($menu_hover_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$menu_hover_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Hover background gradient bottom:</p>
									<div><input type="text" value="<?php echo $menu_hover_background_gradient_bottom; ?>" id="menu_hover_background_gradient_bottom" name="menu_hover_background_gradient_bottom" <?php if($menu_hover_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$menu_hover_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Menu -->
							
							<!-- Colors Vertical Menu -->
							<div class="colors_left">
								<h4>Vertical Menu</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading text:</p>
									<div><input type="text" value="<?php echo $vertical_menu_heading_text; ?>" id="vertical_menu_heading_text" name="vertical_menu_heading_text" <?php if($vertical_menu_heading_text != '') { echo 'style="border-right: 20px solid '.$vertical_menu_heading_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading background gradient top:</p>
									<div><input type="text" value="<?php echo $vertical_menu_heading_background_gradient_top; ?>" id="vertical_menu_heading_background_gradient_top" name="vertical_menu_heading_background_gradient_top" <?php if($vertical_menu_heading_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$vertical_menu_heading_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading background gradient bottom:</p>
									<div><input type="text" value="<?php echo $vertical_menu_heading_background_gradient_bottom; ?>" id="vertical_menu_heading_background_gradient_bottom" name="vertical_menu_heading_background_gradient_bottom" <?php if($vertical_menu_heading_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$vertical_menu_heading_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Vertical Menu -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Slider</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullets background color:</p>
									<div><input type="text" value="<?php echo $slider_bullets_background_color; ?>" id="slider_bullets_background_color" name="slider_bullets_background_color" <?php if($slider_bullets_background_color != '') { echo 'style="border-right: 20px solid '.$slider_bullets_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullet active background color:</p>
									<div><input type="text" value="<?php echo $slider_bullet_active_background_color; ?>" id="slider_bullet_active_background_color" name="slider_bullet_active_background_color" <?php if($slider_bullet_active_background_color != '') { echo 'style="border-right: 20px solid '.$slider_bullet_active_background_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $slider_background_color; ?>" id="slider_background_color" name="slider_background_color" <?php if($slider_background_color != '') { echo 'style="border-right: 20px solid '.$slider_background_color.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Sale badges</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $sale_color_text; ?>" id="sale_color_text" name="sale_color_text" <?php if($sale_color_text != '') { echo 'style="border-right: 20px solid '.$sale_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $sale_background_gradient_top; ?>" id="sale_background_gradient_top" name="sale_background_gradient_top" <?php if($sale_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$sale_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $sale_background_gradient_bottom; ?>" id="sale_background_gradient_bottom" name="sale_background_gradient_bottom" <?php if($sale_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$sale_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Ratings icon</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $ratings_background_gradient_top; ?>" id="ratings_background_gradient_top" name="ratings_background_gradient_top" <?php if($ratings_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$ratings_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $ratings_background_gradient_bottom; ?>" id="ratings_background_gradient_bottom" name="ratings_background_gradient_bottom" <?php if($ratings_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$ratings_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Active background gradient top:</p>
									<div><input type="text" value="<?php echo $ratings_active_background_gradient_top; ?>" id="ratings_active_background_gradient_top" name="ratings_active_background_gradient_top" <?php if($ratings_active_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$ratings_active_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<div class="color_input">
									<p>Active background gradient bottom:</p>
									<div><input type="text" value="<?php echo $ratings_active_background_gradient_bottom; ?>" id="ratings_active_background_gradient_bottom" name="ratings_active_background_gradient_bottom" <?php if($ratings_active_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$ratings_active_background_gradient_bottom.'"'; } ?> /></div>
								</div>
									
							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Button</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $buttons_color_text; ?>" id="buttons_color_text" name="buttons_color_text" <?php if($buttons_color_text != '') { echo 'style="border-right: 20px solid '.$buttons_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $buttons_background_gradient_top; ?>" id="buttons_background_gradient_top" name="buttons_background_gradient_top" <?php if($buttons_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$buttons_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $buttons_background_gradient_bottom; ?>" id="buttons_background_gradient_bottom" name="buttons_background_gradient_bottom" <?php if($buttons_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$buttons_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Second Button</h4>
								
								<!-- Input -->
								<div class="color_input">
									<p>Color text:</p>
									<div><input type="text" value="<?php echo $second_buttons_color_text; ?>" id="second_buttons_color_text" name="second_buttons_color_text" <?php if($second_buttons_color_text != '') { echo 'style="border-right: 20px solid '.$second_buttons_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $second_buttons_background_gradient_top; ?>" id="second_buttons_background_gradient_top" name="second_buttons_background_gradient_top" <?php if($second_buttons_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$second_buttons_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $second_buttons_background_gradient_bottom; ?>" id="second_buttons_background_gradient_bottom" name="second_buttons_background_gradient_bottom" <?php if($second_buttons_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$second_buttons_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Carousel Button</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $carousel_buttons_background_gradient_top; ?>" id="carousel_buttons_background_gradient_top" name="carousel_buttons_background_gradient_top" <?php if($carousel_buttons_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$carousel_buttons_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $carousel_buttons_background_gradient_bottom; ?>" id="carousel_buttons_background_gradient_bottom" name="carousel_buttons_background_gradient_bottom" <?php if($carousel_buttons_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$carousel_buttons_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Carousel Bullets</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Background gradient top:</p>
									<div><input type="text" value="<?php echo $carousel_bullets_background_gradient_top; ?>" id="carousel_bullets_background_gradient_top" name="carousel_bullets_background_gradient_top" <?php if($carousel_bullets_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$carousel_bullets_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background gradient bottom:</p>
									<div><input type="text" value="<?php echo $carousel_bullets_background_gradient_bottom; ?>" id="carousel_bullets_background_gradient_bottom" name="carousel_bullets_background_gradient_bottom" <?php if($carousel_bullets_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$carousel_bullets_background_gradient_bottom.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Active bullet background gradient top:</p>
									<div><input type="text" value="<?php echo $carousel_active_bullets_background_gradient_top; ?>" id="carousel_active_bullets_background_gradient_top" name="carousel_active_bullets_background_gradient_top" <?php if($carousel_active_bullets_background_gradient_top != '') { echo 'style="border-right: 20px solid '.$carousel_active_bullets_background_gradient_top.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Active bullet background gradient bottom:</p>
									<div><input type="text" value="<?php echo $carousel_active_bullets_background_gradient_bottom; ?>" id="carousel_active_bullets_background_gradient_bottom" name="carousel_active_bullets_background_gradient_bottom" <?php if($carousel_active_bullets_background_gradient_bottom != '') { echo 'style="border-right: 20px solid '.$carousel_active_bullets_background_gradient_bottom.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>CustomFooter</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Text color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_text; ?>" id="customfooter_color_text" name="customfooter_color_text" <?php if($customfooter_color_text != '') { echo 'style="border-right: 20px solid '.$customfooter_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_heading; ?>" id="customfooter_color_heading" name="customfooter_color_heading" <?php if($customfooter_color_heading != '') { echo 'style="border-right: 20px solid '.$customfooter_color_heading.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Icon heading color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_icon_heading; ?>" id="customfooter_color_icon_heading" name="customfooter_color_icon_heading" <?php if($customfooter_color_icon_heading != '') { echo 'style="border-right: 20px solid '.$customfooter_color_icon_heading.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Icon contact us color:</p>
									<div><input type="text" value="<?php echo $customfooter_color_icon_contact_us; ?>" id="customfooter_color_icon_contact_us" name="customfooter_color_icon_contact_us" <?php if($customfooter_color_icon_contact_us != '') { echo 'style="border-right: 20px solid '.$customfooter_color_icon_contact_us.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Border color:</p>
									<div><input type="text" value="<?php echo $customfooter_border_color; ?>" id="customfooter_border_color" name="customfooter_border_color" <?php if($customfooter_border_color != '') { echo 'style="border-right: 20px solid '.$customfooter_border_color.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $customfooter_background_color; ?>" id="customfooter_background_color" name="customfooter_background_color" <?php if($customfooter_background_color != '') { echo 'style="border-right: 20px solid '.$customfooter_background_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
							<!-- Colors Slider -->
							<div class="colors_left">
								<h4>Footer</h4>

								<!-- Input -->
								<div class="color_input">
									<p>Text color:</p>
									<div><input type="text" value="<?php echo $footer_color_text; ?>" id="footer_color_text" name="footer_color_text" <?php if($customfooter_color_text != '') { echo 'style="border-right: 20px solid '.$footer_color_text.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Heading color:</p>
									<div><input type="text" value="<?php echo $footer_color_heading; ?>" id="footer_color_heading" name="footer_color_heading" <?php if($footer_color_heading != '') { echo 'style="border-right: 20px solid '.$footer_color_heading.'"'; } ?> /></div>
								</div>
								
								<!-- Input -->
								<div class="color_input">
									<p>Bullets color:</p>
									<div><input type="text" value="<?php echo $footer_color_bullets; ?>" id="footer_color_bullets" name="footer_color_bullets" <?php if($footer_color_bullets != '') { echo 'style="border-right: 20px solid '.$footer_color_bullets.'"'; } ?> /></div>
								</div>

								<!-- Input -->
								<div class="color_input">
									<p>Background color:</p>
									<div><input type="text" value="<?php echo $footer_background_color; ?>" id="footer_background_color" name="footer_background_color" <?php if($footer_background_color != '') { echo 'style="border-right: 20px solid '.$footer_background_color.'"'; } ?> /></div>
								</div>

							</div>
							<!-- End Colors Slider -->
							
						</div>
						
						<!-- End Colors -->
						
						<!-- Backgrounds -->
						<div id="tab_backgrounds" class="tab-content">
													
							<!-- Status -->
							<?php if($background_status == 1) { echo '<div class="status status-on" title="1" rel="background_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="background_status"></div>'; } ?>
							
							<input name="background_status" value="<?php echo $background_status; ?>" id="background_status" type="hidden" />
							
							<h4>Body</h4>
							
							<div class="own_image" onclick="image_upload('body_background', 'preview1');">
							
								<input type="hidden" name="body_background" value="<?php echo $body_background; ?>" id="body_background" />
								<img src="../image/<?php if($body_background == '') { echo 'no_image.jpg'; } else { echo $body_background; } ?>" alt="" id="preview1" />
							
							</div>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="body_background_background">
									<option value="0"<?php if($body_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($body_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($body_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($body_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($body_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="body_background_subtle_patterns" value="<?php echo $body_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $body_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $body_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="body_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="body_background_position">
									<option value="top left"<?php if($body_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($body_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($body_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($body_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($body_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($body_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="body_background_repeat">
									<option value="no-repeat"<?php if($body_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($body_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($body_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($body_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="body_background_attachment">
									<option value="scroll"<?php if($body_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($body_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">Header</h4>
							
							<div class="own_image" onclick="image_upload('header_background', 'preview2');">
							
								<input type="hidden" name="header_background" value="<?php echo $header_background; ?>" id="header_background" />
								<img src="../image/<?php if($header_background == '') { echo 'no_image.jpg'; } else { echo $header_background; } ?>" alt="" id="preview2" />
							
							</div>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="header_background_background">
									<option value="0"<?php if($header_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($header_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($header_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($header_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($header_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="header_background_subtle_patterns" value="<?php echo $header_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $header_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $header_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="header_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="header_background_position">
									<option value="top left"<?php if($header_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($header_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($header_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($header_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($header_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($header_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="header_background_repeat">
									<option value="no-repeat"<?php if($header_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($header_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($header_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($header_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="header_background_attachment">
									<option value="scroll"<?php if($header_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($header_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">CustomFooter</h4>
							
							<div class="own_image" onclick="image_upload('customfooter_background', 'preview3');">
							
								<input type="hidden" name="customfooter_background" value="<?php echo $customfooter_background; ?>" id="customfooter_background" />
								<img src="../image/<?php if($customfooter_background == '') { echo 'no_image.jpg'; } else { echo $customfooter_background; } ?>" alt="" id="preview3" />
							
							</div>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="customfooter_background_background">
									<option value="0"<?php if($customfooter_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($customfooter_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($customfooter_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
									<option value="3"<?php if($customfooter_background_background == 3) { echo ' selected="selected"'; } ?>>Subtle patterns</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
														
							<div class="input">
							
								<p>Subtle patterns:</p>
								<div class="subtle-patterns">
									<?php
										
										if($customfooter_background_subtle_patterns != '') { ?>
										
										<div class="subtle-pattern">
											<input type="radio" name="customfooter_background_subtle_patterns" value="<?php echo $customfooter_background_subtle_patterns; ?>" class="input-subtle-pattern" checked="checked">
											<img src="../image/subtle_patterns/<?php echo $customfooter_background_subtle_patterns; ?>" width="50px" height="50px"> 
											<p><?php echo $customfooter_background_subtle_patterns; ?></p>
											<div class="clear"></div>
										</div>
										
										<?php 
										
										}
										
										$dir = opendir ("../image/subtle_patterns/");
										while (false !== ($file = readdir($dir))) { 
											if ($file<>"." && $file<>"..") {
												if (strpos($file, '.gif',1) || strpos($file, '.jpg',1) || strpos($file, '.png',3) ) { ?>
																						
											<div class="subtle-pattern">
												<input type="radio" name="customfooter_background_subtle_patterns" value="<?php echo $file; ?>" class="input-subtle-pattern">
												<img src="../image/subtle_patterns/<?php echo $file; ?>" width="50px" height="50px"> 
												<p><?php echo $file; ?></p>
												<div class="clear"></div>
											</div>
											
									<?php
												}
												
											}
										} 
									
									?>
								</div>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Position:</p>
								<select name="customfooter_background_position">
									<option value="top left"<?php if($customfooter_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
									<option value="top center"<?php if($customfooter_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
									<option value="top right"<?php if($customfooter_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
									<option value="bottom left"<?php if($customfooter_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
									<option value="bottom center"<?php if($customfooter_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
									<option value="bottom right"<?php if($customfooter_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Repeat:</p>
								<select name="customfooter_background_repeat">
									<option value="no-repeat"<?php if($customfooter_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
									<option value="repeat-x"<?php if($customfooter_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
									<option value="repeat-y"<?php if($customfooter_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
									<option value="repeat"<?php if($customfooter_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
								<!-- Input -->	
							
							<div class="input">
							
								<p>Attachment:</p>
								<select name="customfooter_background_attachment">
									<option value="scroll"<?php if($customfooter_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
									<option value="fixed"<?php if($customfooter_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
								</select>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">Content headlines</h4>
							
							<div class="own_image" onclick="image_upload('content_headlines_background', 'preview4');">
							
								<input type="hidden" name="content_headlines_background" value="<?php echo $content_headlines_background; ?>" id="content_headlines_background" />
								<img src="../image/<?php if($content_headlines_background == '') { echo 'no_image.jpg'; } else { echo $content_headlines_background; } ?>" alt="" id="preview4" />
							
							</div>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="content_headlines_background_background">
									<option value="0"<?php if($content_headlines_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($content_headlines_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($content_headlines_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
							
							<h4 style="margin-top: 20px">Footer headlines</h4>
							
							<div class="own_image" onclick="image_upload('footer_headlines_background', 'preview5');">
							
								<input type="hidden" name="footer_headlines_background" value="<?php echo $footer_headlines_background; ?>" id="footer_headlines_background" />
								<img src="../image/<?php if($footer_headlines_background == '') { echo 'no_image.jpg'; } else { echo $footer_headlines_background; } ?>" alt="" id="preview5" />
							
							</div>
							
							<!-- Input -->
							
							<div class="input">
							
								<p>Background:</p>
								<select name="footer_headlines_background_background">
									<option value="0"<?php if($footer_headlines_background_background < 1) { echo ' selected="selected"'; } ?>>Standard</option>
									<option value="1"<?php if($footer_headlines_background_background == 1) { echo ' selected="selected"'; } ?>>None</option>
									<option value="2"<?php if($footer_headlines_background_background == 2) { echo ' selected="selected"'; } ?>>Own</option>
								</select>

								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
														
						</div>
					
					</div>
					
					<!-- End Design -->
					
					<!-- Footer -->
					
					<div id="tab_footer" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
							<div id="tabs_footer" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_customfooter_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
							
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_customfooter_<?php echo $language_id; ?>">
							
								<!-- Contact, About us, Facebook TABS -->
								
								<div id="tabs_<?php echo $language_id; ?>" class="htabs tabs-design">
								
									<a href="#tab_contact_<?php echo $language_id; ?>" class="tcontact"><span>Contact</span></a>
									<a href="#tab_aboutus_<?php echo $language_id; ?>" class="taboutus"><span>About us</span></a>
									<a href="#tab_facebook_<?php echo $language_id; ?>" class="tfacebook"><span>Facebook</span></a>
									<a href="#tab_twitter_<?php echo $language_id; ?>" class="ttwitter"><span>Twitter</span></a>
								
								</div>
								
								<!-- Contact, About us, Facebook -->
								
								<!-- TAB CONTACT -->
								
								<div id="tab_contact_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['contact_status'])) { ?>
									<?php if($customfooter[$language_id]['contact_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_contact_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="<?php echo $customfooter[$language_id]['contact_status']; ?>" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="0" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } ?>
									
									<h4>Contact</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['contact_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="<?php echo $customfooter[$language_id]['contact_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone:</p>
										<?php if(isset($customfooter[$language_id]['contact_phone'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="<?php echo $customfooter[$language_id]['contact_phone']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Phone 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_phone2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="<?php echo $customfooter[$language_id]['contact_phone2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype:</p>
										<?php if(isset($customfooter[$language_id]['contact_skype'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="<?php echo $customfooter[$language_id]['contact_skype']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Skype 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_skype2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="<?php echo $customfooter[$language_id]['contact_skype2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail:</p>
										<?php if(isset($customfooter[$language_id]['contact_email'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="<?php echo $customfooter[$language_id]['contact_email']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>E-mail 2:</p>
										<?php if(isset($customfooter[$language_id]['contact_email2'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="<?php echo $customfooter[$language_id]['contact_email2']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_email2]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB CONTACT -->
								
								<!-- TAB About us -->
								
								<div id="tab_aboutus_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['aboutus_status'])) { ?>
									<?php if($customfooter[$language_id]['aboutus_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="<?php echo $customfooter[$language_id]['aboutus_status']; ?>" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="0" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
									<?php } ?>
									
									<h4>About us</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['aboutus_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="<?php echo $customfooter[$language_id]['aboutus_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									
									<!-- Input -->
									
									<div class="input">										
									
										<p>Text:</p>
										<?php if(isset($customfooter[$language_id]['aboutus_text'])) { ?>
										<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"><?php echo $customfooter[$language_id]['aboutus_text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]"></textarea>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB About US -->
								
								<!-- TAB Facebook -->
								
								<div id="tab_facebook_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['facebook_status'])) { ?>
									<?php if($customfooter[$language_id]['facebook_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="<?php echo $customfooter[$language_id]['facebook_status']; ?>" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="0" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
									<?php } ?>
									
									<h4>Facebook</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['facebook_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="<?php echo $customfooter[$language_id]['facebook_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Facebook ID:</p>
										<?php if(isset($customfooter[$language_id]['facebook_id'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="<?php echo $customfooter[$language_id]['facebook_id']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Show Faces:</p>
										<select name="customfooter[<?php echo $language_id; ?>][show_faces]" style="width:189px">
											
											<?php if(isset($customfooter[$language_id]['show_faces'])) { ?>
						            	  <option value="0" <?php if($customfooter[$language_id]['show_faces'] =='0'){echo ' selected="selected"';} ?>>Yes</option>
							              <option value="1" <?php if($customfooter[$language_id]['show_faces'] =='1'){echo ' selected="selected"';} ?>>No</option>
						              	<?php } else { ?>
	 						              <option value="0" selected="selected">Yes</option>
							              <option value="1">No</option>						              
						              	<?php } ?>
										
										</select>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Number of faces:</p>
										<?php if(isset($customfooter[$language_id]['facebook_faces'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="<?php echo $customfooter[$language_id]['facebook_faces']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Height:</p>
										<?php if(isset($customfooter[$language_id]['facebook_height'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="<?php echo $customfooter[$language_id]['facebook_height']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][facebook_height]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Facebook -->
								
								<!-- TAB Twitter -->
								
								<div id="tab_twitter_<?php echo $language_id; ?>" class="tab-content4">
								
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['twitter_status'])) { ?>
									<?php if($customfooter[$language_id]['twitter_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } ?>
									
									<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="<?php echo $customfooter[$language_id]['twitter_status']; ?>" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; ?>
									<input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="0" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
									<?php } ?>
									
									<h4>Twitter</h4>
									
									<!-- Input -->
									
									<div class="input">
									
										<p>Title:</p>
										<?php if(isset($customfooter[$language_id]['twitter_title'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="<?php echo $customfooter[$language_id]['twitter_title']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_title]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Twitter profile:</p>
										<?php if(isset($customfooter[$language_id]['twitter_profile'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="<?php echo $customfooter[$language_id]['twitter_profile']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_profile]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Widget id:</p>
										<?php if(isset($customfooter[$language_id]['twitter_widget_id'])) { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="<?php echo $customfooter[$language_id]['twitter_widget_id']; ?>" />
										<?php } else { ?>
										<input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" value="" />
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
									<!-- Input -->
									
									<div class="input">
									
										<p>Theme:</p>
										<?php if(isset($customfooter[$language_id]['twitter_theme'])) { ?>
										<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
											<option value="light"<?php if($customfooter[$language_id]['twitter_theme'] == 'light') echo ' selected="selected"'; ?>>Light</option>
											<option value="dark"<?php if($customfooter[$language_id]['twitter_theme'] == 'dark') echo ' selected="selected"'; ?>>Dark</option>
										</select>
										<?php } else { ?>
										<select name="customfooter[<?php echo $language_id; ?>][twitter_theme]" />
											<option value="light" selected="selected">Light</option>
											<option value="dark">Dark</option>
										</select>
										<?php } ?>
									
										<div class="clear"></div>
									
									</div>
									
									<!-- End Input -->
																	
								</div>
								
								<!-- End TAB Twitter -->
								
								<script type="text/javascript"><!--
								$('#tabs_<?php echo $language_id; ?> a').tabs();
								if($.cookie('tabs_<?php echo $language_id; ?>') > 0) {
									$('#tabs_<?php echo $language_id; ?> a').eq($.cookie('tabs_<?php echo $language_id; ?>')).trigger("click");
								}
								$('#tabs_<?php echo $language_id; ?> a').click(function() {
									var element_index = $('#tabs_<?php echo $language_id; ?> a').index(this);
									$.cookie('tabs_<?php echo $language_id; ?>', element_index); 
								});
								//--></script> 
							
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
					
					</div>
					
					<!-- End Footer -->
					
					<!-- ''''''''''''''' PAYMENT -->
					
					<div id="tab_payment" class="tab-content">
					
						<!-- Status -->
							
						<?php if($payment_status == 0 && $payment_status != '') { echo '<div class="status status-off" title="0" rel="payment_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_status"></div>'; } ?>
						
						<input name="payment_status" value="<?php echo $payment_status; ?>" id="payment_status" type="hidden" />
						
						<table class="payment_images" id="payment">
							<thead>
								<tr>
									<td class="first">Icon</td>
									<td>Name</td>
									<td>Link</td>
									<td>Sort</td>
									<td>New Tab</td>
									<td>Delete</td>
								</tr>
							</thead>
							<?php $module_row = 0; if($payment != '') { ?>
								<?php foreach($payment as $payments) { ?>
								<tbody id="payment<?php echo $module_row; ?>">
									<tr>
										<td class="first"><div class="own_image" onclick="image_upload('payment_<?php echo $module_row; ?>_img', 'payment_<?php echo $module_row; ?>_img_preview');">
											<input type="hidden" name="payment[<?php echo $module_row; ?>][img]" value="<?php echo $payments['img']; ?>" id="payment_<?php echo $module_row; ?>_img" />
											<img src="../image/<?php echo $payments['img']; ?>" alt="" id="payment_<?php echo $module_row; ?>_img_preview" />
										</div></td>
										<td>
											<div class="payment-name">
												<input type="text" value="<?php if(isset($payments['name'])) { echo $payments['name']; } ?>" name="payment[<?php echo $module_row; ?>][name]">
											</div>
										</td>
										<td>
											<input type="text" value="<?php if(isset($payments['link'])) { echo $payments['link']; } ?>" name="payment[<?php echo $module_row; ?>][link]">
										</td>
										<td>
											<input type="text" class="sort" value="<?php if(isset($payments['sort'])) { echo $payments['sort']; } ?>" name="payment[<?php echo $module_row; ?>][sort]">
										</td>
										<td>
											<?php if(isset($payments['new_tab'])) { ?>
												<?php if($payments['new_tab'] == 0 && $payments['new_tab'] != '') { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<?php } else { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<input name="payment[<?php echo $module_row; ?>][new_tab]" value="<?php if(isset($payments['new_tab'])) { echo $payments['new_tab']; } else { echo '0'; } ?>" id="payment_<?php echo $module_row; ?>_new_tab" type="hidden" />
										</td>
										<td>
											<a onclick="$('#payment<?php echo $module_row; ?>').remove();" class="remove-payment">Remove</a>
										</td>
									</tr>
								</tbody>
								<?php $module_row++; } ?>
							<?php } ?>
							<tfoot></tfoot>
						</table>
						
						<a onclick="addPayment();" class="add-item-payment">Add item</a>
						
						<script type="text/javascript"><!--
						var module_row = <?php echo $module_row; ?>;
						
						function addPayment() {
							html  = '<tbody id="payment' + module_row + '">';
							html += '  <tr>';
							html += '	 <td class="first">';
							html += '		<div class="own_image" onclick="image_upload(\'payment_' + module_row + '_img\', \'payment_' + module_row + '_img_preview\');"><input type="hidden" name="payment[' + module_row + '][img]" value="no_image.jpg" id="payment_' + module_row + '_img" /><img src="../image/no_image.jpg" alt="" id="payment_' + module_row + '_img_preview" /></div>';
							html += '	 </td>';
							html += '    <td>';
							html += '		<div class="payment_name"><input type="text" name="payment[' + module_row + '][name]"></div>';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" name="payment[' + module_row + '][link]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" class="sort" name="payment[' + module_row + '][sort]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<div class="status status-off" title="0" rel="payment_' + module_row + '_new_tab"></div><input name="payment[' + module_row + '][new_tab]" value="0" id="payment_' + module_row + '_new_tab" type="hidden" />';
							html += '    </td>';
							html += '    <td><a onclick="$(\'#payment' + module_row + '\').remove();" class="remove-payment">Remove</a></td>';
							html += '  </tr>';
							html += '</tbody>';
							
							$('#payment tfoot').before(html);
							
							module_row++;
						}
						//--></script> 
	
					</div>
					
					<!-- ''''''''''''''''' END PAYMENT -->
					
					<!-- Custom code -->
					
					<div id="tab_custom_code" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_custom_code" class="htabs tabs-design">
						
							<a href="#tab_css" id="tcss"><span>Css</span></a>
							<a href="#tab_javascript" id="tjavascript"><span>Javascript</span></a>
						
						</div>
						
						<!-- ....... TABS CSS -->
						
						<div id="tab_css" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_css_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_css_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_css_status"></div>'; } ?>
							
							<input name="custom_code_css_status" value="<?php echo $custom_code_css_status; ?>" id="custom_code_css_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_css)) { ?>
								<textarea rows="0" cols="0" name="custom_code_css"><?php echo $custom_code_css; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_css"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS CSS -->
						
						<!-- ....... TABS JAVASCRIPT -->
						
						<div id="tab_javascript" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_javascript_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_javascript_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_javascript_status"></div>'; } ?>
							
							<input name="custom_code_javascript_status" value="<?php echo $custom_code_javascript_status; ?>" id="custom_code_javascript_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_js)) { ?>
								<textarea rows="0" cols="0" name="custom_code_js"><?php echo $custom_code_js; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_js"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS JAVASCRIPT -->
										
					</div>
					
					<!-- End Custom code -->
					
					<!-- Compressor Code -->
					
					<div id="tab_compressor_code" class="tab-content">
					
						<!-- Status -->
						<?php if($compressor_code_status == 0) { echo '<div class="status status-off" title="0" rel="compressor_code_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="compressor_code_status"></div>'; } ?>
						
						<input name="compressor_code_status" value="<?php echo $compressor_code_status; ?>" id="compressor_code_status" type="hidden" />
						
						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;">The content of css and js files are placed in a single file, delete spaces, which allows for faster page loading. Changes made when this option is enabled will be visible after an hour.</p>
						
					</div>
					
					<!-- End Compressor Code -->
					
					<!-- Compressor Code -->
					
					<div id="tab_install_data" class="tab-content">

						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;">If you want to make your shop look exactly like our demo. Install sample data.</p>

						<h4>Install sample data:</h4>
						
						<div class="input">
							<p style="width:240px">Custom module (banners):</p>
							<input type="submit" name="install_custom_module" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">Camera slider:</p>
							<input type="submit" name="install_camera_slider" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
						<div class="input">
							<p style="width:240px">MegaMenu:</p>
							<input type="submit" name="install_megamenu" class="button-install" onclick="return confirm('Are you sure you want to install sample data?')" value="">
							
							<div class="clear"></div>
						</div>
						
					</div>
					
					<!-- End Compressor Code -->
					
					<!-- Custom block -->
					
					<div id="tab_custom_block" class="tab-content3">
						<div class="footer_left" style="margin-top: 149px">
							<div id="tabs_custom_block" class="htabs main-tabs">
								<?php foreach ($languages as $language): ?>
								<a href="#tab_custom_block_<?php echo $language['language_id']; ?>"><img src="../image/flags/<?php echo $language['image'] ?>" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							</div>
						</div>
						
						<div class="footer_right">
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							<div id="tab_custom_block_<?php echo $language_id; ?>">
								<div id="tabs_custom_block_<?php echo $language_id; ?>" class="htabs tabs-design">
									<a href="#tab_contact_page_<?php echo $language_id; ?>" class="tcontact"><span>Contact page</span></a>
									<a href="#tab_product_page_<?php echo $language_id; ?>" class="tproduct"><span>Product page</span></a>
								</div>
								
								<div id="tab_contact_page_<?php echo $language_id; ?>" class="tab-content4">
									<!-- Status -->
									<?php if(isset($custom_block['contact_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['contact_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['contact_page'][$language_id]['status']; ?>" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
									
									<h4>Custom block</h4>
									<div class="input">
										<p>Heading:</p>
										<?php if(isset($custom_block['contact_page'][$language_id]['heading'])) { ?>
										<input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" value="<?php echo $custom_block['contact_page'][$language_id]['heading']; ?>" />
										<?php } else { ?>
										<input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" value="" />
										<?php } ?>
										<div class="clear"></div>
									</div>
									
									<div class="input">										
										<p>Text:</p>
										<?php if(isset($custom_block['contact_page'][$language_id]['text'])) { ?>
										<textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]"><?php echo $custom_block['contact_page'][$language_id]['text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]"></textarea>
										<?php } ?>
										<div class="clear"></div>
									</div>
								</div>
								
								<div id="tab_product_page_<?php echo $language_id; ?>" class="tab-content4">
									<!-- Status -->
									<?php if(isset($custom_block['product_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['product_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['product_page'][$language_id]['status']; ?>" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
									
									<h4>Custom block</h4>
									<div class="input">
										<p>Heading:</p>
										<?php if(isset($custom_block['product_page'][$language_id]['heading'])) { ?>
										<input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" value="<?php echo $custom_block['product_page'][$language_id]['heading']; ?>" />
										<?php } else { ?>
										<input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" value="" />
										<?php } ?>
										<div class="clear"></div>
									</div>
									
									<div class="input">										
										<p>Text:</p>
										<?php if(isset($custom_block['product_page'][$language_id]['text'])) { ?>
										<textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]"><?php echo $custom_block['product_page'][$language_id]['text']; ?></textarea>
										<?php } else { ?>
										<textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]"></textarea>
										<?php } ?>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							
							<script type="text/javascript"><!--
							$('#tabs_custom_block_<?php echo $language_id; ?> a').tabs();
							if($.cookie('tabs_custom_block_<?php echo $language_id; ?>') > 0) {
								$('#tabs_custom_block_<?php echo $language_id; ?> a').eq($.cookie('tabs_custom_block_<?php echo $language_id; ?>')).trigger("click");
							}
							$('#tabs_custom_block_<?php echo $language_id; ?> a').click(function() {
								var element_index = $('#tabs_custom_block_<?php echo $language_id; ?> a').index(this);
								$.cookie('tabs_custom_block_<?php echo $language_id; ?>', element_index); 
							});
							//--></script> 
							<?php } ?>
						</div>		
					</div>
					
					<!-- End Custom block -->
										
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
				
				<!-- End Buttons -->
			
			</div>
		
		</div>
		<!-- End Content -->
		<?php } else { ?>
			<div class="content">
				<div style="padding:20px 40px;text-align:center;">
					You need to add or active skin.
				</div>
			</div>
		<?php } ?>
		
	</form>
	
</div>
<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

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

$(document).ready(function() {

	$('.color_input input').ColorPicker({
		onChange: function (hsb, hex, rgb, el) {
			$(el).val("#" +hex);
			$(el).css("border-right", "20px solid #" + hex);
		},
		onShow: function (colpkr) {
			$(colpkr).show();
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).hide();
			return false;
		}
	});
});
</script>
<script type="text/javascript"><!--
$(document).ready(function(){ 
	$('#tabs a').tabs();
	if($.cookie('tabs_cookie') > 0) {
		$('#tabs a').eq($.cookie('tabs_cookie')).trigger("click");
	}
	$('#tabs a').click(function() {
		var element_index = $('#tabs a').index(this);
		$.cookie('tabs_cookie', element_index); 
	});
	
	$('#tabs_design a').tabs();
	if($.cookie('tabs_design_cookie') > 0) {
		$('#tabs_design a').eq($.cookie('tabs_design_cookie')).trigger("click");
	}
	$('#tabs_design a').click(function() {
		var element_index = $('#tabs_design a').index(this);
		$.cookie('tabs_design_cookie', element_index); 
	});
	
	$('#tabs_footer a').tabs();
	if($.cookie('tabs_footer_cookie') > 0) {
		$('#tabs_footer a').eq($.cookie('tabs_footer_cookie')).trigger("click");
	}
	$('#tabs_footer a').click(function() {
		var element_index = $('#tabs_footer a').index(this);
		$.cookie('tabs_footer_cookie', element_index); 
	});
	
	$('#tabs_general a').tabs();
	if($.cookie('tabs_general_cookie') > 0) {
		$('#tabs_general a').eq($.cookie('tabs_general_cookie')).trigger("click");
	}
	$('#tabs_general a').click(function() {
		var element_index = $('#tabs_general a').index(this);
		$.cookie('tabs_general_cookie', element_index); 
	});
	
	$('#tabs_custom_code a').tabs();
	if($.cookie('tabs_custom_code_cookie') > 0) {
		$('#tabs_custom_code a').eq($.cookie('tabs_custom_code_cookie')).trigger("click");
	}
	$('#tabs_custom_code a').click(function() {
		var element_index = $('#tabs_custom_code a').index(this);
		$.cookie('tabs_custom_code_cookie', element_index); 
	});
	
	$('#tabs_custom_block a').tabs();
	if($.cookie('tabs_custom_block') > 0) {
		$('#tabs_custom_block a').eq($.cookie('tabs_custom_block')).trigger("click");
	}
	$('#tabs_custom_block a').click(function() {
		var element_index = $('#tabs_custom_block a').index(this);
		$.cookie('tabs_custom_block', element_index); 
	});
});
//--></script> 

<script type="text/javascript">
jQuery(document).ready(function($) {

	$(".status").live("click", function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});

});	
</script>
<script type="text/javascript">
$(document).ready(function() {

	$("select.select-page-width").live("change", function () {
		$("select.select-page-width option:selected").each(function() {
			if($(this).val() == 2) {
				$(".page-width").show();
			} else {
				$(".page-width").hide();
			}
		});
	});

	$(".input-subtle-pattern").live("change", function () {
		$("#content").css("background-image", "url(../image/subtle_patterns/" + $(this).val() + ")");
	});
	
});
</script>
<?php echo $footer; ?>
