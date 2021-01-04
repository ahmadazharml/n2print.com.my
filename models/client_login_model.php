<?php



class Client_Login_Model extends Model{



	public function __construct(){

		parent::__construct();

	}



	public function client_run(){

		$sth = $this->db->prepare("SELECT * FROM customers WHERE 

				email = :email AND password = :password");

		$sth->execute(array(

			':email' => $_POST['email'],

			':password' => md5($_POST['password'])

		));

		

		$data = $sth->fetch();

		$id = $data['id'];

		$count =  $sth->rowCount();

		if ($count > 0) {	

			// login	

			Session::init();	

			Session::set('id', $data['id']);

			Session::set('fname', $data['fname']);		

			Session::set('lname', $data['lname']);

			Session::set('password', $data['password2']);			

			Session::set('loggedIn', true);

			header('location: ../myacc');

		} else {

			?>

				<script type="text/javascript">

					alert('Email or Password maybe wrong!');

					window.location.href = '../client_login';

				</script>

			<?php

			//header('location: ../client_login');

		}

	}

}