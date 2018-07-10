<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='导航';
$item=array('导航名称','所属分类');
//用地址栏的P值  &p=1 
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('nav','id,nav_name,pid',$curPage,99999999999,'','','','ASC');
foreach($rs['res'] AS $k=>$v){
		// var_dump($rs['res'][$k]['pid']);exit;
    if($v['pid']==0){
		$rs['res'][$k]['pid']='顶级分类';
	}else{
		//在数据库找回上一级的信息，条件pid=id
		$pid_rs=db_find('nav','id='.$v['pid']);
		$rs['res'][$k]['pid']=$pid_rs['nav_name'];
	}
}
//6.输出得到的结果在html
include('templates/header.html');
include('templates/nav_index.html');
include('templates/footer.html');
?>