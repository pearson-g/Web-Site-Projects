<?php
/**
 * 获取投票代码
 *
 * @version        $Id: vote_getcode.php 1 23:54 2010年7月20日Z 
 */
require_once(dirname(__FILE__)."/config.php");
require_once(GEMELINC."/gemelvote.class.php");
$aid = isset($aid) && is_numeric($aid) ? $aid : 0;
include GEMELINClude('templets/vote_getcode.htm');