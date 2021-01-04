<?php



class Create_Model extends Model{



	public function construct(){

		parent::__construct();

	}



	public function create($data){

		$this->db->insert('customers', array(

			'fname' => $data['fname'],

			'lname' => $data['lname'],

			'email' => $data['email'],
                    
                        'phone' => $data['phone'],
                    
                        'fax' => $data['fax'],
                    
                        'company' => $data['company'],
                    
                        'addr1' => $data['addr1'],
                    
                        'addr2' => $data['addr2'],
                    
                        'city' => $data['city'],
                    
                        'postcode' => $data['postcode'],
                    
                        'state' => $data['state'],

			'password' => md5($data['password']),

			'password2' => $data['password'],

			'regtime' => $data['regtime'],

			'regdate' => $data['regdate'],

			'regmon' => $data['regmon'],

			'regyear' => $data['regyear']

		));

	}

}