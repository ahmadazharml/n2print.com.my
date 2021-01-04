<?php

class Cart extends Controller {

    function __construct() {
        parent::__construct();
        
    }
    
    public function index(){
	$this->view->accRender2('contents/cart');
    }
    
    public function cart($clientip){
    	$this->view->cartView = $this->model->cartList($clientip);
        $this->view->accRender2('contents/cart');
    }

    function xhrDeleteCart()
	{
		$this->model->xhrDeleteCart();
	}

}