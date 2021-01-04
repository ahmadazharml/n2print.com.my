<?php

class Admin extends Controller {
	function __construct() {
		parent::__construct();
		Session::init();
		$logged = Session::get('loggedIn');
		if ($logged == false) {
			Session::destroy();
			header('location: ' . URL . 'admin_login');
			exit;
		}else{
			header('location: ' . URL . 'dashboard');
		}
	}	

	function index() {
		$this->view->adminRender('admin/index');
	}	

	function details() {
		$this->view->render('index/index');
	}	

}