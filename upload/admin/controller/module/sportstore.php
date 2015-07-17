<?php

class ControllerModuleSportstore extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		//Load the language file for this module
		$this->language->load('module/sportstore');

		//Set the title from the language file $_['heading_title'] string
		$this->document->setTitle($this->language->get('heading_title'));
		
		

		
		
		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
					$this->load->model('tool/image');
	
	if (isset($this->request->post['own_image'])) {
			$this->data['own_image'] = $this->request->post['own_image'];
			$own_image = $this->request->post['own_image'];
		} else {
			$this->data['own_image'] = '';
		}
		
		if (isset($this->request->post['own_full_image'])) {
			$this->data['own_full_image'] = $this->request->post['own_full_image'];
			$own_image = $this->request->post['own_full_image'];
		} else {
			$this->data['own_full_image'] = '';
		}
		
		
		//Save the settings if the user has submitted the admin form (ie if someone has pressed save).
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('sportstore', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
					$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example' 
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		

		// store config data
		
		$config_data = array(
		'sportstore_status',
		'sportstore_skin',
		'bg_body',
		'navigation_top_gradient',
		'navigation_bottom_gradient',
		'submenu_top_gradient',
		'submenu_bottom_gradient',
		'border_top_bar',
		'box_1_title_top_gradient',
		'box_1_title_bottom_gradient',
		'box_2_title_top_gradient',
		'box_2_title_bottom_gradient',
		'box_3_title_top_gradient',
		'box_3_title_bottom_gradient',
		'button_content_top_gradient',
		'button_content_bottom_gradient',
		'button_footer_top_gradient',
		'button_footer_bottom_gradient',
		'button_hover_content_top_gradient',
		'button_hover_content_bottom_gradient',
		'button_hover_footer_top_gradient',
		'button_hover_footer_bottom_gradient',
		'body_font_color_1',
		'body_font_color_2',
		'body_font_color_3',
		'body_font_color_4',
		'body_font_color_5',
		'text_search',
		'custom_font_color_1',
		'custom_font_color_2',
		'custom_font_color_3',
		'own_bg_image',
		'own_image',
		'sportstore_body_bg_pattern',
		'sportstore_body_font',
		'sportstore_header_font',
		'price_color',
		'old_price_color',
		'product_name'
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		//SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/sportstore', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/sportstore', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	
		//This code handles the situation where you have multiple instances of this module, for different layouts.
		if (isset($this->request->post['sportstore_module'])) {
			$modules = explode(',', $this->request->post['sportstore_module']);
		} elseif ($this->config->get('sportstore_module') != '') {
			$modules = explode(',', $this->config->get('sportstore_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['sportstore_' . $module . '_layout_id'])) {
				$this->data['sportstore_' . $module . '_layout_id'] = $this->request->post['sportstore_' . $module . '_layout_id'];
			} else {
				$this->data['sportstore_' . $module . '_layout_id'] = $this->config->get('sportstore_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['sportstore_' . $module . '_position'])) {
				$this->data['sportstore_' . $module . '_position'] = $this->request->post['sportstore_' . $module . '_position'];
			} else {
				$this->data['sportstore_' . $module . '_position'] = $this->config->get('sportstore_' . $module . '_position');
			}	
			
			if (isset($this->request->post['sportstore_' . $module . '_status'])) {
				$this->data['sportstore_' . $module . '_status'] = $this->request->post['sportstore_' . $module . '_status'];
			} else {
				$this->data['sportstore_' . $module . '_status'] = $this->config->get('sportstore_' . $module . '_status');
			}	
						
			if (isset($this->request->post['sportstore_' . $module . '_sort_order'])) {
				$this->data['sportstore_' . $module . '_sort_order'] = $this->request->post['sportstore_' . $module . '_sort_order'];
			} else {
				$this->data['sportstore_' . $module . '_sort_order'] = $this->config->get('sportstore_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['sportstore_module'])) {
			$this->data['sportstore_module'] = $this->request->post['sportstore_module'];
		} else {
			$this->data['sportstore_module'] = $this->config->get('sportstore_module');
		}

		//Choose which template file will be used to display this request.
		$this->template = 'module/sportstore.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		

		
		if (isset($this->data['own_image']) && file_exists(DIR_IMAGE . $this->data['own_image'])) {
			$this->data['sportstore_preview'] = $this->model_tool_image->resize($this->data['own_image'], 70, 70);
		} else {
			$this->data['sportstore_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
		
		
		if (isset($this->data['own_full_image']) && file_exists(DIR_IMAGE . $this->data['own_full_image'])) {
			$this->data['sportstore_full_preview'] = $this->model_tool_image->resize($this->data['own_full_image'], 70, 70);
		} else {
			$this->data['sportstore_full_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}

		//Send the output.
		$this->response->setOutput($this->render());
	}
	
	/*
	 * 
	 * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
	 * You can add checks in here of your own.
	 * 
	 */
	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/sportstore')) {
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
