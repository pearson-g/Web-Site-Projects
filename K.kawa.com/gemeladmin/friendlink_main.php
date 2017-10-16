<?php
/**
 * 友情链接管理
 *
 * @version        $Id: friendlink_main.php 1 8:48 2010年7月13日Z 
 */
require_once(dirname(__FILE__).'/config.php');
require_once(GEMELINC.'/datalistcp.class.php');
setcookie('ENV_GOBACK_URL', $gemelNowurl, time()+3600, '/');

if(empty($keyword)) $keyword = '';
if(empty($ischeck)) {
    $ischeck = 0;
    $ischeckSql = '';
} else {
    if($ischeck==-1) $ischeckSql = " And ischeck < 1 ";
    else $ischeckSql = " And ischeck='$ischeck' ";
}

$selCheckArr = array(0=>'不限类型', -1=>'未审核', 1=>'内页', 2=>'首页');

$sql = "SELECT * FROM `#@__flink` WHERE  CONCAT(`url`,`webname`,`email`) LIKE '%$keyword%' $ischeckSql ORDER BY dtime desc";

$dlist = new DataListCP();
$dlist->SetParameter('keyword', $keyword);
$dlist->SetParameter('ischeck', $ischeck);
$dlist->SetTemplet(GEMELADMIN.'/templets/friendlink_main.htm');
$dlist->SetSource($sql);
$dlist->display();

function GetPic($pic)
{
    if($pic=='') return '无图标';
    else return "<img src='$pic' width='88' border='0' />";
}

function GetSta($sta)
{
    if($sta==1) return '内页';
    if($sta==2) return '首页';
    else return '未审核';
}