<?php

class Create extends Controller {

    function __construct() {
        parent::__construct();
            //echo 'create 3';
        }
        
        function index(){
            $this->view->accRender2('contents/create');
        }
        
       	public function create(){
		$data = array();
		$data['fname'] = $_POST['fname'];
		$data['lname'] = $_POST['lname'];
		$data['email'] = $_POST['email'];
        $data['phone'] = $_POST['phone'];
        $data['fax'] = $_POST['fax'];
        $data['company'] = $_POST['company'];
        $data['addr1'] = $_POST['addr1'];
        $data['addr2'] = $_POST['addr2'];
        $data['city'] = $_POST['city'];
        $data['postcode'] = $_POST['postcode'];
        $data['state'] = $_POST['state'];
		$data['password'] = $_POST['password'];
		$data['regtime'] = date('H:i');
		$data['regdate'] = date('d-m-Y');
		$data['regmon'] = date('F');
		$data['regyear'] = date('Y');
		// @TODO: Do your error checking!		
		$this->model->create($data);
		?>
			<script>
				alert('The account was successfully created, we will take you to the login page.');
				window.location.href = '../client_login';
			</script>
		<?php
	}
        

}