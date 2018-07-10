<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='文章';
$cid=db_select('category','*','','','','','','ASC');
	
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			$_POST['photo']=Uploadfile($v);
		}
	}
	db_add('article');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/article_add.html');
    include('templates/footer.html');
}
?>