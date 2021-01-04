<?php

class Details extends Controller{
	
	public function __construct(){
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
			$this->view->accRender('contents/details');
	}

	public function editSave($id)
	{
		$data = array();
		$data['id'] = $id;
		$data['fname'] = $_POST['fname'];
		$data['lname'] = $_POST['lname'];
		$data['email'] = $_POST['email'];
		$data['password'] = $_POST['passwordnew'];
		// @TODO: Do your error checking!
		
		$this->model->editSave($data);
		Session::set('password', $data['password']);
		?>
			<script>
				alert('Your account is updated, we will take you to the details page.');
				window.location.href = '../../details';
			</script>
		<?php		
	}

}