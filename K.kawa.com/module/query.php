<?php

require_once(dirname(__FILE__)."/../functions/common.inc.php");

$aid = intval($aid);
$capactity = trim($capactity);
if($aid == 0)
{
	ShowMsg("no find","-1");
	exit;
}

$row = $dsql->GetOne("SELECT * FROM `#@__archives` WHERE id='$aid' ");

if(!is_array($row))
{
	ShowMsg("no find","-1");
	exit;
}

//显示模板(简单PHP文件)
include_once(GEMELTEMPLATE.'/gemelsolt/query.htm');
exit;