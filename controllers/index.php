<?php

class Index extends Controller {

	function __construct() {
		parent::__construct();		
	}
	
	public function index() {
		$this->view->itemName = $this->model->itemList();
		$this->view->mainRender('contents/main');

		//echo __FUNCTION__;

		//echo __CLASS__;		
	}
	
	function details() {
		$this->view->itemsRender('main/items');
	}

	public function items($id){
		$this->view->itemsView = $this->model->userSingleList($id);		
		$this->view->itemsRender('main/items');		
	}

	public function search(){
		$this->model->find();
	}

	public function item($id){			
		$this->view->itemsView = $this->model->userSingleList($id);	
		$this->view->itemRender('item/content');		

	}
	
}