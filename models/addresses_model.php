<?php



class Addresses_Model extends Model{



	public function __construct(){

		parent::__construct();

	}


	public function addrList(){
		$id = Session::get('id');
		$sth = $this->db->prepare('SELECT * FROM addresses WHERE customerid = :id');
		$sth->execute(array(':id' => $id));
		return $sth->fetchAll();
	}



	public function createAddr($data){

		$this->db->insert('addresses', array(

			'customerid' => $data['customerid'],

			'fname' => $data['fname'],

			'lname' => $data['lname'],

			'company' => $data['company'],			

			'addr1' => $data['addr1'],

			'addr2' => $data['addr2'],

			'city' => $data['city'],

			'country' => $data['country'],

			'province' => $data['province'],

			'postzip' => $data['postzip'],

			'phone' => $data['phone'],

			'default1' => $data['default']

		));

	}

	public function editSave($data)
	{
		$postData = array(
			'fname' => $data['fname'],
			'lname' => $data['lname'],
			'company' => $data['company'],
			'addr1' => $data['addr1'],
			'addr2' => $data['addr2'],
			'city' => $data['city'],
			'country' => $data['country'],
			'province' => $data['province'],
			'postzip' => $data['postzip'],
			'phone' => $data['phone'],
			'default1' => $data['default1']
		);
		
		$this->db->update('addresses', $postData, "`id` = {$data['id']}");
	}

	public function delete($id)
	{
		$sth = $this->db->prepare('DELETE FROM addresses WHERE id = :id');
		$sth->execute(array(
			':id' => $id
		));
	}

}