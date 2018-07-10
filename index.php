<?php
if(isset($_GET['admin']) && $_GET['admin']==1){
    $admin='admin';
}else{
	$admin='home';
}
if(isset($_GET['c'])){
    $c=$_GET['c'];
}else{
	$c='home';
}
if(isset($_GET['a'])){
    $a=$_GET['a'];
}else{
	$a='index';
}

//保存地址栏的三个参数
define('ADMIN',$admin);
define('C',$c);
define('A',$a);

include('lib/init2.php');
include($admin.'/public.php');
//加载的地址，组装成一个变量
$include_path=$admin.'/'.$c.'_'.$a.'.php';
//判断加载路径是否是正确的可以加载路径
if(file_exists($include_path)){
   //正确才加载
   include($include_path);
}else{
   include('public/404.html');
}
