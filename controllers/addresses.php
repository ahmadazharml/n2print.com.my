<?php

class Addresses extends Controller{

	function __construct(){
		parent::__construct();
		Session::init();
		$logged = Session::get('loggedIn');
		if ($logged == false) {
			Session::destroy();
			header('location: ' . URL .  'client_login');
			exit;
		}  
	}

	public function index(){

		//$this->view->addrView = $this->model->addrList();
		$this->view->accRender('contents/addresses');
	}

	public function newAddr(){
		$data = array();
		$data['customerid'] = $_POST['customerid'];
		$data['fname'] = $_POST['fname'];
		$data['lname'] = $_POST['lname'];
		$data['company'] = $_POST['company'];
		$data['addr1'] = $_POST['addr1'];
		$data['addr2'] = $_POST['addr2'];
		$data['city'] = $_POST['city'];
		$data['country'] = $_POST['country'];
		$data['province'] = $_POST['province'];
		$data['postzip'] = $_POST['postzip'];
		$data['phone'] = $_POST['phone'];
		$data['default'] = $_POST['default'];
		// @TODO: Do your error checking!		
		$this->model->createAddr($data);

			Session::set('addrid', $data['id']);

            Session::set('fname2', $data['fname']);		

			Session::set('lname2', $data['lname']);

			Session::set('company', $data['company']);

            Session::set('addr1', $data['addr1']);		

			Session::set('addr2', $data['addr2']);

			Session::set('city', $data['city']);

            Session::set('province', $data['province']);		

			Session::set('country', $data['country']);

			Session::set('postzip', $data['postzip']);

            Session::set('phone', $data['phone']);		

			Session::set('default1', $data['default1']);

			Session::set('addrnum', 1);

		?>
			<script>
				alert('The account was successfully created, we will take you to the main page.');
				window.location.href = '../myacc';
			</script>
		<?php
	}

	public function editSave($id)
	{
		$data = array();
		$data['id'] = $id;
		$data['fname'] = $_POST['fname'];
		$data['lname'] = $_POST['lname'];
		$data['company'] = $_POST['company'];
		$data['addr1'] = $_POST['addr1'];
		$data['addr2'] = $_POST['addr2'];
		$data['city'] = $_POST['city'];
		$data['country'] = $_POST['country'];
		$data['province'] = $_POST['province'];
		$data['postzip'] = $_POST['postzip'];
		$data['phone'] = $_POST['phone'];
		$data['default1'] = $_POST['default1'];

		// @TODO: Do your error checking!
		
		$this->model->editSave($data);

		Session::set('addrid', $data['id']);

        Session::set('fname2', $data['fname']);		

		Session::set('lname2', $data['lname']);

		Session::set('company', $data['company']);

        Session::set('addr1', $data['addr1']);		

		Session::set('addr2', $data['addr2']);

		Session::set('city', $data['city']);

        Session::set('province', $data['province']);		

		Session::set('country', $data['country']);

		Session::set('postzip', $data['postzip']);

        Session::set('phone', $data['phone']);		

		Session::set('default1', $data['default1']);

		Session::set('addrnum', 1);
		
		$this->model->editSave($data);
		
		?>
			<script>
				alert('Your account is updated, we will take you to the account page.');
				window.location.href = '../../myacc';
			</script>
		<?php		
	}

	public function delete($id)
	{
		$this->model->delete($id);

		Session::delete('addrid');

        Session::delete('fname2');		

		Session::delete('lname2');

		Session::delete('company');

       	Session::delete('addr1');		

		Session::delete('addr2');

		Session::delete('city');

        Session::delete('province');		

		Session::delete('country');

		Session::delete('postzip');

        Session::delete('phone');		

		Session::delete('default1');

		Session::delete('addrnum');

		?>
			<script>
				alert('Your addresses is deleted, we will take you to the account page.');
				window.location.href = '../../myacc';
			</script>
		<?php
	}
}