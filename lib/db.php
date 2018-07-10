<?php
/*
数据库连接
*/
function db_connect(){
	$link = @mysqli_connect(DB_HOST,DB_USER,DB_PWD,DB_NAME);

	if ($link==false) {
		die('数据库暂时无法使用,请检查名称或密码等信息');
	}

	mysqli_query($link,'SET NAMES utf8');
	return $link;
}
/*
统计总条数
*/
function db_count($table,$where=''){
	$link = db_connect();
	$sql = 'SELECT count(*) as totalNum FROM `'.DB_PREFIX.$table.'` '.$where;
	$query = mysqli_query($link,$sql);
	if ($query==false) {
		echo 'sql语句有问题：'.$sql;
	}else{
		$row=mysqli_fetch_assoc($query);
	}
	return $row;
}
/*
数据库查询
封装重复的代码，让不重复的变成参数
$table          表名
$field			字段名
$startItem		从那一条开始
$perPage		取几条
$curPage		当前页码
*/
function db_select($table,$field='*',$curPage='',$perPage=1,$where='',$limit='',$admin=1,$sort='DESC'){
	
	$link = db_connect();
	if(!empty($where)){
		$where=' WHERE '.$where;
		
	}
	if(!empty($curPage)){
	  $total = db_count($table,$where);
	  $totalPage = ceil($total['totalNum']/$perPage);
	  $startItem = ($curPage-1)*$perPage;
	  $limit='LIMIT '.$startItem.','.$perPage;
    }else{
		if(!empty($limit)){
			$limit='LIMIT '.$limit;
		}
	}
	$sql = 'SELECT '.$field.' FROM `'.DB_PREFIX.$table.'` '.$where.' ORDER BY `id` '.$sort.' '.$limit;
	$query = mysqli_query($link,$sql);

	// var_dump(mysqli_error($link));exit;
	if ($query==false) {
		echo 'sql语句有问题：'.$sql;
	}else{
		$rs=array();
		while ($row=mysqli_fetch_assoc($query)) {
			$rs[] = $row;
		}

	}
	//组织后台分页
	if(!empty($curPage) && $admin==1){
			$html = '';
			$html.='<ul class="pagination">';
					
					$fontPage=$curPage-1;
					if($fontPage>0){
						if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							$html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&keyword='.$_GET['keyword'].'&p='.$fontPage.'">&laquo;</a></li>';
						}else{
							$html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&p='.$fontPage.'">&laquo;</a></li>';
						}
					}else{
						$html.='<li class="disabled"><a href="###">&laquo;</a></li>';
					}
					
					for($i=1;$i<=$totalPage;$i++){
						if($curPage==$i){
							if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
								$html.='<li class="active"><a href="index.php?c='.C.'&a='.A.'&admin=1&keyword='.$_GET['keyword'].'&p='.$i.'">'.$i.'</a></li>';
							}else{
								$html.='<li class="active"><a href="index.php?c='.C.'&a='.A.'&admin=1&p='.$i.'">'.$i.'</a></li>';
							}
							    
						}else{
							if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							     $html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&keyword='.$_GET['keyword'].'&p='.$i.'">'.$i.'</a></li>';   
							}else{
								$html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&p='.$i.'">'.$i.'</a></li>';
							}
						}
					}
					
					$nextPage=$curPage+1;
					
					if($nextPage<=$totalPage){
						if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							$html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&keyword='.$_GET['keyword'].'&p='.$nextPage.'">&raquo;</a></li>';							
						}else{
							$html.='<li><a href="index.php?c='.C.'&a='.A.'&admin=1&p='.$nextPage.'">&raquo;</a></li>';
						}
						     
					}else{
						$html.='<li class="disabled"><a href="###">&raquo;</a></li>';
					}
			$html.='</ul>';
	}
	//组织前台分页
	if(!empty($curPage) && $admin==0){
			$html = '';
			$html.='<ul class="pagination">';
					
					if(isset($_GET['category_id'])){
						$cat_id='&category_id='.$_GET['category_id'];
					}else{
						$cat_id='';
					}
					$fontPage=$curPage-1;
					if($fontPage>0){
						if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							$html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&keyword='.$_GET['keyword'].'&p='.$fontPage.'">&laquo;</a></li>';
						}else{
							$html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&p='.$fontPage.'">&laquo;</a></li>';
						}
					}else{
						$html.='<li class="disabled"><a href="###">&laquo;</a></li>';
					}
					
					for($i=1;$i<=$totalPage;$i++){
						if($curPage==$i){
							if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
								$html.='<li><a class="on" href="index.php?c='.C.'&a='.A.$cat_id.'&keyword='.$_GET['keyword'].'&p='.$i.'">'.$i.'</a></li>';
							}else{
								$html.='<li><a class="on" href="index.php?c='.C.'&a='.A.$cat_id.'&p='.$i.'">'.$i.'</a></li>';
							}
							    
						}else{
							if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							     $html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&keyword='.$_GET['keyword'].'&p='.$i.'">'.$i.'</a></li>';   
							}else{
								$html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&p='.$i.'">'.$i.'</a></li>';
							}
						}
					}
					
					$nextPage=$curPage+1;
					
					if($nextPage<=$totalPage){
						if(isset($_GET['keyword']) && !empty($_GET['keyword'])){
							$html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&keyword='.$_GET['keyword'].'&p='.$nextPage.'">&raquo;</a></li>';							
						}else{
							$html.='<li><a href="index.php?c='.C.'&a='.A.$cat_id.'&p='.$nextPage.'">&raquo;</a></li>';
						}
						     
					}else{
						$html.='<li class="disabled"><a href="###">&raquo;</a></li>';
					}
			$html.='</ul>';
	}
	if(!empty($curPage)){
		return array(
			'res'=>$rs,
			'page'=>$html
		);
	}else{
        return $rs;		
	}
}
/*
数据表查询一条
封装重复的代码，让不重复的变成参数
*/
function db_find($table,$where){
	$link = db_connect();
	$sql = 'SELECT * FROM `'.DB_PREFIX.$table.'` where '.$where;
//var_dump($sql);exit;
	$query = mysqli_query($link,$sql);

	// var_dump(mysqli_error($link));exit;
	if ($query==false) {
		echo 'sql语句有问题：'.$sql;
	}else{
		$rs=array();
		$row=mysqli_fetch_assoc($query);

		//var_dump($rs);exit;

	}
	return $row;
}
/*
数据删除
封装重复的代码，让不重复的变成参数
*/
function db_del($table){
	$link=db_connect();
	
	$sql = 'delete from `'.DB_PREFIX.$table.'` where `id`='.$_GET['id']; 

	$query = mysqli_query($link,$sql);

	if ($query==true) {
		echo '<script>alert("删除成功");location.href="'.BASE_URL.'/index.php?c='.C.'&a=index&admin=1";</script>';
	}else{
		echo '<script>alert("删除失败");location.href="'.BASE_URL.'/index.php?c='.C.'&a=index&admin=1";</script>';
	}
}
/*
数据添加
封装重复的代码，让不重复的变成参数
*/
function db_add($table,$isadmin='1'){
	$link=db_connect();
	$keyStr='';
	$valueStr='';
	foreach($_POST as $k=>$val){
		$keyStr=$keyStr.'`'.$k.'`,';
		$valueStr=$valueStr.'"'.$val.'",';
	}
	$keyStr=substr($keyStr,0,-1);
	$valueStr=substr($valueStr,0,-1);
	$sql = 'INSERT INTO `'.DB_PREFIX.$table.'`('.$keyStr.') values('.$valueStr.')';
	$query=mysqli_query($link,$sql);
	
	// var_dump(mysqli_query($link,$sql));exit;
	if ($query==true){
		// echo $isadmin;exit;
		echo '<script>alert("添加成功");location.href="'.BASE_URL.'index.php?c='.C.'&a=index&admin='.$isadmin.'";</script>';
	}else{
		echo '<script>alert("添加失败");location.href="'.BASE_URL.'index.php?c='.C.'&a=add&admin='.$isadmin.'";</script>';
	}
}
/*
数据更新
封装重复的代码，让不重复的变成参数
*/
function db_update($table){
	$link=db_connect();
	$curPage=isset($_GET['p'])?$_GET['p']:'1';
	$updateStr='';
	foreach($_POST as $k=>$val){
		$updateStr=$updateStr.'`'.$k.'`="'.$val.'",';
	}
	$updateStr=substr($updateStr,0,-1);
	$sql = 'update `'.DB_PREFIX.$table.'` set '.$updateStr.' where `id`='.$_POST['id'];
	$query = mysqli_query($link,$sql);
		
	//var_dump(mysqli_error($link));exit;
		
	if ($query == true){
		echo '<script>alert("更新成功");history.back();history.go(-2);</script>';
		exit;
	}else{
		echo '<script>alert("更新失败");location.href="'.BASE_URL.'/index.php?c='.C.'&a=update&admin=1&id='.$_POST['id'].'";</script>';
		exit;
	}
}

function db_update1($table,$data=array(),$id){
	$link=db_connect();
	$updateStr='';
	foreach($data as $k=>$val){
		$updateStr=$updateStr.'`'.$k.'`="'.$val.'",';
	}
	$updateStr=substr($updateStr,0,-1);
	$sql = 'update `'.DB_PREFIX.$table.'` set '.$updateStr.' where `id`='.$id;
	$query = mysqli_query($link,$sql);
		

	if ($query == true){
		 return true;
	}else{
	     return false;
	}
}


