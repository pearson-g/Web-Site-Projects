<?php
/**
 * 自定义表单列表管理
 *
 * @version        $Id: diy_main.php 1 18:31 2010年7月12日Z 
 */
require_once(dirname(__FILE__)."/config.php");
CheckPurview('c_List');
require_once(GEMELINC."/datalistcp.class.php");
require_once(GEMELINC."/common.func.php");
setcookie("ENV_GOBACK_URL",$gemelNowurl,time()+3600,"/");
$sql = "Select `diyid`,`name`,`table` From #@__diyforms order by diyid asc";
$dlist = new DataListCP();
$dlist->SetTemplet(GEMELADMIN."/templets/diy_main.htm");
$dlist->SetSource($sql);
$dlist->display();
$dlist->Close();