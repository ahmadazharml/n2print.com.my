<?php

class Orders extends Controller{

	public function __construct(){
		parent::__construct();
		Session::init();
		$logged = Session::get('loggedIn');
		if ($logged == false) {
			Session::destroy();
			header('location: ' . URL .  'admin_login');
			exit;
		}
	}

	public function index(){
		$this->view->adminRender('admin/orders');
	}
}