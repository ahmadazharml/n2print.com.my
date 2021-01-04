<?php

class Banner extends Controller{

	function __construct(){
		parent::__construct();
	}


	public function index(){
		$this->view->bannerRender('banner/banner');
	}
}