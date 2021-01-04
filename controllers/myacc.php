<?php

class MyAcc extends Controller{

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

	 function index(){
	 	$this->view->accRender2('contents/myacc');
	}                       
}