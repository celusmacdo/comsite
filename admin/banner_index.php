<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='图片';
$item=array('图片编号','分类名称','图片名字','轮播超链接','图片地址');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='banner_name like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('banner','id,category_id,banner_name,banner_url,banner_info',$curPage,10,$where);
foreach($rs['res'] AS $k=>$v){
	// $rs['res'][$k]['addtime']=date('Y-m-d H:i:s',$v['addtime']);
	// $rs[$k]['pro_info']=substr($v['pro_info'],0,4);//(字符串，开始，结束)	英文截取  汉字：3字节
	// $rs['res'][$k]['pro_description']=mb_substr($v['pro_description'],0,20,'utf8');//按编码截取
	// $rs['res'][$k]['pro_name']=mb_substr($v['pro_name'],0,10,'utf8');//按编码截取
	$rs['res'][$k]['banner_info']='<img src="'.$v['banner_info'].'"height="100">';
	$cid=db_find('category','id='.$rs['res'][$k]['category_id'].'');
	$rs['res'][$k]['category_id']=$cid['category_name'];
	// $rs['res'][$k]['description']=htmlspecialchars_decode($v['description'],ENT_NOQUOTES);//按编码截取
}
//6.输出得到的结果在html
include('templates/header.html');
include('templates/banner_index.html');
include('templates/footer.html');
?>