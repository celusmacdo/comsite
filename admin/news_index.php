<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='新闻';
$item=array('新闻编号','分类名称','新闻标题','新闻图片','发布人','修改时间','点击数');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='title like "%'.$keyword.'%" or author like "%'.$keyword.'%"  or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}

// $cid=db_select('category','*','','','pid=3','','','ASC');
$rs=db_select('news','id,category_id,title,news_photo,author,ftime,hits',$curPage,10,$where);


// foreach($cid AS $k=>$v){
// 	var_dump($cid);exit;
// 	$cname=$cid[$k]['category_name'];
// }
foreach($rs['res'] AS $k=>$v){
	$rs['res'][$k]['ftime']=date('Y-m-d H:i:s',$v['ftime']);
	// $rs[$k]['pro_info']=substr($v['pro_info'],0,4);//(字符串，开始，结束)	英文截取  汉字：3字节
	// $rs['res'][$k]['description']=mb_substr($v['description'],0,10,'utf8');//按编码截取
	$rs['res'][$k]['title']=mb_substr($v['title'],0,10,'utf8');//按编码截取
	$rs['res'][$k]['news_photo']='<img src="'.$v['news_photo'].'" width="100" height="100">';
	// $rs['res'][$k]['author']=$_SESSION['AdminInfo']['nickname'];
	$cid=db_find('category','id='.$rs['res'][$k]['category_id'].'');
	$rs['res'][$k]['category_id']=$cid['category_name'];
	// $rs['res'][$k]['description']=htmlspecialchars_decode($v['description'],ENT_NOQUOTES);//按编码截取
}
//6.输出得到的结果在html
include('templates/header.html');
include('templates/news_index.html');
include('templates/footer.html');
?>