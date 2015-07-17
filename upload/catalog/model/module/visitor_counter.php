<?php

class ModelModuleVisitorCounter extends Model {
	
	public function addVisitor($setting) {

	    $table = DB_PREFIX . "visitor_counter";
	    $time_now = time();
	    $time_out = $setting["text_time_new_counter"];
	    $ip_address = determineIP(); 
	    // $ip_address = "192.168.0.1";

	    $res = array();

		$current_day = date('z')+1;
		$current_week = date('W');
		$current_month = date('n');
		$current_year = date('Y');

		if ($this->db->query("SELECT `ip_address` FROM $table WHERE `ip_address` = '$ip_address'")->num_rows) {
			if (!$this->db->query("SELECT `ip_address` FROM $table WHERE UNIX_TIMESTAMP(`last_visit`) + $time_out > $time_now AND `ip_address` = '$ip_address'")->num_rows) {
				$query = $this->db->query("SELECT DAYOFYEAR(`last_visit`) as day, WEEKOFYEAR(  `last_visit` ) as week, MONTH(`last_visit`) as month, YEAR(`last_visit`) as year
									  FROM  $table
									  WHERE  ip_address=  '$ip_address'");

				$db_day = $query->row["day"];
				$db_week = $query->row["week"];
				$db_month = $query->row["month"];
				$db_year = $query->row["month"];

				$query_counter = $this->db->query("SELECT today_visit, yesterday_visit, week_visit, last_week_visit, month_visit, year_visit FROM $table WHERE  ip_address=  '$ip_address'");

				$today_update = $query_counter->row["today_visit"];
				$yesterday_update = $query_counter->row["yesterday_visit"];
				$week_update = $query_counter->row["week_visit"];
				$last_week_update = $query_counter->row["last_week_visit"];
				$month_update = $query_counter->row["month_visit"];
				$year_update = $query_counter->row["year_visit"];

				switch ($current_day - $db_day) {
					case 0:
					$today_update++;
					break;
					case 1:
					$yesterday_update = $today_update;
					$today_update = 1;
					break;
					default:
					$yesterday_update = 0;
					$today_update = 1;
					break;
				}

				switch ($current_week - $db_week) {
					case 0:
					$week_update++;
					break;
					case 1:
					$last_week_update = $week_update;
					$week_update = 1;
					break;
					default:
					$last_week_update = 0;
					$week_update = 1;
					break;
				}

				if($current_month - $db_month != 0) {
					$month_update = 1;
				} else {
					$month_update++;
				}
				if($current_year - $db_year != 0) {
					$year_update = 1;
					$month_update = 1;
					$last_week_update = 0;
					$week_update = 1;
				} else {
					$year_update++;
				}

				$this->db->query("UPDATE $table SET last_visit = NOW(), today_visit = ".$today_update.", yesterday_visit = ".$yesterday_update.", week_visit = ".$week_update.", last_week_visit = ".$last_week_update.", month_visit = ".$month_update.", year_visit = ".$year_update.", total_visit = total_visit + 1  WHERE ip_address=  '$ip_address' ;");
			}
		} else {
			$this->db->query("INSERT INTO $table (ip_address, last_visit, today_visit, yesterday_visit, week_visit, last_week_visit, month_visit, year_visit, total_visit) VALUES ('$ip_address', NOW(), 1, 0, 1, 0, 1, 1, 1)");
		}

    	$res["online_visitor"] = $this->db->query("SELECT `ip_address` FROM $table WHERE UNIX_TIMESTAMP(`last_visit`) + $time_out > $time_now")->num_rows;

    	$day_query = $this->db->query("SELECT SUM(`today_visit`) AS day FROM $table WHERE DAYOFYEAR(`last_visit`) = '$current_day' AND YEAR(`last_visit`) = '$current_year'");
    	$res["today_visitor"] = $day_query->row["day"];

    	$yesterday_query1 = $this->db->query("SELECT SUM(`today_visit`) AS today FROM $table WHERE DAYOFYEAR(`last_visit`) = ".($current_day-1)." AND YEAR(`last_visit`) = '$current_year'");
		$yesterday_query2 = $this->db->query("SELECT SUM(`yesterday_visit`) AS yesterday FROM $table WHERE DAYOFYEAR(`last_visit`) = ".$current_day." AND YEAR(`last_visit`) = '$current_year'");
    	$res["yesterday_visitor"] = $yesterday_query1->row["today"] + $yesterday_query2->row["yesterday"];

    	$week_query = $this->db->query("SELECT SUM(`week_visit`) AS week FROM $table WHERE WEEKOFYEAR(`last_visit`) = ".$current_week." AND YEAR(`last_visit`) = '$current_year'");
		$res["week_visitor"] = $week_query->row["week"];

    	$lastweek_query1 = $this->db->query("SELECT SUM(`week_visit`) AS week FROM $table WHERE WEEKOFYEAR(`last_visit`) = ".($current_week-1)." AND YEAR(`last_visit`) = '$current_year'");
		$lastweek_query2 = $this->db->query("SELECT SUM(`last_week_visit`) AS last_week FROM $table WHERE WEEKOFYEAR(`last_visit`) = ".$current_week." AND YEAR(`last_visit`) = '$current_year'");
		$res["lastweek_visitor"] = $lastweek_query1->row["week"] + $lastweek_query2->row["last_week"] ;

    	$month_query = $this->db->query("SELECT SUM(`month_visit`) AS month FROM $table WHERE MONTH(`last_visit`) = ".($current_month)." AND YEAR(`last_visit`) = '$current_year'");
		$res["month_visitor"] = $month_query->row["month"];

    	$year_query = $this->db->query("SELECT SUM(`year_visit`) AS year FROM $table WHERE YEAR(`last_visit`) = ".($current_year)."");
		$res["year_visitor"]= $year_query->row["year"];

    	$visit_query = $this->db->query("SELECT SUM(`total_visit`) AS total FROM $table");
		$res["total_visitor"] = $visit_query->row["total"];

    	//-----------------
    	$res["ip_visitor"] = $ip_address;

    	$time = getdate();
    	$date = $time['mday'];
    	$month = $time['mon'];
    	$year = $time['year'];
    	$current_date = "$date-$month-$year";

    	$res["server_time"] = $current_date;

    	return $res;
	}
}

/* By Grant Burton @ BURTONTECH.COM (11-30-2008): IP-Proxy-Cluster Fix */
function checkIP($ip) {
   if (!empty($ip) && ip2long($ip)!=-1 && ip2long($ip)!=false) {
       $private_ips = array (
       array('0.0.0.0','2.255.255.255'),
       array('10.0.0.0','10.255.255.255'),
       array('127.0.0.0','127.255.255.255'),
       array('169.254.0.0','169.254.255.255'),
       array('172.16.0.0','172.31.255.255'),
       array('192.0.2.0','192.0.2.255'),
       array('192.168.0.0','192.168.255.255'),
       array('255.255.255.0','255.255.255.255')
       );

       foreach ($private_ips as $r) {
           $min = ip2long($r[0]);
           $max = ip2long($r[1]);
           if ((ip2long($ip) >= $min) && (ip2long($ip) <= $max)) return false;
       }
       return true;
   } else {
       return false;
   }
}

function determineIP() {

   if (isset($_SERVER["HTTP_CLIENT_IP"])) {
     if (checkIP($_SERVER["HTTP_CLIENT_IP"])) {
       return $_SERVER["HTTP_CLIENT_IP"];
     }
   }

   if (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
     foreach (explode(",",$_SERVER["HTTP_X_FORWARDED_FOR"]) as $ip) {
         if (checkIP(trim($ip))) {
             return $ip;
         }
     }
   }

   if (isset($_SERVER["HTTP_X_FORWARDED"])) {
     if (checkIP($_SERVER["HTTP_X_FORWARDED"])) {
       return $_SERVER["HTTP_X_FORWARDED"];
     }
   }

   if (isset($_SERVER["HTTP_X_CLUSTER_CLIENT_IP"])) {
     if (checkIP($_SERVER["HTTP_X_CLUSTER_CLIENT_IP"])) {
       return $_SERVER["HTTP_X_CLUSTER_CLIENT_IP"];
     }
   }

   if (isset($_SERVER["HTTP_FORWARDED_FOR"])) {
     if (checkIP($_SERVER["HTTP_FORWARDED_FOR"])) {
       return $_SERVER["HTTP_FORWARDED_FOR"];
     }
   }

   if (isset($_SERVER["HTTP_FORWARDED"])) {
     if (checkIP($_SERVER["HTTP_FORWARDED"])) {
       return $_SERVER["HTTP_FORWARDED"];
     }
   }

   return $_SERVER["REMOTE_ADDR"];
}

?>
