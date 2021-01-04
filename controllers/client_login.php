<?php

class Client_Login extends Controller {

	function __construct(){
		parent::__construct();
	}

	public function index(){
		$this->view->accRender2('contents/login');
	}
	
	function client_run(){
		$this->model->client_run();
	}

	function logout(){
		Session::init();
		Session::destroy();
		header('location: ../client_login');
		exit;
	}
}