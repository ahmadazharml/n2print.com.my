<?php

class Item extends Controller{

	function __construct(){
		parent::__construct();

	}

	public function index($id){		
		$this->view->itemsView = $this->model->userSingleList($id);	
		$this->view->itemRender('item/content');
	}

	public function item($id){			
		$this->view->itemsView = $this->model->userSingleList($id);	
		$this->view->itemRender('item/content');		

	}
}