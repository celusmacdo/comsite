<?php
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	$cat=db_find('category','category_name="产品中心"');
	$cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');
	$detail=db_select('article','*','',1,'category_id=29');
	if(isset($_GET['category_id'])){
			$category_id=$_GET['category_id'];
			$article=db_find('category','id="'.$category_id.'"');
		}else{
			$article=db_find('category','category_name="分体式"');//没有提交过来的分类id，默认查询“企业文化”
			$category_id=$article['id'];//保存企业文化的id
		}
	//根据id查询数据
	$prev=db_select('product','*','',1,'id>'.$_GET['id'].'&&category_id='.$_GET['category_id'].'','','','ASC');//查上一条
	$next=db_select('product','*','',1,'id<'.$_GET['id'].'&&category_id='.$_GET['category_id'].'','','','DESC');//查下一条
	
	$id=intval($_GET['id']);
	$product=db_find('product','id="'.$id.'"');
	// $product['description']=stripslashes($product['description']);
	// $product['content']=stripslashes($product['content']);
	include('templates/header.html');
	include('templates/product_details.html');
	include('templates/footer.html');