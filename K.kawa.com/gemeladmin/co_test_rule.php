<?php
/**
 * 采集规则测试
 *
 * @version        $Id: co_test_rule.php 1 17:13 2010年7月12日Z 
 */
require_once(dirname(__FILE__)."/config.php");
require_once(GEMELINC."/gemelcollection.class.php");
$nid = intval($nid);
$co = new GemelCollection();
$co->LoadNote($nid);
include GEMELINClude('templets/co_test_rule.htm');
exit();