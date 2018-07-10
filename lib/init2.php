<?php
/*
网站配置文件
*/
/*------------------基本设置-----------------------------------*/
header("Content-type: text/html; charset=utf-8");//编码设定 
date_default_timezone_set('PRC');//时区设定
session_start();//session启动

/*------------------常量定义-----------------------------------*/
define('DB_HOST','127.0.0.1');//数据库地址
define('DB_USER','root');//数据库用户名
define('DB_PWD','root');//数据库密码
define('DB_NAME','comsite1805');//选择的数据库
define('DB_PREFIX','');//数据表前缀

define('INCOMSITE',true);//单入口访问的标志
define('BASE_URL','http://localhost/comsite/');//网站域名

/*------------------函数库加载-----------------------------------*/
include('lib/common.php');//基础函数库
include('lib/db.php');//数据库函数