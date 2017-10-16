<?php
/**
 * 采集规则编辑
 *
 * @version        $Id: co_edit.php 1 14:31 2010年7月12日Z 
 */
require_once(dirname(__FILE__).'/config.php');
CheckPurview('co_EditNote');
require_once(GEMELINC.'/gemeltag.class.php');
$nid = (isset($nid) ? intval($nid) : '');
if($nid=='')
{
    ShowMsg('参数无效!','-1');
    exit();
}
if(empty($dopost)) $dopost = '';

/*----------------------
function _Save()
----------------------*/
if($dopost=='save' || $dopost=='saveandtest')
{
    $usemore = (!isset($usemore) ? 0 : 1);
    $listconfig = "{gemel:noteinfo notename=\\\"$notename\\\" channelid=\\\"$channelid\\\" macthtype=\\\"$macthtype\\\"
    refurl=\\\"$refurl\\\" sourcelang=\\\"$sourcelang\\\" cosort=\\\"$cosort\\\"
  isref=\\\"$isref\\\" exptime=\\\"$exptime\\\" usemore=\\\"$usemore\\\" /}
{gemel:listrule sourcetype=\\\"$sourcetype\\\" rssurl=\\\"$rssurl\\\" regxurl=\\\"$regxurl\\\"
startid=\\\"$startid\\\" endid=\\\"$endid\\\" addv=\\\"$addv\\\" urlrule=\\\"$urlrule\\\" musthas=\\\"$musthas\\\"
 nothas=\\\"$nothas\\\" listpic=\\\"$listpic\\\" usemore=\\\"$usemore\\\"}
    {gemel:addurls}$addurls{/gemel:addurls}
    {gemel:batchrule}$batchrule{/gemel:batchrule}
    {gemel:regxrule}$regxrule{/gemel:regxrule}
    {gemel:areastart}$areastart{/gemel:areastart}
    {gemel:areaend}$areaend{/gemel:areaend}
{/gemel:listrule}\r\n";
    $itemconfig = "{gemel:sppage sptype=\\'$sptype\\' srul=\\'$srul\\' erul=\\'$erul\\'}$sppage{/gemel:sppage}\r\n";
    $itemconfig .= "{gemel:previewurl}$previewurl{/gemel:previewurl}\r\n";
    $itemconfig .= "{gemel:keywordtrim}$keywordtrim{/gemel:keywordtrim}\r\n";
    $itemconfig .= "{gemel:descriptiontrim}$descriptiontrim{/gemel:descriptiontrim}\r\n";
    $fs = explode(',','value,match,isunit,isdown,trim,function');
    foreach($fields as $field)
    {
        foreach($fs as $f)
        {
            $GLOBALS[$f.'_'.$field] = (!isset($GLOBALS[$f.'_'.$field]) ? '' : $GLOBALS[$f.'_'.$field]);
        }
        $matchstr = $GLOBALS["match_".$field];
        $trimstr = $GLOBALS["trim_".$field];
        $trimstr = trim(str_replace('&nbsp;', '#n#', $trimstr));
        $matchstr = trim(str_replace('&nbsp;', '#n#', $matchstr));
        if($trimstr!='' && !preg_match("#{gemel:trim#isU", $trimstr))
        {
            $trimstr = "      {gemel:trim}$trimstr{/gemel:trim}\r\n";
        }
        $itemconfig .= "{gemel:item field=\\'".$field."\\' value=\\'".$GLOBALS["value_".$field]."\\' isunit=\\'".$GLOBALS["isunit_".$field]."\\' isdown=\\'".$GLOBALS["isdown_".$field]."\\'}
   {gemel:match}".$matchstr."{/gemel:match}
   $trimstr
   {gemel:function}".$GLOBALS["function_".$field]."{/gemel:function}
{/gemel:item}";
    }
    
    $uptime = time();
    if(empty($freq)) $freq = 1;
    if(empty($extypeid)) $extypeid = 0;
    if(empty($islisten)) $islisten = 0;

    $query = " UPDATE `#@__co_note` SET
    `channelid`='$channelid',
    `notename`='$notename',
    `sourcelang`='$sourcelang',
    `uptime`='$uptime',
    `isok`='1',
    `usemore`='$usemore',
    `listconfig`='$listconfig',
    `itemconfig`='$itemconfig'
     WHERE nid='$nid'; ";
    $rs = $dsql->ExecuteNoneQuery($query);
    echo $dsql->GetError();
    if($donext=='save')
    {
        ShowMsg("成功保存配置！","co_main.php");
    }
    else
    {
        require_once(dirname(__FILE__)."/co_test_rule.php");
    }
    exit();
}
$arr = $dsql->GetOne("SELECT * FROM `#@__co_note` WHERE nid='$nid'");

//如果内容规则未设置，转到设置内容规则的表单
if(trim($arr['itemconfig'])=='')
{
    $channelid = $arr['channelid'];
    $nid = $arr['nid'];
    if(!isset($previewurl)) $previewurl = '';

    require_once(GEMELINC.'/gemeltag.class.php');
    require_once(GEMELADMIN."/templets/co_add_step2.htm");
    exit();
}
$usemore = $arr['usemore'];
$notename = $arr['notename'];
$notes = array();
$dsql->FreeResult();
$dtp = new GemelTagParse();
$dtp2 = new GemelTagParse();
$dtp->LoadString($arr['listconfig'].$arr['itemconfig']);
$channelid = $arr['channelid'];
$notes['keywordtrim'] = '';
$notes['descriptiontrim'] = '';
foreach($dtp->CTags as $tid => $ctag)
{
    if($ctag->GetName()=='item')
    {
        $f = $ctag->GetAtt('field');
        $notes[$f]['item'] = $ctag;
        $dtp2->LoadString($ctag->GetInnerText());
        $notes[$f]['trim'] = '';
        foreach($dtp2->CTags as $ctag2)
        {
            if($ctag2->GetName()=='trim')
            {
                $notes[$f]['trim'] .= "{gemel:trim replace=\"".$ctag2->GetAtt('replace')."\"}".$ctag2->GetInnerText()."{/gemel:trim}\r\n";
            }
            else if($ctag2->GetName()=='match')
            {
                $notes[$f]['match'] = $ctag2->GetInnerText()."\r\n";
            }
            else if($ctag2->GetName()=='function')
            {
                $notes[$f]['function'] = $ctag2->GetInnerText()."\r\n";
            }
        }
    }
    else if($ctag->GetName()=='keywordtrim')
    {
        $notes['keywordtrim'] = $ctag->GetInnerText();
    }
    else if($ctag->GetName()=='descriptiontrim')
    {
        $notes['descriptiontrim'] = $ctag->GetInnerText();
    }
    else if($ctag->GetName()=='noteinfo')
    {
        $noteinfo = $ctag;
    }
    else if($ctag->GetName()=='listrule')
    {
        $listrule = $ctag;
        $dtp2->LoadString($ctag->GetInnerText());
        $addurls = $dtp2->GetTagByName('addurls');
        $regxrule = $dtp2->GetTagByName('regxrule');
        $areastart = $dtp2->GetTagByName('areastart');
        $areaend = $dtp2->GetTagByName('areaend');
        $batchrule = $dtp2->GetTagByName('batchrule');
    }
    else if($ctag->GetName()=='sppage')
    {
        $sppage = $ctag;
    }
    else if($ctag->GetName()=='previewurl')
    {
        $previewurl = trim($ctag->GetInnerText());
    }
}
if(!isset($previewurl)) $previewurl = '';
require_once(GEMELADMIN.'/templets/co_edit.htm');