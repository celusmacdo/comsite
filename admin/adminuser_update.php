<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='用户';
/*
1.查询回来
2.表单提交修改
*/

if(empty($_POST)==false){
	if(!empty($_POST['password'])){
		$_POST['password']=md5($_POST['password']);
	}else{
		unset($_POST['password']);
	}
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			if(empty($v['name'])==false){
			$_POST['admin_portrait']=Uploadfile($v);
			}
		}
	}
	if(empty($_POST['login_time'])){
		$_POST['login_time']=time();
	}
	else{
		$_POST['login_time']=strtotime($_POST['login_time']);	
	}
    db_update('adminuser');
	exit;
}
$id=$_GET['id'];
$rs=db_find('adminuser','id='.$id);
// var_dump($group_admin);exit;
$group=db_select('group','*');

include('templates/header.html');
include('templates/adminuser_update.html');
include('templates/footer.html');
?>