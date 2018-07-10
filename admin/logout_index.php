<?php
if(defined('INCOMSITE')==false){
	echo '<script>history.back();</script>';
	exit;
}
unset($_SESSION ["AdminInfo"]);
// var_dump($_SESSION);exit;
echo '<script>alert("成功退出");location.href="'.BASE_URL.'index.php?c=login&a=index&admin=1"</script>';
?>