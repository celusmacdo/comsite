<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='分类';
$cid=db_select('category','*','','','','','','ASC');
$rs=db_find('category','id='.$_GET['id']);
/*
1.查询回来
2.表单提交修改
*/
if(empty($_POST)==false){
    db_update('category');
}
// var_dump($rs);exit;
include('templates/header.html');
include('templates/category_update.html');
include('templates/footer.html');
?>