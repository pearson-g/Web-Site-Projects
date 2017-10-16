<?php
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) );
require_once(GEMELADMIN.'/../functions/common.inc.php');
require_once(GEMELADMIN.'/../gemeladmin/conn.php');
require_once(GEMELINC."/../functions/datalistcp.class.php");

$keyword=$_GET['keyword'];
//$str=$keyword;
$str='<span style="color:#F00;">'.$keyword.'</span>'.' Search Results！';
//$keyword = strtoupper(trim(FilterSearch($keyword)));
$keyword = trim(FilterSearch($keyword));
$condition="(s.title LIKE '%$keyword%' OR s.shorttitle LIKE '%$keyword%' OR e.typename LIKE '%$keyword%')";
/*$sql="SELECT s.id,s.title,s.shorttitle,s.description,e.typename,s.typeid FROM `gemel_archives` as s LEFT JOIN `gemel_arctype` as e ON e.id=s.typeid WHERE $condition AND s.typeid NOT IN(20,21,22,23,24,25,26,27,28,29,30,31,34,35) ORDER BY s.id DESC";*/
$sql="SELECT s.id,s.title,s.shorttitle,s.description,e.typename,s.typeid FROM `gemel_archives` as s LEFT JOIN `gemel_arctype` as e ON e.id=s.typeid WHERE $condition ORDER BY s.id DESC";
$dlist = new DataListCP();
$dlist->pageSize = 10; //
$dlist->SetParameter('keyword',$keyword);
$dlist->SetTemplet("../templets/gemelsoft/search.htm");
$dlist->SetSource($sql);
$dlist->display();

?>