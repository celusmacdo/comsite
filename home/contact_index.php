<?php
 	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	} 
	$cat=db_find('category','category_name="联系我们"');
	$cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');


	$cat2=db_find('category','category_name="网站地图"');
	if(isset($_GET['category_id'])){
		$category_id=$_GET['category_id'];
	}
	else{
		$category_id=$cat2['id'];
	}
	$article=db_find('article','category_id="'.$category_id.'"');
	$setup=db_select('setup','*','',1,'type=0','','','ASC');
	
	if(empty($_POST)==false){
		// var_dump($_POST);exit;
		if(strtoupper($_SESSION['vcode'])==strtoupper($_POST['vcode'])){
			unset($_POST['vcode']);
			$_POST['msg_time']=time();
			// var_dump($_POST);exit;
			// echo '<script>alert("留言成功");history.back()</script>';
			db_add('msg','0');
		}else{
			echo '2';
			// echo '<script>alert("请看清楚验证码");history.back()</script>';
		}	
	}else{
		include('templates/header.html');
		include('templates/contact_index.html');
		include('templates/footer.html');
	}