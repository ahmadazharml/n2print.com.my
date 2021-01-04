<?php

class Editacc extends Controller {

    function __construct() {
        parent::__construct();
    }

    function index(){
    	$this->view->accRender2('contents/editacc');
    }
	
	public function editacc($id){
	$this->view->customer = $this->model->customerSingleList($id);
	$this->view->accRender2('contents/editacc');
    }
    
    public function editSave($id)
    {
	$data = array();
	$data['id'] = $id;
	$data['fname'] = $_POST['fname'];
	$data['lname'] = $_POST['lname'];
	$data['email'] = $_POST['email'];
	$data['phone'] = $_POST['phone'];
	$data['fax'] = $_POST['fax'];
		// @TODO: Do your error checking!               		
	$this->model->editSave($data);   		
?>
		<script>
			alert('Your account is updated, we will take you to the account page.');
			window.location.href = '../../myacc';
		</script>
<?php		
    }
}