<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
/*
1.查询回来
2.表单提交修改
*/
$title='新闻';
$cid=db_select('category','*','','','pid=3','','','ASC');
$id=$_GET['id'];
$rs=db_find('news','id='.$id);
// var_dump($cid);exit;
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			if(empty($v['name'])==false){
			$_POST['news_photo']=Uploadfile($v);
			}
		}
	}
	//var_dump($_FILES);exit;
	//反斜杠（\）addslashes加上转义符号
	$_POST['content']=addslashes($_POST['content']);
	//如果没有设定时间
	if(empty($_POST['ftime'])){
		$_POST['ftime']=time();
	}
	else{
		$_POST['ftime']=strtotime($_POST['ftime']);	
	}
    db_update('news');
}
// var_dump($rs);exit;
include('templates/header.html');
include('templates/news_update.html');
include('templates/footer.html');
?>