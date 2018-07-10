<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='用户';
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
// var_dump($_SESSION);exit;
$group=db_select('group','*','','','group_name!="超级管理员"');
// var_dump($group);exit;
if(empty($_POST)==false){
	$username=db_find('adminuser','username="'.$_POST['username'].'"');
	if(!empty($username)){
		echo '<script>alert("用户名重复");history.back();</script>';
		exit;
	}
	if(!empty($_POST['password'])){
		$_POST['password']=md5($_POST['password']);
	}
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			$_POST['admin_portrait']=Uploadfile($v);
		}
	}
	if(empty($_POST['login_time'])){
		$_POST['login_time']=time();
	}
	else{
		$_POST['login_time']=strtotime($_POST['login_time']);	
	}
	db_add('adminuser');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/adminuser_add.html');
    include('templates/footer.html');
}
?>