<?php
require_once(dirname(__FILE__)."/../functions/common.inc.php");
require_once(GEMELINC."/datalistcp.class.php");
if(isset($arcID))
{
	$aid = $arcID;
}
$arcID = $aid = (isset($aid) && is_numeric($aid)) ? $aid : 0;
if($aid==0)
{
	exit(" Warning... ");
}

$querystring = "select fb.*,mb.userid,mb.face as mface,mb.spacesta,mb.scores from `#@__bookfeedback` fb
                 left join `#@__member_list` mb on mb.mid = fb.mid
                 where fb.aid='$aid' and fb.ischeck='1' order by fb.id desc";
$dlist = new DataListCP();
$dlist->pageSize = 6;
$dlist->SetTemplet(GEMELTEMPLATE.'/module/bookfeedback_templet_js.htm');
$dlist->SetSource($querystring);
$dlist->display();

?>