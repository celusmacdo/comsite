<?php
//判断如果有get提交过来的username
if(isset($_GET['username'])){
	//查询管理员是否存在
	$adminuser=db_find('adminuser','username="'.$_GET['username'].'"');
	if(empty($adminuser)==false){
		//如果能找到管理员就echo一个1作为标志返回给ajax代码的区域
		echo 1;
	}else{
		echo 0;
	}
}
if(isset($_GET['nickname'])){
	//查询管理员是否存在
	$adminuser=db_find('adminuser','nickname="'.$_GET['nickname'].'"');
	if(empty($adminuser)==false){
		//如果能找到管理员就echo一个1作为标志返回给ajax代码的区域
		echo 1;
	}else{
		echo 0;
	}
}