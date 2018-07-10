<?php
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	//查询关于我们的id
	$cat=db_find('category','category_name="新闻中心"');
	//查询出关于我们的全部子分类信息
    $cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');
	
	//如果有提交过来的分类id保存提交过来的分类id
	if(isset($_GET['category_id'])){
		$category_id=$_GET['category_id'];
		$cat=db_find('category','id="'.$category_id.'"');
	}else{
		$cat=db_find('category','category_name="企业新闻"');//没有提交过来的分类id，默认查询“新闻中心”
		$category_id=$cat['id'];//保存企业简介的id
	}
	//根据id查询数据
	$prev=db_select('news','*','',1,'id>'.$_GET['id'].'&&category_id='.$_GET['category_id'].'','','','ASC');//查上一条
	$next=db_select('news','*','',1,'id<'.$_GET['id'].'&&category_id='.$_GET['category_id'].'','','','DESC');//查下一条
	// var_dump($next);exit;
	$id=intval($_GET['id']);
	$news=db_find('news','id="'.$id.'"');
	$news['description']=stripslashes($news['description']);
	$news['content']=stripslashes($news['content']);
	
include('templates/header.html');
include('templates/news_details.html');
include('templates/footer.html');