<?php
   //查出目前点击数
   $news_hits=db_find('news','id='.$_GET['id']);
   $_POST=array(
      'hits'=>$news_hits['hits']+1,
   );
   $rs=db_update1('news',array(
      'hits'=>$news_hits['hits']+1,
   ),$_GET['id']);
   if($rs==true){
	  echo 'ok';   
   }else{
	  echo 'no';
   }
?>