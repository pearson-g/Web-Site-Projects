<?php
require(dirname(__FILE__).'/config.php');
require(GEMELADMIN.'/inc/xmenu7.php');
require(GEMELADMIN.'/inc/inc_menu_func.php');
$openitem = (empty($openitem) ? 1 : $openitem);
include GEMELINClude('templets/xmenu7.htm');
?>
