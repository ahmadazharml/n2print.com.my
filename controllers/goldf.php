<?php

class Goldf extends Controller{

	function __construct(){
		parent::__construct();
	}

	public function index(){
		$this->view->defaultRender('contents/goldf');
	}
}