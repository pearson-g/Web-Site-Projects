<?php
/**
 * 批量上传
 *
 * @version        $Id: quick_upload.php 1 8:48 2010年7月13日Z 
 */ 

require_once(dirname(__FILE__).'/config.php');
setcookie('ENV_GOBACK_URL', $gemelNowurl, time()+3600, '/');

if(empty($dopost)) $dopost = '';

if($dopost =='upload')
{
	//判断文件类型，如果不是"xls"或者"xlsx"，则退出
	if($_FILES["up_file"]["type"] == "application/vnd.msexcel")
	{
		$inputFileType = 'Excel5';
	}
	elseif( $_FILES["up_file"]["type"] == "application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet" )
	{
		$inputFileType = 'Excel2007';
	}
	else 
	{
		ShowMsg("您没有选择文件或文件格式不正确！","-1");
        exit();	
	}
	
  	if($_FILES["up_file"]["error"] > 0)
	{
		ShowMsg("文件上传失败,请重试！","-1");
        exit();	
	}

	//重命名
	$filename = $cuserLogin->getUserID().'-'.dd2char(MyDate('ymdHis',time()));
    $fs = explode('.', $_FILES["up_file"]["name"]);
    $filename = $filename.'.'.$fs[count($fs)-1];
	$inputFileName = GEMELDATA.'/uploadtmp/'.$filename;
	//移动文件
	move_uploaded_file($_FILES["up_file"]['tmp_name'],$inputFileName) or die("上传文件到 $fullfilename 失败！");
	//删除文件
	@unlink($_FILES["up_file"]['tmp_name']);
	
	//准备导入
	
	require_once('../functions/PHPExcel.php');
	//如果读取的表较大，需要调整内存和时间限制
	ini_set('memory_limit', '50M');
	ini_set('max_execution_time', '300');
	
	$objReader = new PHPExcel_Reader_Excel5();
	if(!$objReader->canRead($inputFileName))
	{
	    //读取2003以及之前版本的xls文件
	    $objReader = new PHPExcel_Reader_Excel2007();
	    if(!$objReader->canRead($inputFileName))
	    {
	        ShowMsg("文件读取失败,请重试！","-1");
			exit();	
	    }
	}
	
	
    $objReader->setReadDataOnly(true);
    $objPHPExcel = $objReader->load($inputFileName);
    $objWorksheet = $objPHPExcel->getActiveSheet();
    $highestRow = $objWorksheet->getHighestRow(); //行数
    $highestColumn = $objWorksheet->getHighestColumn();
    $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn); //列数
	
	
    $up_ok = $up_error = 0; 
    for($row=2; $row <= $highestRow; ++$row) 
	{
		$excelData = array();
        for($col=0; $col<= $highestColumnIndex; ++$col) 
		{
            $excelData[] = $objWorksheet->getCellByColumnAndRow($col,$row)->getValue();
        }
		//上传数据
		if(Up_Product($excelData))
		{
			$up_ok ++;	
		}
		else
		{
			$up_error ++;
		}
		unset($excelData);
    }
	//删除上传的文件
	@unlink($inputFileName);
	ShowMsg("产品批量上传完成，成功 $up_ok 条,失败 $up_error 条！","quick_upload.php",'',3000);
	exit();	
}
else
{
	include GEMELINClude("templets/quick_upload.htm");
	exit();	
}

//导入单个产品

function Up_Product($arr)
{
	global $dsql;
	require_once(GEMELADMIN.'/inc/inc_archives_functions.php');
	//文件保存目录
	$file_save = '/upload/quick/';
	
	
	//初始化信息
	$litpic =  $file_save.$arr[0];
	$title = $arr[1];
	$typeid = $arr[2];
	$brand = $arr[3];
	$supplier = $arr[4];
	$number = $arr[5];
	$format = $arr[6];
	$price = $arr[7];
	$pdf = empty($arr[8]) ? '' : $file_save.$arr[8];
	$keywords = $arr[9];
	$description = $arr[10];
	$body = $arr[11];
	$senddate = time();
	$channelid = 3;
	
	
	//生成文档ID
    $arcID = GetIndexKey(0,$typeid,$senddate,$channelid,$senddate,1);
	$weight = $arcID + 1;
	
	if(empty($arcID))
    {
        return false;
		exit;
    }
	else
	{
		//插入主表
		
		$query = "INSERT INTO `#@__archives`(id,typeid,typeid2,sortrank,flag,ismake,channel,arcrank,click,money,title,shorttitle,
color,writer,source,litpic,pubdate,senddate,mid,voteid,notpost,description,keywords,filename,dutyadmin,weight)
    VALUES ('$arcID','$typeid','0','$senddate','p','1','$channelid','0','0','0','$title','',
    '','admin','未知','$litpic','$senddate','$senddate','1','0','0','$description','$keywords','','1','$weight');";
		
		if(!$dsql->ExecuteNoneQuery($query))
		{
			$dsql->ExecuteNoneQuery("DELETE FROM `#@__arctiny` WHERE id='$arcID'");
			return false;
			exit;
		}
		
		//插入副表
		$useip = GetIP();
        $query_add = "INSERT INTO `#@__product` (aid,typeid,body,brand,supplier,number,format,price,pdf) Values('$arcID','$typeid','$body','$brand','$supplier','$number','$format','$price','$pdf')";
        if(!$dsql->ExecuteNoneQuery($query_add))
        {
            $dsql->ExecuteNoneQuery("DELETE FROM `#@__archives` WHERE id='$arcID'");
            $dsql->ExecuteNoneQuery("DELETE FROM `#@__arctiny` WHERE id='$arcID'");
            return false;
			exit;
        }
	}
	return true;
}