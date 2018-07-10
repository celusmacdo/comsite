<?php
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	//查询关于我们的id
	$cat=db_find('category','category_name="产品中心"');
	//查询出关于我们的全部子分类信息
	$cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');
	
	//如果有提交过来的分类id保存提交过来的分类id
	if(isset($_GET['category_id'])){
		$category_id=$_GET['category_id'];
		$cat=db_find('category','id="'.$category_id.'"');
	}else{
		$cat=db_find('category','category_name="分体式"');//没有提交过来的分类id，默认查询“工艺品”
		$category_id=$cat['id'];//保存企业简介的id
	}
	//根据分类id切换产品
	$where='category_id='.$category_id;
	if(!isset($_GET['p'])){
		$curPage='1';
	}else{
		$curPage=$_GET['p'];
	}
	//产品输出
	$rs=db_select('product','*',$curPage,6,$where,'',0);
// 	foreach($rs['res'] as $k=>$val){
// 		$rs['res'][$k]['addtime']=date('Y-m-d H:i:s',$val['addtime']);
// 		$rs['res'][$k]['description']=mb_substr($val['description'],0,4,'utf8');
// 		$rs['res'][$k]['content']=mb_substr($val['content'],0,4,'utf8');
// 	}
	//var_dump($rs);exit;
	include('templates/header.html');
	include('templates/product_index.html');
	include('templates/footer.html');