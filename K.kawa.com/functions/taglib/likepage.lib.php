<?php
/**
 * 单页文档相同标识调用标签
 *
 * @version        $Id: likepage.lib.php 1 9:29 2010年7月6日Z
 */
 

 
if(!defined('GEMELINC')) exit('Warning...');
require_once(dirname(__FILE__).'/likesgpage.lib.php');

function lib_likepage(&$ctag,&$refObj)
{
    return lib_likesgpage($ctag, $refObj);
}
