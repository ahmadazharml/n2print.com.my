<?php

class Eprint extends Controller{
	
	function __construct(){
		parent::__construct();
	}
	
	function index(){
		$this->view->ePrintRender('eprint/content');
	}
}