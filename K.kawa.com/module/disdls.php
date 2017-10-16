<?php
/**
 *
 * 下载次数统计
 *
 * 如果想显示下载次数,即把下面ＪＳ调用放到文档模板适当位置
 * <script src="{gemel:global name='cfg_phpurl'/}/disdls.php?aid={gemel:field name='id'/}" language="javascript"></script>
 *
 * @version        $Id: disdls.php 1 20:43 2010年7月8日Z 
 
 */
require_once(dirname(__FILE__)."/../functions/common.inc.php");
$aid = (isset($aid) && is_numeric($aid)) ? $aid : 0;
$row = $dsql->GetOne("SELECT SUM(downloads) AS totals FROM `#@__downloads` WHERE id='$aid' ");
if(empty($row['totals'])) $row['totals'] = 0;
echo "document.write('{$row['totals']}');";
exit();