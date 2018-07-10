<?php
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$cat=db_find('category','category_name="新闻中心"');
	$cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');
	if(isset($_GET['category_id'])){
			$category_id=$_GET['category_id'];
			$article=db_find('category','id="'.$category_id.'"');
		}else{
			$article=db_find('category','category_name="企业新闻"');//没有提交过来的分类id，默认查询“企业文化”
			$category_id=$article['id'];//保存企业文化的id
		}
	//根据分类id切换新闻
	$where=' category_id='.$category_id;
	if(!isset($_GET['p'])){
		$curPage='1';
	}else{
		$curPage=$_GET['p'];
	}
	//新闻输出
	$rs=db_select('news','*',$curPage,4,$where,'',0);
	//var_dump($rs);exit;
	foreach($rs['res'] as $k=>$val){
		// $rs['res'][$k]['ftime']=date('Y-m-d',$val['ftime']);
		//$rs['res'][$k]['description']=mb_substr($val['description'],0,4,'utf8');
		$rs['res'][$k]['content']=mb_substr($val['content'],0,4,'utf8');
	}
	// var_dump($rs);exit;
	include('templates/header.html');
	include('templates/news_index.html');
	include('templates/footer.html');