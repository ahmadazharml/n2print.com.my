<?php

class Page extends Controller{

	function __construct(){
		parent::__construct();
	}

	public function index(){
		//
	}

	public function pageName($page_name){
		$this->view->pageView = $this->model->pageList($page_name);
		$this->view->pageRender('n2print/page');
	}
}