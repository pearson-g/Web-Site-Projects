<?php
/**
 * 文件管理器
 *
 * @version        $Id: templets_tagsource.php 1 23:44 2010年7月20日Z 
 */
require_once(dirname(__FILE__).'/config.php');
CheckPurview('plus_文件管理器');

$libdir = GEMELINC.'/taglib';
$helpdir = GEMELINC.'/taglib/help';

//获取默认文件说明信息
function GetHelpInfo($tagname)
{
    global $helpdir;
    $helpfile = $helpdir.'/'.$tagname.'.txt';
    if(!file_exists($helpfile))
    {
        return '该标签没帮助信息';
    }
    $fp = fopen($helpfile,'r');
    $helpinfo = fgets($fp,64);
    fclose($fp);
    return $helpinfo;
}

include GEMELINClude('templets/templets_tagsource.htm');