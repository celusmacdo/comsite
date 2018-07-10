<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='图片';
$cid=db_select('category','*','','','pid=21','','','ASC');
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			// if(empty($v['name'])==false){
			$_POST['banner_info']=Uploadfile($v);
			// }
		}
	}
	db_add('banner');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/banner_add.html');
    include('templates/footer.html');
}
?>