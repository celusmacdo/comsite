<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='文章';
$item=array('文章编号','分类名称','文章名称','文章描述','文章图片');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='title like "%'.$keyword.'%" or description like "%'.$keyword.'%" or content like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('article','id,category_id,title,description,photo',$curPage,10,$where);
foreach($rs['res'] AS $k=>$v){
	// $rs['res'][$k]['ftime']=date('Y-m-d H:i:s',$v['ftime']);
	// $rs[$k]['pro_info']=substr($v['pro_info'],0,4);//(字符串，开始，结束)	英文截取  汉字：3字节
	$rs['res'][$k]['description']=mb_substr($v['description'],0,50,'utf8');//按编码截取
	// $rs['res'][$k]['title']=mb_substr($v['title'],0,10,'utf8');//按编码截取
	$rs['res'][$k]['photo']='<img src="'.$v['photo'].'" width="100" height="100">';
	$cid=db_find('category','id='.$rs['res'][$k]['category_id'].'');
	$rs['res'][$k]['category_id']=$cid['category_name'];
	// $rs['res'][$k]['description']=htmlspecialchars_decode($v['description'],ENT_NOQUOTES);//按编码截取
}
//6.输出得到的结果在html
include('templates/header.html');
include('templates/article_index.html');
include('templates/footer.html');
?>