<?php
/**
 *
 * 计划任务
 * @version        $Id: task.php 1 21:40 2010年7月8日Z 
 
 */
require_once(dirname(__FILE__).'/../functions/common.inc.php');
require_once(GEMELINC.'/gemeltag.class.php');

if(empty($client)) $client = 'gemel';
if(empty($clientpwd)) $clientpwd = '';
$cfg_task_pwd = trim($cfg_task_pwd);

//验证客户端工具密码
if(!empty($cfg_task_pwd) && $clientpwd != $cfg_task_pwd)
{
    echo ($client=='js' ? '' : 'notask');
    exit();
}

//取得当时间的各个值
$ntime = time();
$nformattime = GetDateTimeMk($ntime);
list($ndate, $ntime) = explode(' ', $nformattime);
list($y, $m, $d) = explode('-', $ndate);
list($hh, $mm, $ss) = explode(':', $ntime);

$daylimit = 24 * 3600;

$dsql->Execute('me', 'SELECT * FROM `#@__sys_task` WHERE islock=0 ORDER BY id ASC ');
while($arr = $dsql->GetArray())
{
    $starttime = $arr['starttime'];
    $endtime = $arr['endtime'];
	$ntime = strtotime("now");//(计划任务时间比较修正，2011.6.24 by：的鱼)
    //跳过一次性运行，并且已经运行的任务
    if($arr['lastrun'] > $starttime && $arr['runtype']==1) continue;
    //超过了设定的任务结束时间
    if($endtime!=0 && $endtime < $ntime) continue;
    //未达到任务开始时间的任务
    if($starttime!=0 && $ntime < $starttime) continue;
    
    $dotime = GetMkTime($ndate.' '.$arr['runtime'].':00');
    $limittime = $daylimit * $arr['freq'];
    
    $isplay = false;
    //判断符合执行条件的任务
    if($arr['freq'] > 1 && $ntime - $arr['lastrun'] > $limittime )
    {
        $isplay = true;
    }
    else
    {
        $ndateInt = intval( str_replace('-', '', $ndate) );
        $rdateInt = intval( str_replace('-', '', GetDateMk($arr['lastrun'])) );
        list($th, $tm) = explode(':', $arr['runtime']);
        if($ndateInt > $rdateInt 
        && ($hh > $th || ($hh==$th && $mm >= $tm) ) )
        {
            $isplay = true;
        }
    }
    //符合需执行条件的任务
    if($isplay)
    {
        $dourl = trim($arr['dourl']);
        if(!file_exists("task/$dourl"))
        {
            echo ($client=='js' ? '' : 'notask');
            exit();
        }
        else
        {
            $getConfigStr = trim($arr['parameter']);
            $getString = '';
            if(preg_match('#t:#', $getConfigStr))
            {
                $getStrings = array();
                $dtp = new GemelTagParse();
                $dtp->SetNameSpace('t', '<', '>');
                $dtp->LoadString($getConfigStr);
                if(is_array($dtp->CTags))
                {
                    foreach($dtp->CTags as $k=>$ctag)
                    {
                        $getString .= ($getString=='' ? '' : '&').$ctag->GetAtt('key').'='.urlencode($ctag->GetAtt('value'));
                    }
                }
            }
            $dsql->ExecuteNoneQuery("Update `#@__sys_task` set lastrun='".time()."', sta='运行' where id='{$arr['id']}' ");
            if($getString !='' ) $dourl .= '?'.$getString; 
            if($client=='js') header("location:{$cfg_phpurl}/task/{$dourl}");
            else echo "{$cfg_phpurl}/task/{$dourl}";
            exit();
        }
    }
}
echo ($client=='js' ? '' : 'notask');
exit();