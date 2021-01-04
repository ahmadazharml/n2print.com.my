<?php

class Index_Model extends Model{

	function __construct(){
		parent::__construct();				
	}

	public function itemList(){
		$sth = $this->db->prepare('SELECT * FROM items ORDER BY id DESC LIMIT 0, 12');
		$sth->execute();
		return $sth->fetchAll();
	}

	public function userSingleList($id){
		$sth = $this->db->prepare('SELECT * FROM items WHERE id = :id');
		$sth->execute(array(':id' => $id));
		return $sth->fetch();
	}
}