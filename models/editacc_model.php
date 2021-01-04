<?php

class Editacc_Model extends Model {

    function __construct() {
        parent::__construct();
    }
    
    public function customerSingleList($id)
    {
	$sth = $this->db->prepare('SELECT * FROM customers WHERE id = :id');

		$sth->execute(array(':id' => $id));

		return $sth->fetch();		
    }
    
    public function editSave($data)
    {
		$postData = array(
			'fname' => $data['fname'],
			'lname' => $data['lname'],
			'email' => $data['email'],
			'phone' => $data['phone'],
			'fax' => $data['fax']
		);

		Session::init();	

		Session::set('fname', $_POST['fname']);		

		Session::set('lname', $_POST['lname']);
		
		$this->db->update('customers', $postData, "`id` = {$data['id']}");
	}


}