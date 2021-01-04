<?php

class Details_Model extends Model{

	public function __construct(){
		parent::__construct();
	}

	public function editSave($data)
	{
		$postData = array(
			'fname' => $data['fname'],
			'lname' => $data['lname'],
			'email' => $data['email'],
			'password' => md5($data['password']),
			'password2' => $data['password']
		);
		
		$this->db->update('customers', $postData, "`id` = {$data['id']}");
	}

	
}