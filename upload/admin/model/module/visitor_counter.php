<?php

class ModelModuleVisitorCounter extends Model {
	
	public function createVisitorTable() 
	{
		$queryStr = "CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "visitor_counter (
          `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
          `ip_address` varchar(15) NOT NULL,
          `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
          `today_visit` int(10) NOT NULL DEFAULT '0',
          `yesterday_visit` int(10) NOT NULL DEFAULT '0',
          `week_visit` int(10) NOT NULL DEFAULT '0',
          `last_week_visit` int(10) NOT NULL DEFAULT '0',
          `month_visit` int(10) NOT NULL DEFAULT '0',
          `year_visit` int(10) NOT NULL DEFAULT '0',
          `total_visit` int(10) NOT NULL DEFAULT '0',
          PRIMARY KEY (`id`),
          UNIQUE KEY `ip_address` (`ip_address`)
          ) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;";
		$query = $this->db->query($queryStr);
	}

	public function deleteVisitorTable() 
	{
		$query = $this->db->query("DROP TABLE ". DB_PREFIX . "visitor_counter");
	}

}
?>
