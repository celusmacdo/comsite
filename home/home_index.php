<?php
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$about=db_find('article','`id`=1');
	$product=db_select('product','*','',2,'',3);
	$news=db_select('news','*','',2,'',3);
	$article=db_find('article','`category_id`=3');
	// var_dump($article);exit;
	if(empty($_POST)==false){
		// var_dump($_POST);exit;
		$article['description']=stripslashes($article['description']);
		if(strtoupper($_SESSION['vcode'])==strtoupper($_POST['vcode'])){
			unset($_POST['vcode']);
			$_POST['msg_time']=time();
			// var_dump($_POST);exit;
			echo '<script>alert("添加成功");history.back()</script>';
			// db_add('msg','0');
		}else{
			echo '2';
			// echo '<script>alert("请看清楚验证码");history.back()</script>';
		}	
	}else{
		include('templates/header.html');
		include('templates/home_index.html');
		include('templates/footer.html');
	}
