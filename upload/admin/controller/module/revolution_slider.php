<?php
/* 
Version: 1.0
Author: Artur Sułkowski
Website: http://artursulkowski.pl
*/

class ControllerModuleRevolutionSlider extends Controller {
	private $error = array(); 
	
	public function slider() {
		$this->language->load('module/revolution_slider');
		
		$this->document->setTitle('Revolution slider');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/revolution_slider.css');
		
		// Ładowanie modelu Revolution slider
		$this->load->model('slider/revolution_slider');
		
		// Pobieranie ustawień slidera
		if(isset($_GET['slider_id'])) {
			$data = $this->model_slider_revolution_slider->getData(intval($_GET['slider_id']));
			if($data == false) { 
				$this->redirect(HTTPS_SERVER . 'index.php?route=module/revolution_slider/sliders&token=' . $this->session->data['token']);
			}
			$this->data['slider_width'] = $data['settings']['slider_width'];
			$this->data['slider_height'] = $data['settings']['slider_height'];
			$this->data['layout_type'] = $data['settings']['layout_type'];
			$this->data['slider_speed'] = $data['settings']['slider_speed'];
			$this->data['slider_name'] = $data['name'];
			if(is_array($data['content'])) {
				$this->data['sliders'] = $data['content'];
			} else {
				$this->data['sliders'] = array();
			}
			$this->data['slider_id'] = $_GET['slider_id'];
		} else {
			$this->data['slider_width'] = 1122;
			$this->data['slider_height'] = 450;
			$this->data['layout_type'] = false;
			$this->data['slider_speed'] = 9;
			$this->data['slider_name'] = 'New slider';
			$this->data['sliders'] = array();
		}
		
		// Dodawanie slideru
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-add'])) {
				if($this->model_slider_revolution_slider->addSlider($this->request->post)) {
					$this->session->data['success'] = $this->language->get('text_success');
				} else {
					$this->session->data['error_warning'] = $this->model_slider_revolution_slider->displayError();
				}
				$this->redirect(HTTPS_SERVER . 'index.php?route=module/revolution_slider/sliders&token=' . $this->session->data['token']);
			}
		}
		
		// Zapisywanie slideru
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if(isset($_POST['button-save'])) {
				if($this->model_slider_revolution_slider->saveSlider($this->request->post)) {
					$this->session->data['success'] = $this->language->get('text_success');
				} else {
					$this->session->data['error_warning'] = $this->model_slider_revolution_slider->displayError();
				}
				$this->redirect(HTTPS_SERVER . 'index.php?route=module/revolution_slider/sliders&token=' . $this->session->data['token']);
			}
		}
		
		// Usuwanie slideru
		if(isset($_GET['slider_id']) && isset($_GET['delete'])) {
			if($this->validate()){
				if($this->model_slider_revolution_slider->deleteSlider(intval($_GET['slider_id']))) {
					$this->session->data['success'] = 'This slider has been properly removed from the database.';
				} else {
					$this->session->data['error_warning'] = $this->model_slider_revolution_slider->displayError();
				}
			} else {
				$this->session->data['error_warning'] = $this->language->get('error_permission');
			}
			$this->redirect(HTTPS_SERVER . 'index.php?route=module/revolution_slider/sliders&token=' . $this->session->data['token']);
		}
		
		// Wyświetlanie powiadomień
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$this->data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		$this->data['action'] = $this->url->link('module/revolution_slider/slider', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['token'] = $this->session->data['token'];
		
		$this->load->model('localisation/language');
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		$this->template = 'module/revolution_slider/slider.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	public function sliders() {
		$this->language->load('module/revolution_slider');

		$this->document->setTitle('Revolution slider');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/revolution_slider.css');
		
		// Ładowanie modelu Revolution slider
		$this->load->model('slider/revolution_slider');

		// Pobranie sliderów
		$this->data['sliders'] = $this->model_slider_revolution_slider->getSliders();
		
		// Wyświetlanie powiadomień
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$this->data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		$this->data['action'] = $this->url->link('module/revolution_slider/sliders', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['placement'] = $this->url->link('module/revolution_slider', 'token=' . $this->session->data['token'], 'SSL');		
		$this->data['existing'] = $this->url->link('module/revolution_slider/sliders', 'token=' . $this->session->data['token'], 'SSL');	
		$this->data['link_slider'] = $this->url->link('module/revolution_slider/slider', 'token=' . $this->session->data['token'], 'SSL');	
		$this->data['token'] = $this->session->data['token'];

		$this->template = 'module/revolution_slider/sliders.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	 
	public function index() {   
		$this->language->load('module/revolution_slider');

		$this->document->setTitle('Revolution slider');
		
		$this->load->model('setting/setting');
		
		// Dodawanie plików css i js do <head>
		$this->document->addStyle('view/stylesheet/revolution_slider.css');
		
		// Ładowanie modelu Revolution slider
		$this->load->model('slider/revolution_slider');
		
		// Instalacja Revolution slider w bazie danych
		$this->model_slider_revolution_slider->install();
		
		// Pobranie sliderów
		$this->data['sliders'] = $this->model_slider_revolution_slider->getSliders();
		
		// Zapisywanie modułu		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('revolution_slider', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('module/revolution_slider', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		// Wyświetlanie powiadomień
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$this->data['error_warning'] = $this->session->data['error_warning'];
		    unset($this->session->data['error_warning']);
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		    unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		$this->data['action'] = $this->url->link('module/revolution_slider', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['placement'] = $this->url->link('module/revolution_slider', 'token=' . $this->session->data['token'], 'SSL');		
		$this->data['existing'] = $this->url->link('module/revolution_slider/sliders', 'token=' . $this->session->data['token'], 'SSL');		
		$this->data['token'] = $this->session->data['token'];
	
		// Ładowanie listy modułów
		$this->data['modules'] = array();
		
		if (isset($this->request->post['revolution_slider_module'])) {
			$this->data['modules'] = $this->request->post['revolution_slider_module'];
		} elseif ($this->config->get('custom_module_module')) { 
			$this->data['modules'] = $this->config->get('revolution_slider_module');
		}	
		
		// Load model layout		
		$this->load->model('design/layout');
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/revolution_slider/placement.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/revolution_slider')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>