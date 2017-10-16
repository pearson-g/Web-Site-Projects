<?php
/**
 * 管理后台首页
 *
 * @version        $Id: index.php 1 11:06 2014年4月15日 
 */
require_once(dirname(__FILE__)."/config.php");
require_once(GEMELINC.'/gemeltag.class.php');
$defaultIcoFile = GEMELDATA.'/admin/quickmenu.txt';
$myIcoFile = GEMELDATA.'/admin/quickmenu-'.$cuserLogin->getUserID().'.txt';


if(empty($doout))
{
	if(!file_exists($myIcoFile)) $myIcoFile = $defaultIcoFile;
	include(GEMELADMIN.'/templets/index.htm');
	exit();
}
//引入框架
if($doout == 'header')
{
	include(GEMELADMIN.'/templets/header.htm');
	exit();	
}
else
{
	include(GEMELADMIN.'/templets/frame.htm');
	exit();	
}