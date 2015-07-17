<?php
class ModelToolOnlinePlus extends Model {	
	public function whosonlineplus($ip, $customer_id, $url, $referer) {
	
///////////////////////////////////////////////////////////////////////////////////////////////////////	
///////////////////////////////////                                 ///////////////////////////////////
///////////////////////////////////   Configuration Section START   ///////////////////////////////////
///////////////////////////////////                                 ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
// 																									 //
// You can include pages you want ignored here, if someone lands on one of these pages then it will  //
// not be recorded, add any routes you want to ignore to the array.									 //
// ************** Don't remove the 'checkout/success' route. *******************					 //
	$ignore_pages = 'checkout/checkout,checkout/success';
//																									 //
//	Exclusions - Comma Separated list of IPs to not record like your own PCs IP address etc.		 //
  	$excluded_ips = '';
//																									 //
//  If you DO want to record bots then set this to false.											 //
	$enable_bots = true;
//																									 //
//  If you are having problems with country detection then set this to false and let me know.		 //
	$country_detection = true;
//																									 //
///////////////////////////////////////////////////////////////////////////////////////////////////////	
///////////////////////////////////                                 ///////////////////////////////////
///////////////////////////////////   Configuration Section END     ///////////////////////////////////
///////////////////////////////////                                 ///////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////     DO NOT change anything below this line    ////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////

// preg_match("/^([0-9]{1,3}\.){3}[0-9]{1,3}$/", $ip); alternative ip chack it required.

	if(!filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4)) {
		$ip = '0.0.0.0';
  	}

    $record_session = true;
	
	if (isset($this->request->server['HTTP_USER_AGENT'])) {
		$agent = addslashes($this->request->server['HTTP_USER_AGENT']);	
	} else {
		$agent = 'Unknown';
	}
	
// Delete old entries.  Currently set to 3 days (60 * 60 * 24 * 3 = 259200) - Change as required.
// Delete old entries.  Currently set to 3 days (60 * 60 * 24 * 7 = 604800) - Change as required.
	$this->db->query("DELETE FROM `" . DB_PREFIX . "online_plus` WHERE (UNIX_TIMESTAMP(`time_arrived`) + 604800) < UNIX_TIMESTAMP(NOW())");
	
	if ($enable_bots) {

		$bot_array = array("myweb", "BingPreview", "msnbot", "baidu", "robot", "spider", "ezooms", "bingbot", "ahrefs", "googlebot", "abot", "dbot", "ebot", "hbot", "kbot", "mbot", "nbot", "obot", "pbot", "rbot", "sbot", "tbot", "ybot", "bot.", "crawl", "slurp", "spider", "accoona", "acoon", "ah-ha.com", "ahoy", "altavista", "ananzi", "anthill", "appie", "arachnophilia", "arale", "araneo", "aranha", "architext", "aretha", "arks", "aspseek", "asterias", "atlocal", "atn", "atomz", "augurfind", "backrub", "bannana_bot", "big brother", "bjaaland", "blackwidow", "bloodhound", "boitho", "booch", "bradley", "calif", "cassandra", "ccubee", "cfetch", "churl", "cienciaficcion", "cmc", "collective", "combine system", "computingsite", "cusco", "deepindex", "deweb", "die blinde kuh", "digger", "dmoz", "docomo", "download express", "dwcp", "ebiness", "e-collector", "ejupiter", "emacs-w3 search engine", "esther", "evliya celebi", "ezresult", "falcon", "felix ide", "ferret", "fetchrover", "fido", "findlinks", "fireball", "fish search", "fouineur", "funnelweb", "gazz", "gcreep", "getterroboplus", "geturl", "glx", "goforit", "golem", "grabber", "grapnel", "griffon", "gromit", "grub", "gulliver", "hamahakki", "harvest", "havindex", "helix", "heritrix", "hku www octopus", "homerweb", "htdig", "html index", "html_analyzer", "htmlgobble", "hubater", "hyper-decontextualizer", "ia_archiver", "ibm_planetwide", "ichiro", "iconsurf", "iltrovatore", "image.kapsi.net", "imagelock", "incywincy", "indexer", "infobee", "informant", "infoseek", "ingrid", "inktomisearch.com", "inspector web", "intelliagent", "internet shinchakubin", "ip3000", "iron33", "israeli-search", "ivia", "jack", "jakarta", "java/", "javabee", "jetbot", "jumpstation", "katipo", "kdd-explorer", "kilroy", "knowledge", "kototoi", "labelgrabber", "lachesis", "larbin", "legs", "libwww", "linkalarm", "link validator", "linkscan", "linkwalker", "lockon", "lwp", "lycos", "magpie", "mantraagent", "marvin/", "mattie", "mediafox", "mediapartners", "mercator", "merzscope", "miva", "mj12", "mnogosearch", "moget", "monster", "moose", "motor", "multitext", "muncher", "muscatferret", "mwd.search", "nameprotect", "nationaldirectory", "nazilla", "ncsa beta", "nec-meshexplorer", "nederland.zoek", "netcarta webmap engine", "netmechanic", "netresearchserver", "netscoop", "newscan-online", "ng/", "nhse", "nomad", "nutch", "nzexplorer", "objectssearch", "occam", "omni", "open text", "openfind", "orb search", "osis-project", "pack rat", "pageboy", "parasite", "partnersite", "patric", "pear.", "pegasus", "peregrinator", "pgp key agent", "phantom", "phpdig", "picosearch", "piltdownman", "pimptrain", "pinpoint", "pioneer", "piranha", "plumtreewebaccessor", "pompos", "poppelsdorf", "poppi", "popular iconoclast", "rambler", "raven search", "roach", "road runner", "roadhouse", "robbie", "robofox", "robozilla", "rules", "salty", "sbider", "scooter", "scrubby", "search.", "searchprocess", "seeker", "semanticdiscovery", "senrigan", "sg-scout", "shai'hulud", "shark", "shopwiki", "sidewinder", "sift", "simmany", "site searcher", "site valet", "sitetech-rover", "skymob.com", "sleek", "smartwit", "sna-", "snooper", "sohu", "speedfind", "spinner", "spyder", "steeler/", "suke", "suntek", "supersnooper", "surfnomore", "sven", "sygol", "szukacz", "tach black widow", "tarantula", "templeton", "/teoma", "t-h-u-n-d-e-r-s-t-o-n-e", "titan", "titin", "tkwww", "toutatis", "t-rex", "tutorgig", "ucsd", "udmsearch", "ultraseek", "url check", "vagabondo", "valkyrie", "verticrawl", "victoria", "vision-search", "volcano", "voyager/", "w3c_validator", "w3m2", "w3mir", "wallpaper", "wanderer", "web core", "web hopper", "web wombat", "webbandit", "webcatcher", "webcopy", "webfoot", "weblayers", "weblinker", "weblog monitor", "webmirror", "webquest", "webreaper", "websitepulse", "websnarf", "webstolperer", "webvac", "webwalk", "webwatch", "webwombat", "webzinger", "wget", "whatuseek", "whizbang", "whowhere", "wild ferret", "wire", "worldlight", "wwwc", "xenu", "xget", "xift", "yandex", "zao/", "zippp", "zyborg");
	
		foreach ($bot_array as $bots) {

		  if (stripos($agent, $bots) !== false) {
		  	$record_session = false;
			break;
  		  }
		}
	
	}

	if (isset($this->request->get['route'])) {
	  $on_page = $this->request->get['route'];
	} else {
	  $on_page = 'common/home';
	}
   
	
	if ($excluded_ips != '') {
	  $exclusion_array = explode(',',$excluded_ips);
		foreach ($exclusion_array as $key => $exclusion_ip) {
  		   if ($ip == $exclusion_ip) {
			$record_session = false;
	  	   }
		}
	}

  	$existing_session = false;
  	$thirty_ago_timestamp = strtotime("now") - (604800); //1800 (60 * 60 * 24 * 7 = 604800)
  	$thirty_mins_ago = date('Y-m-d H:i:s', $thirty_ago_timestamp);	
	$ip_array = explode ('.',$ip);
// changed ip_start to the first 3 octets because of dropping the browser sting search below.
	$ip_start = $ip_array[0] . '.' . $ip_array[1] . '.' . $ip_array[2];			


	if ($customer_id) {
   	  $query = "select * from " . DB_PREFIX . "online_plus WHERE customer_id ='" . $customer_id . "'  and last_click > '" . $thirty_mins_ago . "'";
   	  $result = $this->db->query($query);
		if ($result->num_rows > 0) { 
		  $existing_session = true;
		}
	}

// Going to try using just the ip address (drop the browser string from the query) to get an existing session.
// May possibly have an issue with the likes of people stupid enough to use AOL as thier provider because of their
// insistance on using multiple proxies, hence multiple ip address and therefore multiple entries.
// However, restricted the ip lookup to the first 3 octets and see how we go.
// Also dropping the cart lookup as this is probably now redundant.

  	if (!$existing_session) {			
		$query = "select * from " . DB_PREFIX . "online_plus WHERE ip_address like '" . $ip_start . "%' and last_click > '" . $thirty_mins_ago . "'";
		$result = $this->db->query($query);
		  if ($result->num_rows > 0) { 
			$existing_session = true;
		  }
	}
/*
  	if (!$existing_session) {			
		$query = "select * from " . DB_PREFIX . "online_plus WHERE browser_string ='" . $agent . "' and ip_address like '" . $ip_start . "%' and last_click > '" . $thirty_mins_ago . "'";
		$result = $this->db->query($query);
		  if ($result->num_rows > 0) { 
			$existing_session = true;
		  }
	}

	if (!$existing_session) {
		if ($this->cart->countProducts() > 0) {
		  $query = "select * from " . DB_PREFIX . "online_plus WHERE cart_total ='" . $this->cart->getSubTotal() . "'  and last_click > '" . $thirty_mins_ago . "'";
		  $result = $this->db->query($query);
	  		if ($result->num_rows > 0) { 
			  $existing_session = true;
			}
		}
	}
*/     
  	if ($existing_session) {
		 
		 $tracking_data = array();
		 
		 foreach ($result->rows as $results) {
		   $tracking_data = array (
			  'tracking_id' 		=> $results['tracking_id'],
			  'customer_id'			=> $results['customer_id'],
			  'products_viewed'		=> $results['products_viewed'],
			  'search_term'			=> $results['search_term'],
			  'added_cart'			=> $results['added_cart'],
			  'completed_purchase'	=> $results['completed_purchase'],
			  'num_clicks'			=> ($results['num_clicks'] + 1),
			  'categories_viewed'	=> (empty($results['categories_viewed']) ? array() : unserialize($results['categories_viewed'])),
			  'cart_contents'		=> $results['cart_contents'], 
			  'cart_total'			=> $results['cart_total'],
			  'routes'				=> $results['routes']
		   );
		 }
		 
		 $tracking_id = $tracking_data['tracking_id'];
		 $products_viewed = $tracking_data['products_viewed'];
		 $search_terms = $tracking_data['search_term'];
		 $added_cart = $tracking_data['added_cart'];
		 $completed_purchase = $tracking_data['completed_purchase'];
		 $num_clicks = $tracking_data['num_clicks'];
		 $categories_viewed = $tracking_data['categories_viewed'];
		 $cart_total = $tracking_data['cart_total'];
		 $cart_contents = $tracking_data['cart_contents'];
		 $routes = $tracking_data['routes'];
		 
        if (isset($customer_id)) {
			$cust_id = $customer_id;
  		} else {
			$cust_id = $tracking_data['customer_id'];
		}				

		$current_page = $this->request->server['REQUEST_URI'];

		$last_click = date('Y-m-d H:i:s');

		if (($added_cart != 'true') && ($this->cart->countProducts() > 0)) {
		  $added_cart = 'true';
		}
		
		if ((strstr($on_page, 'checkout/success'))&& ($completed_purchase != 'true')) {
			$completed_purchase='true';
		}
		
		if (isset($this->request->get['product_id'])) {
			$current_product_id = (int)$this->request->get['product_id'];
		}
		
		if (isset($this->request->get['product_id'])) {
			if (!strstr($products_viewed, '*' . $current_product_id . '?')) {
				$products_viewed .= '*' . $current_product_id . '?';	 
			}
		}

		if (isset($this->request->get['search'])) {
			$current_search_term = $this->request->get['search'];
		}
		
		if (isset($this->request->get['search'])) {
			if (!strstr($search_terms, '*' . $current_search_term . '?')) {
				$search_terms .= '*' . $current_search_term . '?';	 
			}
		}

		if (!strstr($routes, '*' . $on_page . '?')) {
				$routes .= '*' . $on_page . '?';	 
		}		

		if (($this->cart->countProducts() > 0) && (!strpos($ignore_pages, $on_page))) {
			$cart_contents = '';
			$cart_total = $this->cart->getSubTotal();
			foreach ($this->cart->getProducts() as $product) {
			  if (!strstr($cart_contents, '*' . $product['product_id'] . '?')) {
				$cart_contents .= '*' . $product['product_id'] . '?';	 
			  }
			}
		} else {
			$cart_contents = $tracking_data['cart_contents'];
		 	$cart_total = $tracking_data['cart_total'];
		}
		
		if (isset($this->request->get['path'])) {
			$cat_id = $this->request->get['path'];
			$cat_id_array = explode("_",$cat_id);
			$cat_id = end($cat_id_array);
			$categories_viewed[] = $cat_id;
		}
		
		$categories_viewed = array_unique($categories_viewed);
		
		$categories_viewed = serialize($categories_viewed);
					
		$query = "UPDATE `" . DB_PREFIX . "online_plus` SET last_click='" . $last_click . "', exit_page='" . $this->db->escape($current_page) . "', num_clicks='" . $num_clicks . "', added_cart='" . $added_cart . "', categories_viewed='" . $this->db->escape($categories_viewed) . "', products_viewed='" . $this->db->escape($products_viewed) . "', customer_id='" . $cust_id . "', completed_purchase='" . $completed_purchase . "', cart_contents='" . $cart_contents . "', cart_total = '" . $cart_total . "', routes = '" . $routes . "', search_term = '" . $this->db->escape($search_terms) . "' where tracking_id='" . $tracking_id . "'";
		$this->db->query($query);

 	} elseif ($record_session) {

		if (!strpos($ignore_pages, $on_page)) {
			if ($referer) {
		  	    $referer_data = $this->request->server['HTTP_REFERER'];
		  		if ($referer_data) {
			  	  $refer_data = explode('?', $referer_data);
				  $referer = $refer_data[0];
					if (strpos($referer_data, "?")) {
				   	   $query_string = '?' . $refer_data[1];
					} else {
				   	   $query_string = '';
					}
			  } else {
			    $referer = 'Unknown';
			    $query_string = '';
			  }
		  } else {
			$referer = 'Unknown';
		    $query_string = '';
		  }
		  
		  $referer_array[] = explode(';', $referer);
		  foreach ($referer_array as $referer2) {
			$base_referer = empty($referer2[0]) ? 'Unknown' : ($referer2[0]);
		  }
		  
		  if ($country_detection) {
			  include_once(DIR_SYSTEM . "library/geoip.php");
			  $gi = geoip_open(DIR_SYSTEM . "library/geoip.dat",GEOIP_STANDARD);	 
			  $country_name = geoip_country_name_by_addr($gi, $ip);
			  geoip_close($gi);
		  } else {
			  $country_name = 'Disabled';
		  }
		
		  $time_arrived = date('Y-m-d H:i:s');
		  $landing_page = $this->request->server['REQUEST_URI'];
		  $current_page = $this->request->server['PHP_SELF'];
    
		  if (isset($this->request->get['search'])) {
			  $search_terms .= '*' . $this->request->get['search'] . '?';	 
		  } else {
			  $search_terms = '';
		  }
    
		  $query = "INSERT INTO `" . DB_PREFIX . "online_plus` (`ip_address`, `browser_string`, `country_name`, `referer`,`base_referer`,`referer_query_string`,`landing_page`,`exit_page`,`time_arrived`,`last_click`,`search_term`) VALUES ('" . $this->db->escape($ip) . "','" . $this->db->escape($agent) . "','" . $this->db->escape($country_name) . "','" . $this->db->escape($referer) . "', '" . $this->db->escape($base_referer) . "', '" . $this->db->escape($query_string) . "','" . $this->db->escape($landing_page) . "','" . $this->db->escape($current_page) . "','" . $time_arrived . "','" . $time_arrived . "','" . $this->db->escape($search_terms) . "')";		 
		  $this->db->query($query);
		} 
	}
  }
}
?>