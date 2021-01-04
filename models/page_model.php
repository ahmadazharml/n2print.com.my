<?php

class Page_Model extends Model{

	function __construct(){
		parent::__construct();
	}

	public function pageList($page_name){
		$sth = $this->db->prepare('SELECT * FROM pages WHERE page_name = :page_name');
		$sth->execute(array(':page_name' => $page_name));
		return $sth->fetch();
	}
}