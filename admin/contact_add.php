<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='留言';
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
if(empty($_POST)==false){
	db_add('msg');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/contact_add.html');
    include('templates/footer.html');
}
?>