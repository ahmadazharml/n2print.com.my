<?php

class Checkout extends Controller {

    function __construct() {
        parent::__construct();

        Session::init();

            $logged = Session::get('loggedIn');
            
                if ($logged == false) {
                    Session::destroy();
                header('location: ' . URL .  'checkout_login');
            exit;
	} 
    }
    
    function index(){            
         $this->view->cartRender('contents/checkout');
    }

}