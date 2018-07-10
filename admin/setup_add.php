<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='数据';
	if(empty($_POST)==false){
		// var_dump($_POST);exit;
		db_add(C);
	}else{
		include('templates/header.html');
		include('templates/setup_add.html');
		include('templates/footer.html');
	}