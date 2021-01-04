<?php

class Search_Model extends Model{
	
	public function __construct(){
		parent::__construct();
		//echo 'search model';
	}

	public function find(){
		$keywords = $_POST['keywords'];
		//echo $keywords;
		$sth = $this->db->prepare('SELECT * FROM items WHERE id LIKE :keywords OR item_name LIKE :keywords OR description LIKE :keywords OR price LIKE :keywords');
		$sth->execute(array(':keywords' => '%'.$keywords.'%'));
		$result = $sth->fetchAll();
		$count = count($result);
		//echo $count;
		if ($count == 0){
		?>
		<script type="text/javascript">	
		//var keywords = document.getElementsById("keywords").value;	
			alert('Sorry.. This kind of data not exists!');
			 window.location.href = '../';
		</script>
		<?php
		//echo $count;
		}else{
			return $result;	
			header("Location: #tab1");
die();
		}
			 
	}
	
}

