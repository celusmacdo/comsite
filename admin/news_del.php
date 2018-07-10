<?php
checklogin();
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
$title='新闻';
db_del('news');
?>