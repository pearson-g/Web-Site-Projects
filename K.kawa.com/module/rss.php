<?php
/**
 *
 * RSS列表页
 *
 * @version        $Id: rss.php 1 15:38 2010年7月8日Z 
 
 */
require_once(dirname(__FILE__).'/../functions/common.inc.php');
require_once(GEMELINC."/arc.rssview.class.php");

$tid = isset($tid) && is_numeric($tid) ? $tid : 0;
if($tid==0) die(" Warning... ");

$rv = new RssView($tid);
$rv->Display();