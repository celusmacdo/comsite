<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$title='数据';
	if(empty($_POST)==false){
		if(empty($_FILES)==false){
			//var_dump($_FILES);exit;
			foreach($_FILES AS $k=>$v){
				//有做图片更新才上传
				if(empty($v['name'])==false){
				$_POST['value']=Uploadfile($v);
				}
			}
		}
		db_update(C);
	}
	$id=$_GET['id'];
	$rs = db_find(C,'id='.$id);
	
	include('templates/header.html');
	include('templates/setup_update.html');
	include('templates/footer.html');
	