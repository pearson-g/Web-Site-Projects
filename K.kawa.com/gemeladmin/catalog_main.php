<?php
/**
 * 栏目管理
 *
 * @version        $Id: catalog_main.php 1 14:31 2010年7月12日Z 
 */
require_once(dirname(__FILE__)."/config.php");
require_once(GEMELINC."/typeunit.class.admin.php");
$userChannel = $cuserLogin->getUserChannel();
include GEMELINClude('templets/catalog_main.htm');