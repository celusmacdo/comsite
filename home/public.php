<?php
$home_banner=db_select('banner','*','',2,'banner_name like "%首页轮播%"','3');
$about_banner=db_find('banner','banner_name like "%关于我们%"');
$product_banner=db_find('banner','banner_name like "%产品中心%"');
$news_banner=db_find('banner','banner_name like "%新闻中心%"');
$contact_banner=db_find('banner','banner_name like "%联系我们%"');
$nav=db_select('category','*','',2,'pid=0&&is_show=1','','','ASC');
$category2=db_select('category','*','',2,'pid!=0&&is_show=1','','','ASC');
$copyright=db_find('setup','name like "%版权所有%"');
// var_dump($copyright);exit;
// print_r($category);exit;
// $setup=db_select('setup');
//title切换
$title='英利科技-网站首页';
switch(C){
	case 'about';
	      $title='英利科技-关于我们'; 
	      break;
	case 'news';	
		  $title='英利科技-新闻中心'; 
	      break;	
	case 'product';
		  $title='英利科技-产品中心'; 
	      break;
	case 'contact';	
		  $title='英利科技-联系我们'; 
	      break;
}