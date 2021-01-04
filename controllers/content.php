<?php

class Content extends Controller{

	function __construct() {
		parent::__construct();	
					
	}
	
	public function index() {
		$this->view->itemName = $this->model->itemList();
		$this->view->n2printRender('main/content');		
	}

	public function items($id){
		$this->view->itemsView = $this->model->userSingleList($id);		
		$this->view->modalRender('main/modal');	
	}
}
