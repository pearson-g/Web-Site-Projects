<?php
/**
 * 管理后台顶部
 *
 * @version        $Id: index_top.php 1 8:48 2010年7月13日Z 
 */
 
require(dirname(__FILE__)."/config.php");
if($cuserLogin->adminStyle=='yingxiaoli.com')
{
    include GEMELINClude('templets/index_top1.htm');
}
else
{
    include GEMELINClude('templets/index_top2.htm');
}
