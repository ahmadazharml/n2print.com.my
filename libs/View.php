<?php

class View {

	function __construct() {
		//echo 'this is the view';
	}

	public function normRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/head.phtml';
            require 'views/headers/header.phtml';
            require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}

	public function defaultRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/head.phtml';
            require 'views/headers/header.phtml';
            require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}

	public function accRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/acc_head.phtml';
            require 'views/headers/acc_header.phtml';
            require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}

	public function accRender2($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/acc_head2.phtml';
            require 'views/headers/acc_header2.phtml';
            require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}
        
	public function cartRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/checkout_head.phtml';
                        require 'views/headers/checkout_header.phtml';
                        require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}

	public function adminRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/admin_head.phtml';
            require 'views/headers/admin_header.phtml';            
			require 'views/' . $name . '.phtml';
			require 'views/footers/admin_footer.phtml';	
                     }
	}



		public function mainRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/head.phtml';
            require 'views/headers/header.phtml';
            require 'views/navs/main_nav.phtml';
            require 'views/sliders/slider.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/footer.phtml';	
                     }
	}

		public function searchRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/search/head.phtml';
            require 'views/search/header.phtml';
            require 'views/search/nav.phtml';
            //require 'views/search/slider.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/search/footer.phtml';	
                     }
	}

	public function itemRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/item/head.phtml';
            require 'views/item/header.phtml';
            require 'views/item/nav.phtml';
            //require 'views/search/slider.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/item/footer.phtml';	
                     }
	}

	
	public function modalRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/main/modal_head.phtml';
            require 'views/main/modal_header.phtml';
            require 'views/main/nav.phtml';
            require 'views/main/slider.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/main/modal_footer.phtml';	
                     }
	}	

	public function adminLoginRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
			require 'views/heads/login_head.phtml';            
			require 'views/' . $name . '.phtml';
			require 'views/footers/login_footer.phtml';	
                     }
	}
        
        public function libsRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {
            require 'views/headers/connection.phtml';
            require 'views/headers/library_head.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/lib_footer.phtml';	
                     }
	}
        
        public function startRender($name, $noInclude = false)
	{
		if ($noInclude == true) {
			require 'views/' . $name . '.php';	
		}
		else {                        
                        require 'views/' . $name . '.phtml';	
                     }
	}
        
		public function ePrintRender($name, $noInclude = false)
		{
			if ($noInclude == true) {
			require 'views/eprint/' . $name . '.php';	
		}
		else {
            require 'views/eprint/head.phtml';
            require 'views/eprint/header.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/eprint/footer.phtml';	
                     }
		}

		public function stickerRender($name, $noInclude = false)
		{
			if ($noInclude == true) {
			require 'views/n2print/' . $name . '.php';	
		}
		else {
            require 'views/sticker/head.phtml';
            require 'views/sticker/header.phtml';
            require 'views/sticker/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/sticker/footer.phtml';
				
                     }
		}

		public function itemsRender($name, $noInclude = false)
		{
			if ($noInclude == true) {			
			require 'views/' . $name . '.phtml';			
		}
		else {
            require 'views/n2print/head.phtml';
            require 'views/n2print/items_header.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/n2print/footer.phtml';	
                     }
		}

		public function pageRender($name, $noInclude = false)
		{
			if ($noInclude == true) {			
			require 'views/' . $name . '.phtml';				
		}
		else {
            require 'views/n2print/page_head.phtml';
            require 'views/n2print/page_header.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/n2print/page_footer.phtml';	
                     }
		}

		public function inkjetRender($name, $noInclude = false)
		{
			if ($noInclude == true) {			
			require 'views/' . $name . '.phtml';				
		}
		else {
            require 'views/heads/inkjet_head.phtml';
            require 'views/headers/header.phtml';
            require 'views/navs/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/footers/inkjet_footer.phtml';	
                     }
		}

		public function bannerRender($name, $noInclude = false)
		{
			if ($noInclude == true) {			
			require 'views/' . $name . '.phtml';				
		}
		else {
            require 'views/banner/head.phtml';
            require 'views/banner/header.phtml';
            require 'views/banner/nav.phtml';
			require 'views/' . $name . '.phtml';
			require 'views/banner/footer.phtml';	
                     }
		}


}