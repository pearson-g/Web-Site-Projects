<?php   if(!defined('GEMELINC')) exit('Warning...');
/**
 * 指定的单个栏目的链接标签
 *
 * @version        $Id: type.lib.php 1 9:29 2010年7月6日Z
 */ 
 
function lib_type(&$ctag,&$refObj)
{
    global $dsql,$envs;

    $attlist='typeid|0';
    FillAttsDefault($ctag->CAttribute->Items,$attlist);
    extract($ctag->CAttribute->Items, EXTR_SKIP);
    $innertext = trim($ctag->GetInnerText());

    if($typeid==0) {
        $typeid = ( isset($refObj->TypeLink->TypeInfos['id']) ? $refObj->TypeLink->TypeInfos['id'] : $envs['typeid'] );
    }

  if(empty($typeid)) return '';

    $row = $dsql->GetOne("SELECT id,typename,typedir,seotitle,content,typepic,typepic2,open_new,description,isdefault,ispart,defaultname,namerule2,moresite,siteurl,sitepath 
                          FROM `#@__arctype` WHERE id='$typeid' ");
    if(!is_array($row)) return '';
    if(trim($innertext)=='') $innertext = GetSysTemplets("part_type_list.htm");
    
    $dtp = new GemelTagParse();
    $dtp->SetNameSpace('field','[',']');
    $dtp->LoadSource($innertext);
    if(!is_array($dtp->CTags))
    {
        unset($dtp);
        return '';
    }
    else
    {
        $row['typelink'] = $row['typeurl'] = GetOneTypeUrlA($row);
        //检查是否新窗口打开
        if ($row['open_new']==1){
        	$row['open_new'] =' target="_blank"';
        }
        else 
        {
        	$row['open_new'] ='';
        }
        foreach($dtp->CTags as $tagid=>$ctag)
        {
            if(isset($row[$ctag->GetName()])) $dtp->Assign($tagid,$row[$ctag->GetName()]);
        }
        $revalue = $dtp->GetResult();
        unset($dtp);
        return $revalue;
    }
}