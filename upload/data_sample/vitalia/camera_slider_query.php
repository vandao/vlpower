<?php 

$query = $this->db->query("
	DROP TABLE IF EXISTS `".DB_PREFIX ."camera_slider`
");

$query = $this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."camera_slider` (
			`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
			`name` text,
			`settings` text,
			`content` text,
			PRIMARY KEY (`id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1
");

$query = $this->db->query("
		INSERT INTO `".DB_PREFIX."camera_slider` (`id`, `name`, `settings`, `content`) VALUES
		(1, 'New slider', 'a:3:{s:13:\"slider_height\";s:3:\"465\";s:12:\"slider_width\";s:4:\"1122\";s:11:\"layout_type\";s:1:\"1\";}', 'a:2:{i:1;a:2:{i:10;a:3:{s:6:\"status\";s:1:\"0\";s:6:\"slider\";s:0:\"\";s:4:\"link\";s:0:\"\";}i:1;a:3:{s:6:\"status\";s:1:\"1\";s:6:\"slider\";s:18:\"data/slider-01.png\";s:4:\"link\";s:0:\"\";}}i:2;a:2:{i:10;a:3:{s:6:\"status\";s:1:\"0\";s:6:\"slider\";s:0:\"\";s:4:\"link\";s:0:\"\";}i:1;a:3:{s:6:\"status\";s:1:\"1\";s:6:\"slider\";s:18:\"data/slider-02.png\";s:4:\"link\";s:0:\"\";}}}')
");

?>