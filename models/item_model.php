<?php

class Item_Model extends Model{
	function __construct(){
		parent::__construct();

	}
	
	public function userSingleList($id){
		$sth = $this->db->prepare('SELECT * FROM items WHERE id = :id');
		$sth->execute(array(':id' => $id));
		return $sth->fetch();
	}

}