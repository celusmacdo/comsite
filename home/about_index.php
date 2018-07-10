<?php
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$cat=db_find('category','category_name="关于我们"');
$cat_nav=db_select('category','*','',1,'pid='.$cat['id'],'','','ASC');

if(isset($_GET['category_id'])){
		$category_id=$_GET['category_id'];
		$category=db_find('category','id="'.$category_id.'"');
		$article=db_find('article','category_id="'.$category_id.'"');
	}else{
		$category=db_find('category','category_name="企业文化"');//没有提交过来的分类id，默认查询“企业文化”
		$category_id=$category['id'];//保存企业文化的id
		$article=db_find('article','category_id="'.$category_id.'"');
	}
include('templates/header.html');
include('templates/about_index.html');
include('templates/footer.html');