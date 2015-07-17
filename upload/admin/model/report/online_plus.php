<?php
class ModelReportOnlinePlus extends Model {
	public function getCustomersOnline($data = array()) { 
		$sql = "SELECT s.ip_address, s.customer_id, s.country_name, s.categories_viewed, s.added_cart, s.completed_purchase, s.browser_string, s.referer, s.referer_query_string, s.time_arrived, s.exit_page, s.num_clicks, s.landing_page, s.cart_contents, s.cart_total, s.products_viewed, s.last_click, s.routes, s.search_term FROM " . DB_PREFIX . "online_plus s LEFT JOIN " . DB_PREFIX . "customer c ON (s.customer_id = c.customer_id)";
		$implode = array();
				
		if (isset($data['filter_ip']) && !is_null($data['filter_ip'])) {
			$implode[] = "s.ip_address LIKE '" . $this->db->escape($data['filter_ip']) . "'";
		}
		
		if (isset($data['filter_customer']) && !is_null($data['filter_customer'])) {
			$implode[] = "s.customer_id > 0 AND CONCAT(c.firstname, ' ', c.lastname) LIKE '" . $this->db->escape($data['filter_customer']) . "'";
		}
				
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
				
		$sql .= " ORDER BY s.last_click DESC";
				
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			
			
			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
			
		$query = $this->db->query($sql);
	
		return $query->rows;
	}

	public function getTotalCustomersOnline($data = array()) {
		$sql = "SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "online_plus` s LEFT JOIN " . DB_PREFIX . "customer c ON (s.customer_id = c.customer_id)";
		
		$implode = array();
		
		if (isset($data['filter_ip']) && !is_null($data['filter_ip'])) {
			$implode[] = "s.ip_address LIKE '" . $this->db->escape($data['filter_ip']) . "'";
		}
		
		if (isset($data['filter_customer']) && !is_null($data['filter_customer'])) {
			$implode[] = "s.customer_id > 0 AND CONCAT(c.firstname, ' ', c.lastname) LIKE '" . $this->db->escape($data['filter_customer']) . "'";
		}
		
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
				
		$query = $this->db->query($sql);

		return $query->row['total'];
	}
	
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}
	
}
?>