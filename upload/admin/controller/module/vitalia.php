<?php
/* 
Template Name: Vitalia
Version: 1.0
Author: Artur Sułkowski
Website: http://artursulkowski.pl
*/

class ControllerModuleVitalia extends Controller {
	
	private $error = array(); 
	
	public function index() {   
	
		//Load the language file for this module
		$this->language->load('module/vitalia');

		//Set the title from the language file $_['heading_title'] string
		$this->document->setTitle('Vitalia Theme Options');
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
		// Konfiguracja zmiennych
		$config_data = array(
			'main_layout',
			'top_bar_layout',
			'header_layout',
			'slideshow_layout',
			'content_layout',
			'custom_footer_layout',
			'footer_layout',
			'breadcrumb_layout',
			
			'page_width',
			'max_width',
			
			'responsive_design',
			
			'add_to_compare_text',
			'add_to_wishlist_text',
			'checkout_text',
			'continue_shopping_text',
			'sale_text',
			
			'header_type',
			
			'product_per_pow',
			'product_per_pow2',
			'product_scroll_latest',
			'product_scroll_featured',
			'product_scroll_bestsellers',
			'product_scroll_specials',
			'product_scroll_related',
			'hover_product',
			'display_text_sale',
			'type_sale',
			'display_add_to_compare',
			'display_add_to_wishlist',
			'display_add_to_cart',
			'display_rating',
			'default_list_grid',
			'refine_search_style',
			'refine_image_width',
			'refine_image_height',
			'refine_search_number',
			'product_image_zoom',
			'product_image_size',
			'position_image_additional',
			'product_social_share',
			
			'custom_block',
			
			'customfooter',
			
			'colors_status',
			'body_font_text',
			'body_font_links',
			'body_font_links_hover',
			'body_price_text',
			'body_background_color',
			'top_bar_text',
			'top_bar_background_gradient_top',
			'top_bar_background_gradient_bottom',
			'top_menu_links',
			'top_cart_icon_background_gradient_top',
			'top_cart_icon_background_gradient_bottom',
			'top_cart_block_price',
			'top_background_color',
			'menu_main_links',
			'menu_background_gradient_top',
			'menu_background_gradient_bottom',
			'menu_hover_background_gradient_top',
			'menu_hover_background_gradient_bottom',
			'vertical_menu_heading_text',
			'vertical_menu_heading_background_gradient_top',
			'vertical_menu_heading_background_gradient_bottom',
			'slider_bullets_background_color',
			'slider_bullet_active_background_color',
			'slider_background_color',
			'header_background_color',
			'header_border_bottom_color',
			'sale_color_text',
			'sale_background_gradient_top',
			'sale_background_gradient_bottom',
			'ratings_background_gradient_top',
			'ratings_background_gradient_bottom',
			'ratings_active_background_gradient_top',
			'ratings_active_background_gradient_bottom',
			'buttons_color_text',
			'buttons_background_gradient_top',
			'buttons_background_gradient_bottom',
			'second_buttons_color_text',
			'second_buttons_background_gradient_top',
			'second_buttons_background_gradient_bottom',
			'carousel_buttons_background_gradient_top',
			'carousel_buttons_background_gradient_bottom',
			'carousel_bullets_background_gradient_top',
			'carousel_bullets_background_gradient_bottom',
			'carousel_active_bullets_background_gradient_top',
			'carousel_active_bullets_background_gradient_bottom',
			'customfooter_color_text',
			'customfooter_color_heading',
			'customfooter_color_icon_heading',
			'customfooter_color_icon_contact_us',
			'customfooter_border_color',
			'customfooter_background_color',
			'footer_color_text',
			'footer_color_bullets',
			'footer_color_heading',
			'footer_background_color',
			
			'background_status',
			'body_background',
			'body_background_background',
			'body_background_subtle_patterns',
			'body_background_position',
			'body_background_repeat',
			'body_background_attachment',
			'header_background',
			'header_background_background',
			'header_background_subtle_patterns',
			'header_background_position',
			'header_background_repeat',
			'header_background_attachment',
			'customfooter_background',
			'customfooter_background_background',
			'customfooter_background_subtle_patterns',
			'customfooter_background_position',
			'customfooter_background_repeat',
			'customfooter_background_attachment',
			'content_headlines_background',
			'content_headlines_background_background',
			'footer_headlines_background',
			'footer_headlines_background_background',
						
			'font_status',
			'categories_bar',
			'categories_bar_weight',
			'categories_bar_px',
			'headlines',
			'headlines_weight',
			'headlines_px',
			'footer_headlines',
			'footer_headlines_weight',
			'footer_headlines_px',
			'body_font',
			'body_font_px',
			'body_font_weight',
			'body_font_smaller_px',
			'page_name',
			'page_name_weight',
			'page_name_px',
			'button_font',
			'button_font_weight',
			'button_font_px',
			'custom_price',
			'custom_price_weight',
			'custom_price_px',
			'custom_price_px_medium',
			'custom_price_px_small',
			'custom_price_px_old_price',
			
			'product_image_zoom',
			
			'product_scroll_latest',
			'product_scroll_featured',
			'product_scroll_bestsellers',
			'product_scroll_specials',
			'product_scroll_related',
			
			'custom_code_css_status',
			'custom_code_css',
			'custom_code_javascript_status',
			'custom_code_js',
			
			'refine_image_width',
			'refine_image_height',
			
			'payment_status',
			'payment',
			
			'compressor_code_status'
		);
		
		foreach ($config_data as $conf) {
			$this->data[$conf] = false;
		}

		// Funkcja do usuwania katalogu
		function removeDir($path) { 
			$dir = new DirectoryIterator($path); 
			foreach ($dir as $fileinfo) { 
				if ($fileinfo->isFile() || $fileinfo->isLink()) { 
					unlink($fileinfo->getPathName()); 
				} elseif (!$fileinfo->isDot() && $fileinfo->isDir()) { 
					removeDir($fileinfo->getPathName()); 
				} 
			} 
			rmdir($path); 
		}
		
  		// Vitalia MUTLI STORE
  		
			if (isset($this->request->post['store_id'])) {
				$this->data['store_id'] = $this->request->post['store_id'];
			} else {
				$this->data['store_id'] = $this->config->get('d_store_id');
			}

			$this->data['stores'] = array();
			
			$this->load->model('setting/store');
			
			$results = $this->model_setting_store->getStores();
			
			$this->data['stores'][] = array(
				'name' => 'Default',
				'href' => '',
				'store_id' => 0
			);
				
			foreach ($results as $result) {
				$this->data['stores'][] = array(
					'name' => $result['name'],
					'href' => $result['url'],
					'store_id' => $result['store_id']
				);
			}		
			
			
			if(isset($_GET['store_id'])) {
				$this->data['store_id'] = $_GET['store_id'];
			} else {
				if (isset($_GET['submit'])) {
					$this->data['store_id'] = $this->data['store_id'];
				} else {
					if (isset($this->request->post['store_id'])) {
						$this->data['store_id'] = $this->request->post['store_id'];
					} else {
						$this->data['store_id'] = 0;
					}
				}
			}
			
			if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
				$this->data['array'] = array(
					'd_store_id' => $this->request->post['store_id']
				);
				$this->model_setting_setting->editSetting('d_id_store', $this->data['array']);	
			}
			
		// END MULTISTORE
		
		// Pobieranie informacji, która skórka jest włączona	
		$this->data['setting_skin'] = $this->model_setting_setting->getSetting('vitalia_skin', $this->data['store_id']);
		
		// Nadanie nazw sklepom 
		if($this->data['store_id'] == 0) {
			$this->data['edit_skin_store'] = 'default';
		} else {
			$this->data['edit_skin_store'] = $this->data['store_id'];
		}
		
		// Aktywna skórka
		if(isset($this->data['setting_skin']['vitalia_skin'])) {
			$this->data['active_skin'] = $this->data['setting_skin']['vitalia_skin'];
		} else {
			$this->data['active_skin'] = 'default';
		}
		
		if(!file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin'].'')) {
			$this->data['active_skin'] = false;
		}
		
		// Tworzenie listy skórek
		if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/')) {
			$this->data['skins'] = array();
			$dir = opendir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/');
			while(false !== ($file = readdir($dir))) {
				if(is_dir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$file) && $file != '.' && $file != '..')  {
					$this->data['skins'][] = $file;
				}
			}
		}
		
		// Edycja skórki - sprawdzanie jaki szablon jest edytowany
		if(isset($this->data['setting_skin']['vitalia_skin'])) {
			$this->data['active_skin_edit'] = $this->data['setting_skin']['vitalia_skin'];
		} else {
			$this->data['active_skin_edit'] = 'default';
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-edit']) || isset($_POST['button-delete'])){
				$this->data['active_skin_edit'] = $this->request->post['skin'];
			}
		}
		
		if(isset($this->request->post['save_skin']) && !isset($_POST['button-edit']) && !isset($_POST['button-delete'])) {
			$this->data['active_skin_edit'] = $this->request->post['save_skin'];
		}
		
		if(isset($_GET['skin_edit'])) {
			$this->data['active_skin_edit'] = $_GET['skin_edit'];
		}
			
		// Zmiana skórki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-active'])){
				$save_vitalia_skin = array(
					'vitalia_skin' => $this->request->post['skin']
				);
				$this->model_setting_setting->editSetting('vitalia_skin', $save_vitalia_skin, $this->request->post['store_id']);	
				$this->session->data['success'] = $this->language->get('text_success');
	            $this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
            }
		}
		
		// Dodawanie skórki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['add-skin'])){
				if(is_writable(DIR_CATALOG . 'view/theme/vitalia/skins/') && (is_writable(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') || !file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'))) {
					// Sprawdzanie czy istnieje folder store_ 
					if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') == 'dir') {
					} else {
						mkdir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/', 0777);
					}
					
					// Dodawanie pliku z ustawieniami
					if($this->request->post['add-skin-name'] != '') {	
						if(!file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/')) {
							mkdir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/settings.json', json_encode($config_data));
							mkdir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/js/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/js/custom_code.js', ' ');
							mkdir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/css/', 0777);
							file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->request->post['add-skin-name'].'/css/custom_code.css', ' ');
							$this->session->data['success'] = $this->language->get('text_success');
							$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
						}
					}  
				}

				$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/vitalia/skins!';
		        $this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
		    }
		}
		
		// Zapisywanie skórki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-save'])){
				if(is_writable(DIR_CATALOG . 'view/theme/vitalia/skins') && is_writable(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store']) && is_writable(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'])) {
					// Sprawdzanie czy istnieje skórka
					if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') == 'dir' && file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'')) {
						// Zapisywanie ustawien
						file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/settings.json', json_encode($this->request->post));  
						
						// Custom js
						file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/js/custom_code.js', $this->request->post['custom_code_js']);  
						
						// Custom css
						file_put_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/css/custom_code.css', $this->request->post['custom_code_css']);  
						
						// Informacja o zapisaniu ustawien
						$this->session->data['success'] = $this->language->get('text_success');
						$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&skin_edit='.$this->data['active_skin_edit'].'&token=' . $this->session->data['token']);
					}
				}
				
				// Jezeli nie istnieje katalog skórki to pojawia się komunikat o błedzie
				$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/vitalia/skins!';
				$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
			}
		}
		
		// Usuwanie skórki
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-delete'])){
				if(is_writable(DIR_CATALOG . 'view/theme/vitalia/skins')) {
					// Sprawdzanie czy istnieje skórka
					if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') && filetype(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/') == 'dir' && file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'')) {
						// Sprawdzanie czy skórka jest ustawiona jako aktywna
						if($this->data['active_skin_edit'] != $this->data['active_skin']) {
							removeDir(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'');
							
							// Informacja o usunięciu skórki
							$this->session->data['success'] = $this->language->get('text_success');
							$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);		
						}
					}
				} else {
					$this->session->data['error_warning'] = 'You need to set CHMOD 777 for all folder and subfolder in catalog/view/theme/vitalia/skins!';
					$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
				}
				
				// Jezeli nie usunięto szablonu to pojawia sie błąd
				$this->session->data['error_warning'] = $this->language->get('text_warning2');
				$this->redirect(HTTPS_SERVER . 'index.php?route=module/vitalia&submit=true&token=' . $this->session->data['token']);
			}
		}
		
		// Pobieranie ustawień szablonu
		if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/settings.json')) {
			$template = json_decode(file_get_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/settings.json'), true);
			if(isset($template)) {
				foreach ($template as $option => $value) { 
					$this->data[$option] = $value;
				}
			}
		}
				
		// Pobieranie ustawień szablon --> custom code js
		if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/js/custom_code.js')) {
			$this->data['custom_code_js'] = file_get_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/js/custom_code.js');
		}
		
		// Pobieranie ustawień szablon --> custom code css
		if(file_exists(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/css/custom_code.css')) {
			$this->data['custom_code_css'] = file_get_contents(DIR_CATALOG . 'view/theme/vitalia/skins/store_'.$this->data['edit_skin_store'].'/'.$this->data['active_skin_edit'].'/css/custom_code.css');
		}
		
		$this->data['text_image_manager'] = 'Image manager';
		$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array('heading_title');
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		
		
		// Instalacja przykładowych danych
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {	
			// Custom Module
			if(isset($_POST['install_custom_module'])){
				$dir = '../data_sample/vitalia/custom_module.php'; 
				
				function mb_unserialize($serial_str) {
				    $out = preg_replace('!s:(\d+):"(.*?)";!se', 
				"'s:'.strlen('$2').':\"$2\";'", $serial_str );
				    return unserialize($out);
				}	
				
				if( is_file($dir) ){
					$data = mb_unserialize(file_get_contents( $dir ));
		
					if( is_array($data) ){
						$output = array();
						$output["custom_module_module"] = $data; 
						$this->model_setting_setting->editSetting( "custom_module", $output );	
					}
				}	
				
				$this->session->data['success'] = $this->language->get('text_success');
				$this->redirect($this->url->link('module/vitalia', 'token=' . $this->session->data['token'], 'SSL'));
			}
			
			// Camera slider
			if(isset($_POST['install_camera_slider'])){
				$dir = '../data_sample/vitalia/camera_slider.php'; 
				
				function mb_unserialize($serial_str) {
				    $out = preg_replace('!s:(\d+):"(.*?)";!se', 
				"'s:'.strlen('$2').':\"$2\";'", $serial_str );
				    return unserialize($out);
				}	
				
				if( is_file($dir) ){
					$data = mb_unserialize(file_get_contents( $dir ));
		
					if( is_array($data) ){
						$output = array();
						$output["camera_slider_module"] = $data; 
						$this->model_setting_setting->editSetting( "camera_slider", $output );	
					}
				}	
				
				include '../data_sample/vitalia/camera_slider_query.php'; 
				
				$this->session->data['success'] = $this->language->get('text_success');
				$this->redirect($this->url->link('module/vitalia', 'token=' . $this->session->data['token'], 'SSL'));
			}
			
			// Megamenu
			if(isset($_POST['install_megamenu'])){
				$dir = '../data_sample/vitalia/megamenu.php'; 
				
				function mb_unserialize($serial_str) {
				    $out = preg_replace('!s:(\d+):"(.*?)";!se', 
				"'s:'.strlen('$2').':\"$2\";'", $serial_str );
				    return unserialize($out);
				}	
				
				if( is_file($dir) ){
					$data = mb_unserialize(file_get_contents( $dir ));
		
					if( is_array($data) ){
						$output = array();
						$output["megamenu_module"] = $data; 
						$this->model_setting_setting->editSetting( "megamenu", $output );	
					}
				}	
				
				include '../data_sample/vitalia/megamenu_query.php'; 
				
				$this->session->data['success'] = $this->language->get('text_success');
				$this->redirect($this->url->link('module/vitalia', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}
		
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
		if (isset($this->session->data['error_warning'])) {
			$this->data['error_warning'] = $this->session->data['error_warning'];
			unset($this->session->data['error_warning']);
 		} elseif(isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
        if (isset($this->session->data['success'])) {
        	$this->data['success'] = $this->session->data['success'];
            unset($this->session->data['success']);
        } else {
			$this->data['success'] = '';
        }

		$this->data['action'] = $this->url->link('module/vitalia', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		// Multilanguage
		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		//Choose which template file will be used to display this request.
		$this->template = 'module/vitalia.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		
		//Send the output.
		$this->response->setOutput($this->render());
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/vitalia')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>