<?php

class Checkout_Login extends Controller {

    function __construct() {
        parent::__construct();
    }
    
    public function index(){
	$this->view->accRender2('contents/checkout_login');
    }
	
    function checkout_run(){
	$this->model->checkout_run();
    }

    function logout(){
	Session::init();
	Session::destroy();
	header('location: ../client_login');
	exit;
    }

}