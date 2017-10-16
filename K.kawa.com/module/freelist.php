<?php
/**
 *
 * 自由列表
 *
 * @version        $Id: freelist.php 1 15:38 2010年7月8日Z 
 
 */
require_once(dirname(__FILE__)."/../functions/common.inc.php");
require_once(GEMELINC."/arc.freelist.class.php");
if(!empty($lid)) $tid = $lid;

$tid = (isset($tid) && is_numeric($tid) ? $tid : 0);
if($tid==0) die(" Warning... ");

$fl = new FreeList($tid);
$fl->Display();