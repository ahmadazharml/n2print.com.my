<?php

class Mirrorkote extends Controller{
	
	function __construct(){
		parent::__construct();
	}
	
	public function index(){
		$this->view->defaultRender('contents/mirrorkote');
	}
}