<?php

class Search extends Controller{

	function __construct(){
		parent::__construct();

	}

	function index(){
		$this->view->Results = $this->model->find();
		$this->view->searchRender('search/index');
	}

	function search(){
		$this->model->find();		
	}

}