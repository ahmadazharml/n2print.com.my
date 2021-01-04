<?php

class Cart_Model extends Model {

    function __construct() {
        parent::__construct();
    }
    
    public function xhrDeleteCart()
    {
	$id = $_POST['id'];
	$sth = $this->db->prepare('DELETE FROM cart WHERE id = "'.$id.'"');
	$sth->execute();
    }   

    public function cartList($clientip){

		$sth = $this->db->prepare('SELECT * FROM cart WHERE clientip = :clientip');

		$sth->execute(array(':clientip' => $clientip));

		return $sth->fetchAll();

	}

}