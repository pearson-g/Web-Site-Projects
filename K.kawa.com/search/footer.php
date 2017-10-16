<?php
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) );
require_once(GEMELADMIN.'/../functions/common.inc.php');
require_once(GEMELINC."/../functions/arc.partview.class.php");


$tempfile = '../templets/gemelsoft/footer.htm'; //定义模板路径  
$pv = new PartView(); //初始化类  
$pv->SetTemplet($tempfile); //设定模板文件路径  
$pv->Display(); 
?>