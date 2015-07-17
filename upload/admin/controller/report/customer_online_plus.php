<?php  
class ControllerReportCustomerOnlinePlus extends Controller {  
  	public function index() {

		if (version_compare(VERSION, '1.5.5', '=') == true) {
			$this->language->load('report/customer_online_plus');
		} else {		
			$this->load->language('report/customer_online_plus');
		}
		
    	$this->document->setTitle($this->language->get('heading_title'));
		
		if (isset($this->request->get['filter_ip'])) {
			$filter_ip = $this->request->get['filter_ip'];
		} else {
			$filter_ip = NULL;
		}
		
		if (isset($this->request->get['filter_customer'])) {
			$filter_customer = $this->request->get['filter_customer'];
		} else {
			$filter_customer = NULL;
		}
						
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
																		
		$url = '';
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode($this->request->get['filter_customer']);
		}
		
		if (isset($this->request->get['filter_ip'])) {
			$url .= '&filter_ip=' . $this->request->get['filter_ip'];
		}
						
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
						
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
       		'text'      => $this->language->get('text_home'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'href'      => $this->url->link('report/customer_online_plus', 'token=' . $this->session->data['token'] . $url, 'SSL'),
       		'text'      => $this->language->get('heading_title'),
      		'separator' => ' :: '
   		);
		
		$this->load->model('report/online_plus');
    	$this->load->model('sale/customer');
		
		$this->data['customers'] = array();

		$data = array(
			'filter_ip'       => $filter_ip, 
			'filter_customer' => $filter_customer, 
			'start'           => ($page - 1) * 20,
			'limit'           => 20
		);
		
		$customer_total = $this->model_report_online_plus->getTotalCustomersOnline($data);
		
		$results = $this->model_report_online_plus->getCustomersOnline($data);
    	
		foreach ($results as $result) {
			$action = array();
			
			if ($result['customer_id']) {
				$action[] = array(
					'text' => 'Edit',
					'href' => $this->url->link('sale/customer/update', 'token=' . $this->session->data['token'] . '&customer_id=' . $result['customer_id'], 'SSL')
				);
			}
			
			$cart_prods  = explode ('*', $result['cart_contents']);
			$viewed_prods = explode ('*', $result['products_viewed']);
			$routes_viewed = explode ('*', $result['routes']);
			$search_terms = explode ('*', $result['search_term']);
			$viewed_cats = unserialize($result['categories_viewed']);
			$searches = array();
			$prod_names = array();
			$product_viewed = array();
			$cats_viewed = array();
			$routes = array();
			$this->load->model('catalog/product');
			
			if ($search_terms) {
				foreach ($search_terms as $search_term) {
					if ($search_term) {
						$searches[] = array (
							'searches' => rtrim($search_term, '?')
						);
					}
				}
			}
			
			if ($routes_viewed) {
				foreach ($routes_viewed as $route_viewed) {
					if ($route_viewed) {
						$routes[] = array (
							'routes' => rtrim($route_viewed, '?')
						);
					}
				}
			}
		
			if ($viewed_cats) {
				foreach ($viewed_cats as $viewed_cat) {
					if ($viewed_cat) {
					  $category_info = $this->model_report_online_plus->getCategory($viewed_cat);
					  	if ($category_info) {
					  		$cats_viewed[] = array (
							'category_name' => $category_info['name']
						);
					}
				}
			}
			}

			if ($cart_prods) {
				foreach ($cart_prods as $cart_prod) {
					if ($cart_prod) {
					  $product_info = $this->model_catalog_product->getProduct(rtrim($cart_prod, '?'));
					    if ($product_info) {
					  $prod_names[] = array (
						'product_name' => $product_info['name']
					  );
					}
				}
			}	
			}	
		
			if ($viewed_prods) {
				foreach ($viewed_prods as $viewed_prod) {
					if ($viewed_prod) {
					  $product_viewed_info = $this->model_catalog_product->getProduct(rtrim($viewed_prod, '?'));
					    if ($product_viewed_info) {
					  $product_viewed[] = array (
						'product_viewed' => $product_viewed_info['name']
					  );
					}
				}
			}
			}
						
			$customer_info = $this->model_sale_customer->getCustomer($result['customer_id']);
					
			if ($customer_info) {
				$customer = $customer_info['firstname'] . ' ' . $customer_info['lastname'];
			} else {
				$customer = $this->language->get('text_guest');
			}
								
      		$this->data['customers'][] = array(
				'ip'         	=> $result['ip_address'],
				'customer'   	=> $customer,
				'country'		=> $result['country_name'],
				'referer'    	=> $result['referer'] . urldecode($result['referer_query_string']),
				'time_arrived' 	=> date('d/m/Y H:i:s', strtotime($result['time_arrived'])),
				'last_click' 	=> date('d/m/Y H:i:s', strtotime($result['last_click'])),
				'last_page'    	=> $result['exit_page'],
				'num_clicks'    => $result['num_clicks'],
				'landing_page'  => $result['landing_page'],
				'cart_contents' => $prod_names,
				'cart_total'	=> $this->currency->format($result['cart_total']),
				'viewed'    	=> $product_viewed,
				'cats_viewed'  	=> $cats_viewed,
				'checkout'		=> $result['completed_purchase'],
				'browser'		=> $result['browser_string'],
				'routes'		=> $routes,
				'searches'		=> $searches,
				'action'     	=> $action
			);
		}

 		$this->data['heading_title'] = $this->language->get('heading_title');
		 
		$this->data['text_no_results'] = $this->language->get('text_no_results');
		
		$this->data['column_ip'] = $this->language->get('column_ip');
		$this->data['column_customer'] = $this->language->get('column_customer');
		$this->data['column_referer'] = $this->language->get('column_referer');
		$this->data['column_time_arrived'] = $this->language->get('column_time_arrived');
		$this->data['column_last_click'] = $this->language->get('column_last_click');
		$this->data['column_last_page'] = $this->language->get('column_last_page');
		$this->data['column_landing_page'] = $this->language->get('column_landing_page');
		$this->data['column_num_clicks'] = $this->language->get('column_num_clicks');
		$this->data['column_cart_contents'] = $this->language->get('column_cart_contents');
		$this->data['column_cart_total'] = $this->language->get('column_cart_total');
		$this->data['column_products_viewed'] = $this->language->get('column_products_viewed');
		$this->data['column_tracking_info'] = $this->language->get('column_tracking_info');
		$this->data['column_country_name'] = $this->language->get('column_country_name');
		$this->data['column_cats_viewed'] = $this->language->get('column_cats_viewed');
		$this->data['column_checkout'] = $this->language->get('column_checkout');
		$this->data['column_browser'] = $this->language->get('column_browser');
		$this->data['column_action'] = $this->language->get('column_action');
		$this->data['column_routes'] = $this->language->get('column_routes');
		$this->data['column_searches'] = $this->language->get('column_searches');
		
		$this->data['button_filter'] = $this->language->get('button_filter');
				
		$this->data['token'] = $this->session->data['token'];
		
		$url = '';
		
		if (isset($this->request->get['filter_customer'])) {
			$url .= '&filter_customer=' . urlencode($this->request->get['filter_customer']);
		}
		
		if (isset($this->request->get['filter_ip'])) {
			$url .= '&filter_ip=' . $this->request->get['filter_ip'];
		}
				
		$pagination = new Pagination();
		$pagination->total = $customer_total;
		$pagination->page = $page;
		$pagination->limit = 20; 
		$pagination->url = $this->url->link('report/customer_online_plus', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');
			
		$this->data['pagination'] = $pagination->render();
		
		$this->data['filter_customer'] = $filter_customer;
		$this->data['filter_ip'] = $filter_ip;		
				
		$this->template = 'report/customer_online_plus.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render());
  	}
}
?>