<?php

class Content_Model extends Model{
	public function __construct(){
		parent::__construct();
		
	}

	public function itemList(){
		$sth = $this->db->prepare('SELECT * FROM items');
		$sth->execute();
		return $sth->fetchAll();
	}

	public function userSingleList($id){
		$sth = $this->db->prepare('SELECT * FROM items WHERE id = :id');
		$sth->execute(array(':id' => $id));
		return $sth->fetch();
	}
	
}