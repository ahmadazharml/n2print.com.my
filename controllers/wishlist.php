<?php

class Wishlist extends Controller{

	function __construct(){
		parent::__construct();		
		Session::init();
		$logged = Session::get('loggedIn');
		if ($logged == false) {
			Session::destroy();
			header('location: client_login');
			exit;
		}
	}

	public function index(){
		$this->view->defaultRender('contents/wishlist');
	}
}