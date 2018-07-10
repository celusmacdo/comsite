<?php
	checklogin();
	if(defined('INCOMSITE')==false){
		echo '<script>history.back();</script>';
		exit;
	}
	
	db_del(C);