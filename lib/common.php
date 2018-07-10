<?php

function checklogin(){
	// var_dump($_SESSION['AdminInfo']);exit;
	if(!isset($_SESSION['AdminInfo']) or $_SESSION==null){
		echo '<script>alert("请先登录");location.href="'.BASE_URL.'index.php?c=login&a=index&admin=1"</script>';
	}else{
		//查看nav表，看看当前正要访问的地址的id
		$navrs=db_find('nav','c="'.C.'" and a="'.A.'"');
		//判断查出菜单id不在允许访问的group_allow数组内
		if(!in_array($navrs['id'],$_SESSION['AdminInfo']['group_allow'])){
			echo '<script>alert("没有权限");history.back()</script>';
			exit;
		}
	}
}

function Uploadfile($data){
	ob_start();
	if($data['error']==0){
		switch($data['type']){
			case 'image/png':
						$file_tail='png';
						break;
			case 'image/jpeg':
						$file_tail='jpg';
						break;
			case 'image/gif':
						$file_tail='gif';
						break;
		}
		
		$savePath='uploads/'.date('Y-m-d').'/';
		if(file_exists('uploads/'.date('Y-m-d').'/')==false){
			mkdir($savePath);
		}
		//组装一个文件名
		$fileName=md5($data['name']);
		$rs=move_uploaded_file($data['tmp_name'],$savePath.$fileName.'.'.$file_tail);
		return $savePath.$fileName.'.'.$file_tail;
		
	}else{
		die('请上传图片');
	}
}
/*
随机字符库
$num 随机字数 $num=4
*/
function ramdomWord($num){
	/*
	1l o0
	*/
	$word=array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9');
	/*
	rand(最小，最大) 随机数  0~32768
	mt_rand() 随机数
	*/
	$code='';
	//循环从$word里面抽取$num个字符
	for($i=0;$i<$num;$i++){
		$code.=$word[rand(0,count($word)-1)];
	}
	return $code;
}
/*
验证码
$width  宽
$height 高
$num    验证码个数
*/
function vcode($num=4,$width=80,$height=30){
	//1、画图像（新建图像）imagecreatetruecolor(宽，高)
	$im = imagecreatetruecolor($width,$height);
	// 为一幅图像分配颜色  imagecolorallocate(资源集,0~255,0~255,0~255);
	$back_color1 = imagecolorallocate($im,250,250,250);
	//填充矩形 imagefilledrectangle(资源集,起点x坐标,起点y坐标,终点x坐标,终点y坐标,颜色);
	imagefilledrectangle($im,0,0,$width,$height,$back_color1);
	$back_color2 = imagecolorallocate($im,150,150,150);
	imagerectangle($im,0,0,$width-2,$height-2,$back_color2);
	$code=ramdomWord(4);
	//保存在session以便核对
	$_SESSION['vcode']=$code;
	//画点
	for($i = 0;$i<100;$i++){
		//随机点颜色
		$point_color = imagecolorallocate($im,mt_rand(0,255),mt_rand(0,255),mt_rand(0,255));
		//imagesetpixel(资源集,起点x,起点y,点颜色)
		imagesetpixel($im,mt_rand(0,$width),mt_rand(0,$height),$point_color);
	}
	/**/
	//画线
	for($i = 0;$i<5;$i++){
		//线颜色
		$line_color = imagecolorallocate($im,mt_rand(0,255),mt_rand(0,255),mt_rand(0,255));
		//弧线绘制 imagearc(资源集,圆心x,圆心y,弧度宽,弧度高,角度,终点,弧线)
		imagearc($im,mt_rand(1,$width),mt_rand(1,$height),mt_rand(1,80),mt_rand(0,50),mt_rand(0,180),mt_rand(180,360),$line_color);
	}
	
	$start=10;
	for($i=0;$i<$num;$i++){
		//随机文字颜色
		//$text_color=imagecolorallocate($im,rand(50,200),rand(50,200),rand(50,200));
		$text_color=imagecolorallocate($im,000,000,000);
		//图片区填充文字(资源集,文字大小,文字角度,x坐标,y坐标,文字颜色,字体文件)
		imagefttext($im,15,rand(5,36), $start, 20, $text_color, 'public/simsunb.ttf', $code[$i]);
		$start+=15;
	}
	ob_end_clean();
	/*
	生成图片
	imagepng  png图
	imagejpeg 
	imagegif
	imagewbmp 
	*/
	imagepng($im);
	//销毁内存中临时生成图片
	imagedestroy($im);
	//图片输出时候一定要设定编码
	header('Cache-Control:max-age=1,s-maxage=1,no-cache,must-revalidate');
	//image/png image/jpeg
	header('Content-type:image/png;charset=utf8');
	
}
