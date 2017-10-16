<?php
/**
 * 采集规则添加
 *
 * @version        $Id: co_add.php 1 14:31 2010年7月12日Z 
 */
require_once(dirname(__FILE__)."/config.php");
CheckPurview('co_AddNote');
if(empty($step)) $step = "";
if(empty($exrule)) $exrule = "";

//选择操作频道类型，载入表单
/*----------------------
function Init(){ }
----------------------*/
if(empty($step))
{
    require_once(GEMELADMIN."/templets/co_add_step0.htm");
    exit();
}
else if($step==1)
{
    require_once(GEMELADMIN."/templets/co_add_step1.htm");
    exit();
}
//保存索引规则
/*----------------------
function Save_List(){ }
----------------------*/
else if($step==2)
{
    //对完整规则进行测试
    if($dopost=='test')
    {
        include(GEMELINC."/gemelcollection.class.php");
        $usemore = (!isset($usemore) ? 0 : 1);
        $listconfig = "{gemel:noteinfo notename=\\\"$notename\\\" channelid=\\\"$channelid\\\" macthtype=\\\"$macthtype\\\"
refurl=\\\"$refurl\\\" sourcelang=\\\"$sourcelang\\\" cosort=\\\"$cosort\\\" isref=\\\"$isref\\\" exptime=\\\"$exptime\\\" usemore=\\\"$usemore\\\" /}

{gemel:listrule sourcetype=\\\"$sourcetype\\\" rssurl=\\\"$rssurl\\\" regxurl=\\\"$regxurl\\\"
startid=\\\"$startid\\\" endid=\\\"$endid\\\" addv=\\\"$addv\\\" urlrule=\\\"$urlrule\\\"
 musthas=\\\"$musthas\\\" nothas=\\\"$nothas\\\" listpic=\\\"$listpic\\\" usemore=\\\"$usemore\\\"}
    {gemel:addurls}$addurls{/gemel:addurls}
    {gemel:batchrule}$batchrule{/gemel:batchrule}
    {gemel:regxrule}$regxrule{/gemel:regxrule}
    {gemel:areastart}$areastart{/gemel:areastart}
    {gemel:areaend}$areaend{/gemel:areaend}
{/gemel:listrule}\r\n";
        $tmplistconfig = stripslashes($listconfig);
        $notename = stripslashes($notename);
        if($sourcetype=='rss' && $refurl='')
        {
            $refurl = $rssurl;
        }
        $refurl = stripslashes($refurl);
        $errmsg = '';
        $freq = empty($freq)? "" : $freq;
        $extypeid = empty($freq)? "" : $extypeid;

        //测试规则
        if($sourcetype=='rss')
        {
            $links = GetRssLinks(stripslashes($rssurl));
            $demopage = $rssurl;
        }
        else
        {
            $links = array();
            $lists = GetUrlFromListRule($regxurl,stripslashes($addurls),$startid,$endid,$addv,$usemore,stripslashes($batchrule));
            if(isset($lists[0][0]))
            {
                $demopage = $lists[0][0];
                $dc = new GemelCollection();
                $dc->LoadListConfig($tmplistconfig);
                $listurl = '';
                $links = $dc->Testlists($listurl);
                $errmsg = $dc->errString;
            }
            else
            {
                $demopage = '没有匹配到适合的列表页!';
            }
        }
        require_once(GEMELADMIN."/templets/co_add_step1_test.htm");
        exit();
    }

    //从预览并提示进入下一步
    else
    {
        $row = $dsql->GetOne("SELECT nid,channelid FROM `#@__co_note` WHERE isok=0 AND notename LIKE '$notename' ");
        if(!is_array($row))
        {
            $uptime = time();
            $listconfig = urldecode($listconfig);
            $inquery = " INSERT INTO `#@__co_note`(`channelid`,`notename`,`sourcelang`,`uptime`,`cotime`,`pnum`,`isok`,`usemore`,`listconfig`,`itemconfig`)
               VALUES ('$channelid','$notename','$sourcelang','$uptime','0','0','0','$usemore','$listconfig',''); ";
            $rs = $dsql->ExecuteNoneQuery($inquery);
            if(!$rs)
            {
                ShowMsg("保存信息时出现错误！".$dsql->GetError(),"-1");
                exit();
            }
            $nid = $dsql->GetLastID();
        }
        else
        {
            $channelid=$row['channelid'];
            $uptime = time();
            if(empty($freq)) $freq = 1;
            if(empty($extypeid)) $extypeid = 0;
            if(empty($islisten)) $islisten = 0;
            $usemore = (!isset($usemore) ? 0 : 1);
            
            $query = " UPDATE `#@__co_note` SET
         `channelid`='$channelid',
         `notename`='$notename',
         `sourcelang`='$sourcelang',
         `uptime`='$uptime',
         `isok`='1',
         `usemore`='$usemore',
         `listconfig`='$listconfig' WHERE nid='$nid'; ";
            $dsql->ExecuteNoneQuery($query);
            $nid = $row['nid'];
        }
        if(!isset($previewurl)) $previewurl = '';
        require_once(GEMELINC.'/gemeltag.class.php');
        require_once(GEMELADMIN."/templets/co_add_step2.htm");
        exit();
    }
}

//保存文章规则
/*----------------------
function Save_Art(){ }
----------------------*/
else if($step==5)
{
    /*
    [previewurl] => ''
    */
    $itemconfig = "{gemel:sppage sptype=\\'$sptype\\' sptype=\\'$sptype\\' srul=\\'$srul\\' erul=\\'$erul\\'}$sppage{/gemel:sppage}\r\n";
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
        $trimstr = trim(str_replace('&nbsp;','#n#',$trimstr));
        $matchstr = trim(str_replace('&nbsp;','#n#',$matchstr));
        if($trimstr!='' && !preg_match("#{gemel:trim#i", $trimstr))
        {
            $trimstr = "    {gemel:trim}$trimstr{/gemel:trim}\r\n";
        }
        $itemconfig .= "{gemel:item field=\\'".$field."\\' value=\\'".$GLOBALS["value_".$field]."\\' isunit=\\'".$GLOBALS["isunit_".$field]."\\' isdown=\\'".$GLOBALS["isdown_".$field]."\\'}
   {gemel:match}".$matchstr."{/gemel:match}
   $trimstr
   {gemel:function}".$GLOBALS["function_".$field]."{/gemel:function}
{/gemel:item}\r\n";
    }
    $dsql->ExecuteNoneQuery("UPDATE `#@__co_note` SET itemconfig='$itemconfig' WHERE nid='$nid' ");
    //echo $dsql->GetError();
    require_once(GEMELINC.'/gemelcollection.class.php');
    require_once(GEMELADMIN."/templets/co_add_step2_test.htm");
    exit();
}
else if($step==6)
{
    $dsql->ExecuteNoneQuery("UPDATE `#@__co_note` SET isok='1' WHERE nid='$nid' ");
    ShowMsg("成功设置一个规则！","co_main.php");
    exit();
}
else if($step==7)
{
    $dsql->ExecuteNoneQuery("UPDATE `#@__co_note` SET isok='1' WHERE nid='$nid' ");
    ShowMsg("成功设置一个规则，现在转向采集页面！","co_gather_start.php?nid=$nid");
    exit();
}