<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='产品';
$cid=db_select('category','*','','','pid=2','','','ASC');
$id=$_GET['id'];
$rs=db_find('product','id='.$id);
/*SSS
1.查询回来
2.表单提交修改
*/

if(empty($_POST)==false){
	if(empty($_FILES)==false){
		//var_dump($_FILES);exit;
		foreach($_FILES AS $k=>$v){
			//有做图片更新才上传
			if(empty($v['name'])==false){
			$_POST['pro_photo']=Uploadfile($v);
			}
		}
	}
	//var_dump($_FILES);exit;
	//反斜杠（\）addslashes加上转义符号
	$_POST['pro_content']=addslashes($_POST['pro_content']);
	// $_POST['pro_description']=addslashes($_POST['pro_description']);
    db_update('product');
}
$rs=db_find('product','id='.$_GET['id']);
include('templates/header.html');
include('templates/product_update.html');
include('templates/footer.html');
?>