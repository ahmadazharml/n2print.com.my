<?php

class User extends Controller {

function __construct() {
		parent::__construct();
		Session::init();
		$logged = Session::get('loggedIn');
		if ($logged == false) {
			Session::destroy();
			header('location: ' . URL .  'admin_login');
			exit;
		}
		
	}
	
	function index() 
	{	
		$this->view->adminRender('admin/user');
	}
	
	function logout()
	{
		Session::destroy();
		header('location: ' . URL .  'admin_login');
		exit;
	}
	
	function xhrInsert()
	{
		$this->model->xhrInsert();
	}
	
	function xhrGetListings()
	{
		$this->model->xhrGetListings();
	}
	
	function xhrDeleteListing()
	{
		$this->model->xhrDeleteListing();
	}
}