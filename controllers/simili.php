<?php

class Simili extends Controller{

	function __construct(){
		parent::__construct();
	}

	public function index(){
		$this->view->defaultRender('contents/simili');
	}
}