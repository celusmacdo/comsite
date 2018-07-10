<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='产品';
$item=array('产品编号','分类名称','产品名称','产品描述','产品预览图','添加人员','添加时间');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='pro_name like "%'.$keyword.'%" or pro_description like "%'.$keyword.'%" or additions like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('product','id,category_id,pro_name,pro_description,pro_photo,additions,addtime',$curPage,10,$where);
foreach($rs['res'] AS $k=>$v){
	$rs['res'][$k]['addtime']=date('Y-m-d H:i:s',$v['addtime']);
	// $rs[$k]['pro_info']=substr($v['pro_info'],0,4);//(字符串，开始，结束)	英文截取  汉字：3字节
	$rs['res'][$k]['pro_description']=mb_substr($v['pro_description'],0,20,'utf8');//按编码截取
	$rs['res'][$k]['pro_name']=mb_substr($v['pro_name'],0,10,'utf8');//按编码截取
	$rs['res'][$k]['pro_photo']='<img src="'.$v['pro_photo'].'" width="100" height="100">';
	$cid=db_find('category','id='.$rs['res'][$k]['category_id'].'');
	$rs['res'][$k]['category_id']=$cid['category_name'];
	// $rs['res'][$k]['description']=htmlspecialchars_decode($v['description'],ENT_NOQUOTES);//按编码截取
}
	//6.输出得到的结果在html
include('templates/header.html');
include('templates/product_index.html');
include('templates/footer.html');
?>