<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='导航';
$cid=db_select('nav','*','','','','','','ASC');
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
if(empty($_POST)==false){
	db_add('nav');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/nav_add.html');
    include('templates/footer.html');
}
?>