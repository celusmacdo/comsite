<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='导航';
$cid=db_select('nav','*','','','','','','ASC');
$id=$_GET['id'];
$rs=db_find('nav','id='.$id);
/*
1.查询回来
2.表单提交修改
*/
if(empty($_POST)==false){
    db_update('nav');
}
// var_dump($rs);exit;
include('templates/header.html');
include('templates/nav_update.html');
include('templates/footer.html');
?>