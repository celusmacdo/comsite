<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='留言';
$item=array('留言编号','留言姓名','留言电邮','留言内容','留言电话','留言qq');
if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
		$keyword=$_GET['keyword'];
		$where='msg_user like "%'.$keyword.'%" or msg_email like "%'.$keyword.'%" or msg_content like "%'.$keyword.'%" or msg_content like "%'.$keyword.'%" or msg_phone like "%'.$keyword.'%" or msg_qq like "%'.$keyword.'%"';
	}else{
		$keyword='';
		$where='';//没有搜索让$where变量为空
	}
if(empty($_GET['p'])==false){
  $curPage=$_GET['p'];
}else{
  $curPage=1;
}
$rs=db_select('msg','id,msg_user,msg_email,msg_content,msg_phone,msg_qq',$curPage,10,$where);
//6.输出得到的结果在html
include('templates/header.html');
include('templates/contact_index.html');
include('templates/footer.html');
?>