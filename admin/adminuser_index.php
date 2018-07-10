<?php
// var_dump($_SESSION);exit;
	// var_dump($_SESSION['vcode']);exit;
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
// if(empty($_POST)==false){
// 	//反斜杠（\）addslashes加上转义符号
// 	$_POST['content']=addslashes($_POST['content']);
// 	//如果没有设定时间
// 	if(empty($_POST['ftime'])){
// 		$_POST['ftime']=time();
// 	}
// 	else{
// 		$_POST['ftime']=strtotime($_POST['ftime']);	
// 	}
//     db_update('news');
// }
$title='用户';
$item=array('用户编号','用户名','昵称','性别','修改时间','头像','是否冻结');

if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='username like "%'.$keyword.'%" or nickname like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
	
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('adminuser','id,username,nickname,sex,login_time,admin_portrait,frozen',$curPage,10,$where);
foreach($rs['res'] AS $k=>$v){
	$rs['res'][$k]['login_time']=date('Y-m-d H:i:s',$v['login_time']);
	if($v['sex']==0){
		$rs['res'][$k]['sex']='男';
	}elseif($v['sex']==1){
		$rs['res'][$k]['sex']='女';
	}else{
		$rs['res'][$k]['sex']='保密';			
	}
	
	if($v['frozen']==1){
		$rs['res'][$k]['frozen']='用户冻结';
	}else{
		$rs['res'][$k]['frozen']='正常';
	}
	$rs['res'][$k]['admin_portrait']='<img src="'.$v['admin_portrait'].'" width="100" height="100">';
	//$rs[$k]['pro_info']=substr($v['pro_info'],0,4);//(字符串，开始，结束)	英文截取  汉字：3字节
	// $rs[$k]['description']=mb_substr($v['description'],0,10,'utf8');//按编码截取
}
//6.输出得到的结果在html
include('templates/header.html');
include('templates/adminuser_index.html');
include('templates/footer.html');
?>