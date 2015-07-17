<?php

class ControllerModuleVisitorCounter extends Controller {
	protected function index() {
		
        $this->language->load('module/visitor_counter');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/visitor_counter.css');
		//get data from DB
		$setting = array();
		$setting["text_time_new_counter"] = $this->config->get('text_time_new_counter');
		$setting["text_total_visitors"] = $this->config->get('text_total_visitors');

		$this->data['heading_title'] = $this->config->get('text_title');
		$this->data['today_title'] = $this->language->get('today_title');
		$this->data['yesterday_title'] = $this->language->get('yesterday_title');
		$this->data['week_title'] = $this->language->get('week_title');
		$this->data['lastWeek_title'] = $this->language->get('lastWeek_title');
		$this->data['month_title'] = $this->language->get('month_title');
		$this->data['year_title'] = $this->language->get('year_title');
		$this->data['allday_title'] = $this->language->get('allday_title');
		$this->data['online_title'] = $this->language->get('online_title');
		$this->data['ip_title'] = $this->language->get('ip_title');
		$this->data['server_time_title'] = $this->language->get('server_time_title');

		$this->data['text_background_color'] = $this->config->get('text_background_color');
		$this->data['text_ip'] = $this->config->get('text_ip');
		$this->data['text_server_time'] = $this->config->get('text_server_time');

		$this->load->model('module/visitor_counter');

		$results = $this->model_module_visitor_counter->addVisitor($setting);
		foreach ($results as $key => $value) {
			$this->data[$key] = $results[$key];
		}

		$num_visitors = $results["total_visitor"];

		$filler_text = "00000000";
		if (strlen("$num_visitors") < 8) {
			$num_visitors = substr($filler_text, 0, (8-strlen("$num_visitors"))) . "$num_visitors";
		}

		$this->data['visitor_counter_num'] = "$num_visitors";

        $path = "catalog/view/theme/default/image/counter/";
        $ext = ".png";
        $str = $this->data['visitor_counter_num'];
        for ( $i = 0; $i <= 9; $i++ ){
	       $str = str_replace($i, "<img src='$path$i$ext' alt='$i'>", $str);
        }
		$this->data['visitor_counter_num'] = $str;
		$this->data['image_path'] = $path;


		$this->id = 'visitor_counter';


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/visitor_counter.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/visitor_counter.tpl';
		} else {
			$this->template = 'default/template/module/visitor_counter.tpl';
		}

		$this->render();
	}
}
?>
