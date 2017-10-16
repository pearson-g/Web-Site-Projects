<?php
/**
 * @version        $Id: story_edit.php 1 9:02 2010年9月25日
 */

require_once(dirname(__FILE__). "/config.php");
CheckPurview('story_Edit');
if(!isset($action)) $action = '';


//读取所有栏目
$dsql->SetQuery("SELECT id,classname,pid,rank FROM #@__story_catalog ORDER BY rank ASC");
$dsql->Execute();
$ranks = Array();
$btypes = Array();
$stypes = Array();
while($row = $dsql->GetArray())
{
    if($row['pid']==0)
    {
        $btypes[$row['id']] = $row['classname'];
    }
    else
    {
        $stypes[$row['pid']][$row['id']] = $row['classname'];
    }
    $ranks[$row['id']] = $row['rank'];
}
$lastid = $row['id'];
$msg = '';
$books = $dsql->GetOne("SELECT S.*,A.membername FROM #@__arcrank AS A LEFT JOIN #@__story_books AS S ON A.rank=S.arcrank WHERE S.bid='$bookid' ");
require_once(GEMELADMIN. '/templets/story_edit.htm');
?>