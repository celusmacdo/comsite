<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
//name属性就是POST获GET那个数组的下标
//post不是空的状态就
$title='产品';
$cid=db_select('category','*','','','pid=2','','','ASC');
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES as $k=>$val){
			// if(empty($v['name'])==false){
			$_POST['pro_photo']=Uploadfile($val);
			// }
		}
	}
	if(empty($_POST['additions'])){
		$_POST['additions']=$_SESSION['AdminInfo']['username'];
	}
	//反斜杠（\）addslashes加上转义符号
	$_POST['pro_content']=addslashes($_POST['pro_content']);
	$_POST['pro_description']=addslashes($_POST['pro_description']);
	//如果没有设定时间
	if(empty($_POST['addtime'])){
		$_POST['addtime']=time();
	}else{
		$_POST['addtime']=strtotime($_POST['addtime']);	
	}
	db_add('product');
}else{
	//没有提交就加载表单
	include('templates/header.html');
  include('templates/product_add.html');
  include('templates/footer.html');
}
?>