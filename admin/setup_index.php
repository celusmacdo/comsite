<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	$title='数据';
	$item=array('数据编号','数据名称','数据内容','数据类型');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='name like "%'.$keyword.'%" or value like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
	if(empty($_GET['p'])==false){
	  $curPage=$_GET['p'];
	}else{
	  $curPage=1;
	}
	$rs=db_select(C,'*',$curPage,100000000,$where);
	// var_dump($rs);exit;
	foreach($rs['res'] as $k=>$val){
		if($val['type']==1){
			$rs['res'][$k]['value']='<img src="'.$val['value'].'" height="100">';
		}
		if($val['type']==0){
			$rs['res'][$k]['type']='文字类型';
		}else{
			$rs['res'][$k]['type']='图片类型';
		}
		// print_r($rs['res'][$k]['type']);
	}
	include('templates/header.html');
	include('templates/setup_index.html');
	include('templates/footer.html');