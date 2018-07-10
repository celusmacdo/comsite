<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='权限';
	$item=array('id','角色名称');
	//判断有提交过来的查询关键词
	if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='group_name like "%'.$keyword.'%" or group_allow like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
	if(empty($_GET['p'])==false){
	  $curPage=$_GET['p'];
	}else{
	  $curPage=1;
	}
	$rs=db_select(C,'id,group_name',$curPage,999999,$where,'',1);
	// $rs=db_select('category','id,category_name,pid',$curPage,99999999999,'','','','ASC');
	// var_dump($rs);exit;

	include('templates/header.html');
	include('templates/group_index.html');
	include('templates/footer.html');