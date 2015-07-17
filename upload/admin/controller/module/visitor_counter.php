<?php
class ControllerModuleVisitorCounter extends Controller {
	private $error = array(); 

	public function install() {
		$this->load->model('module/visitor_counter');
		$this->model_module_visitor_counter->createVisitorTable();
	}

	public function uninstall() {
		$this->load->model('module/visitor_counter');
		$this->model_module_visitor_counter->deleteVisitorTable();
	}

	public function index() {   
		$this->language->load('module/visitor_counter');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('visitor_counter', $this->request->post);		

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'text_left',
				'text_right',
				'text_module',
				'text_success',
				'text_title',
				'text_time_new_counter',
				'error_code',
				'text_background_color',
				'text_ip',
				'text_server_time',
				'text_total_visitors',
				'entry_limit',
				'entry_image',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'error_permission',
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
		}

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
			'href'      => $this->url->link('module/visitor_counter', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
		);

		$this->data['action'] = $this->url->link('module/visitor_counter', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['visitor_counter_code'])) {
			$this->data['visitor_counter_code'] = $this->request->post['visitor_counter_code'];
		} else {
			$this->data['visitor_counter_code'] = $this->config->get('visitor_counter_code');
		}	

		//add code
		if (isset($this->request->post['text_title'])) {
			$this->data['title_code'] = $this->request->post['text_title'];
		} else {
			$this->data['title_code'] = $this->config->get('text_title');
		}

		if (isset($this->request->post['text_time_new_counter'])) {
			$this->data['text_time_new_counter_code'] = $this->request->post['text_time_new_counter'];
		} else {
			$this->data['text_time_new_counter_code'] = $this->config->get('text_time_new_counter');
		}

		if (isset($this->request->post['text_background_color'])) {
			$this->data['text_background_color_code'] = $this->request->post['text_background_color'];
		} else {
			$this->data['text_background_color_code'] = $this->config->get('text_background_color');
		}

		if (isset($this->request->post['text_total_visitors'])) {
			$this->data['text_total_visitors_code'] = $this->request->post['text_total_visitors'];
		} else {
			$this->data['text_total_visitors_code'] = $this->config->get('text_total_visitors');
		}

		if (isset($this->request->post['text_ip'])) {
			$this->data['text_ip_code'] = $this->request->post['text_ip'];
		} else {
			$this->data['text_ip_code'] = $this->config->get('text_ip');
		}

		if (isset($this->request->post['text_server_time'])) {
			$this->data['text_server_time_code'] = $this->request->post['text_server_time'];
		} else {
			$this->data['text_server_time_code'] = $this->config->get('text_server_time');
		}
		//End add		

		$this->data['modules'] = array();

		if (isset($this->request->post['visitor_counter_module'])) {
			$this->data['modules'] = $this->request->post['visitor_counter_module'];
		} elseif ($this->config->get('visitor_counter_module')) { 
			$this->data['modules'] = $this->config->get('visitor_counter_module');
		}				

		$this->load->model('design/layout');

		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/visitor_counter.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/visitor_counter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['text_title']) {
			$this->error['code'] = $this->language->get('error_code');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>