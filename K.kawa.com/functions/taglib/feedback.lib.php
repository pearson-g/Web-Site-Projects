<?php
if(!defined('GEMELINC'))
{
    exit("Warning...");
}
/**
 * 调用最新评论
 *
 * @version        $Id: feedback.lib.php 1 9:29 2010年7月6日Z
 */
 

 
function lib_feedback(&$ctag,&$refObj)
{
    global $dsql;
    $attlist="row|12,titlelen|24,infolen|100";
    FillAttsDefault($ctag->CAttribute->Items,$attlist);
    extract($ctag->CAttribute->Items, EXTR_SKIP);
    $innertext = trim($ctag->GetInnerText());
    $totalrow = $row;
    $revalue = '';
    if(empty($innertext))
    {
        $innertext = GetSysTemplets('tag_feedback.htm');
    }
    $wsql = " where ischeck=1 ";
    $equery = "SELECT * FROM `#@__feedback` $wsql ORDER BY id DESC LIMIT 0 , $totalrow";
    $ctp = new GemelTagParse();
    $ctp->SetNameSpace('field','[',']');
    $ctp->LoadSource($innertext);

    $dsql->Execute('fb',$equery);
    while($arr=$dsql->GetArray('fb'))
    {
        $arr['title'] = cn_substr($arr['arctitle'],$titlelen);
        $arr['msg'] = jsTrim(Html2Text($arr['msg']),$infolen);
        foreach($ctp->CTags as $tagid=>$ctag)
        {
            if(!empty($arr[$ctag->GetName()]))
            {
                $ctp->Assign($tagid,$arr[$ctag->GetName()]);
            }
        }
        $revalue .= $ctp->GetResult();
    }
    return $revalue;
}

function jsTrim($str,$len)
{
    $str = preg_replace("/{quote}(.*){\/quote}/is",'',$str);
    $str = str_replace('&lt;br/&gt;',' ',$str);
    $str = cn_substr($str,$len);
    $str = preg_replace("#['\"\r\n]#", "", $str);
    return $str;
}