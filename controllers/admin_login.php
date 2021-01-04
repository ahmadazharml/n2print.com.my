<?php

class Admin_Login extends Controller {

	function __construct() {
		parent::__construct();	
	}
	
	function index() 
	{	
		$this->view->adminLoginRender('admin/admin_login');
	}
	
	function run()
	{
		$this->model->run();
	}
	

}