<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
// name属性就是POST获GET那个数组的下标
//post不是空的状态就
$title='新闻';
$cid=db_select('category','*','','','pid=3','','','ASC');
if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES as $k=>$val){
			// if(empty($v['name'])==false){
			$_POST['news_photo']=Uploadfile($val);
			// }
		}
	}
	if(empty($_POST['author'])){
		$_POST['author']=$_SESSION['AdminInfo']['username'];
	}
	//反斜杠（\）addslashes加上转义符号
	$_POST['content']=addslashes($_POST['content']);
	//如果没有设定时间
	if(empty($_POST['ftime'])){
		$_POST['ftime']=time();
	}else{
		$_POST['ftime']=strtotime($_POST['ftime']);	
	}
	db_add('news');
}else{
	//没有提交就加载表单
	include('templates/header.html');
    include('templates/news_add.html');
    include('templates/footer.html');
}
?>