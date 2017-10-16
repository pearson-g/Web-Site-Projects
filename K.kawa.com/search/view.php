<?php 
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) );
require_once(GEMELADMIN.'/../functions/common.inc.php');
require_once(GEMELADMIN.'/../gemeladmin/inc/inc_batchup.php');

/*--------------------------
//浏览文档
function viewArchives(){ }
---------------------------*/

if($dopost=="viewArchives")
{
    $aid = preg_replace("#[^0-9]#", '', $aid);
    //获取主表信息
    $query = "SELECT arc.*,ch.maintable,ch.addtable,ch.issystem,ch.editcon,
              tp.typedir,tp.typename,tp.corank,tp.namerule,tp.namerule2,tp.ispart,tp.moresite,tp.sitepath,tp.siteurl
           FROM `#@__arctiny` arc
           LEFT JOIN `#@__arctype` tp ON tp.id=arc.typeid
           LEFT JOIN `#@__channeltype` ch ON ch.id=tp.channeltype
           WHERE arc.id='$aid' ";
    $trow = $dsql->GetOne($query);
    $trow['maintable'] = ( trim($trow['maintable'])=='' ? '#@__archives' : trim($trow['maintable']) );
    if($trow['issystem'] != -1)
    {
        $arcQuery = "SELECT arc.*,tp.typedir,tp.typename,tp.corank,tp.namerule,tp.namerule2,tp.ispart,tp.moresite,tp.sitepath,tp.siteurl
                   FROM `{$trow['maintable']}` arc LEFT JOIN `#@__arctype` tp on arc.typeid=tp.id
                   LEFT JOIN `#@__channeltype` ch on ch.id=arc.channel WHERE arc.id='$aid' ";
        $arcRow = $dsql->GetOne($arcQuery);
		PutCookie('GemelUserID',$arcRow['mid'],1800);
		PutCookie('GemelLoginTime',time(),1800);
        if($arcRow['ismake']==-1 || $arcRow['corank']!=0 || $arcRow['arcrank']!=0 || ($arcRow['typeid']==0 && $arcRow['channel']!=-1) || $arcRow['money']>0)
        {
            echo "<script language='javascript'>location.href='{$cfg_phpurl}/view.php?aid={$aid}';</script>";
            exit();
        }
    }
    else
    {
        $arcRow['id'] = $aid;
        $arcRow['typeid'] = $trow['typeid'];
        $arcRow['senddate'] = $trow['senddate'];
        $arcRow['title'] = '';
        $arcRow['ismake'] = 1;
        $arcRow['arcrank'] = $trow['corank'];
        $arcRow['namerule'] = $trow['namerule'];
        $arcRow['typedir'] = $trow['typedir'];
        $arcRow['money'] = 0;
        $arcRow['filename'] = '';
        $arcRow['moresite'] = $trow['moresite'];
        $arcRow['siteurl'] = $trow['siteurl'];
        $arcRow['sitepath'] = $trow['sitepath'];
    }
    $arcurl  = GetFileUrl($arcRow['id'],$arcRow['typeid'],$arcRow['senddate'],$arcRow['title'],$arcRow['ismake'],$arcRow['arcrank'],
    $arcRow['namerule'],$arcRow['typedir'],$arcRow['money'],$arcRow['filename'],$arcRow['moresite'],$arcRow['siteurl'],$arcRow['sitepath']);
    $arcfile = GetFileUrl($arcRow['id'],$arcRow['typeid'],$arcRow['senddate'],$arcRow['title'],
    $arcRow['ismake'],$arcRow['arcrank'],$arcRow['namerule'],$arcRow['typedir'],$arcRow['money'],$arcRow['filename']);
    if(preg_match("#^http:#", $arcfile))
    {
        $arcfile = preg_replace("#^http:\/\/([^\/]*)\/#i", '/', $arcfile);
    }
    $truefile = GetTruePath().$arcfile;
    if(!file_exists($truefile))
    {
        MakeArt($aid,TRUE);
    }
    //echo "<script language='javascript'>location.href='$arcurl"."?".time()."';</script>";
    echo "<script language='javascript'>location.href='$arcurl';</script>";
    exit();
}else{
	echo "<script type='text/javascript'>alert('View Failure!');location.href='/';</script>";
	exit();	
}
?>