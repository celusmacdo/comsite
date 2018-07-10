<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='权限';
	if(empty($_POST)==false){
		//把数组转成json格式，然后就能保存到数据库
        $_POST['group_allow']=addslashes(json_encode($_POST['group_allow']));
		db_update(C);
	}
	$id=$_GET['id'];
	$rs = db_find(C,'id='.$id);
	//先要还原json格式的数据成为数组：先去转义，在还原数组
    $rs['group_allow']=json_decode(stripslashes($rs['group_allow']),true);
	$navshow=db_select('nav','id,nav_name,pid',1,100000000000);
	include('templates/header.html');
	include('templates/group_update.html');
	include('templates/footer.html');
	