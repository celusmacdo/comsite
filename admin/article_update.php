<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='文章';
$cid=db_select('category','*','','','','','','ASC');
$id=$_GET['id'];
$rs=db_find('article','id='.$id);
/*
1.查询回来
2.表单提交修改
*/
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			if(empty($v['name'])==false){
			$_POST['photo']=Uploadfile($v);
			}
		}
	}
	//反斜杠（\）addslashes加上转义符号
	$_POST['description']=addslashes($_POST['description']);
	$_POST['content']=addslashes($_POST['content']);
	//如果没有设定时间
	// var_dump($_POST);exit;
    db_update('article');
}
$rs=db_find('article','id='.$_GET['id']);
include('templates/header.html');
include('templates/article_update.html');
include('templates/footer.html');
?>