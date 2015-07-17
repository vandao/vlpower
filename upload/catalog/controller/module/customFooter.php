<?php
class ControllerModuleCustomFooter extends Controller {
	protected function index() {
		
		// ABOUT US
		$this->data ['about_status'] = $this->config->get ( 'about_status' );	
		$this->data ['about_header'] = $this->config->get ( 'about_header' );
		$this->data ['about_text'] = $this->config->get ( 'about_text' );
		
		// CONTACT COLUMN
		$this->data ['contact_status'] = $this->config->get ( 'contact_status' );
		$this->data ['gsm'] = $this->config->get ( 'gsm' );
		$this->data ['email'] = $this->config->get ( 'email' );
		$this->data ['skype'] = $this->config->get ( 'skype' );
		$this->data ['fax'] = $this->config->get ( 'fax' );
		
		
		// FACEBOOK
		$this->data ['facebook_status'] = $this->config->get ( 'facebook_status' );		
		$this->data ['facebook_id'] = $this->config->get ( 'facebook_id' );
		
		// Custom panel
		$this->data ['followus_column_status'] = $this->config->get ( 'followus_column_status' );
		$this->data ['followus_column_content'] = $this->config->get ( 'followus_column_content' );
		$this->data ['custom_panel_header_text'] = $this->config->get ( 'custom_panel_header_text' );
		
		//Load any required model files - catalog/product is a common one, or you can make your own DB access
		//methods in catalog/model/module/my_module.php
		//$this->load->model('module/my_module');
		

		/*
 * 
 * 
 * What you do here depends on what you want your module to do. You should call your model methods to get some
 * data out of the DB and then make it accessible to your view file by putting it in the $this->data[] array.
 * 
 * 
 * 
 */
		
		//Example functionality: pull through customer firstnames and make them available to the view.
		

		$this->data ['custom_html'] = $this->config->get ( 'custom_html' );
		$this->id = 'customFooter';
		
		//Choose which view to display this module with - the left and right column use the same file, the home page center
		//column uses its own view file.
		

		if (file_exists ( DIR_TEMPLATE . $this->config->get ( 'config_template' ) . '/template/module/customFooter.tpl' )) {
			$this->template = $this->config->get ( 'config_template' ) . '/template/module/customFooter.tpl';
		} else {
			$this->template = 'sportstore/template/module/customFooter.tpl';
		}
		
		$this->render ();
	}
}
?>