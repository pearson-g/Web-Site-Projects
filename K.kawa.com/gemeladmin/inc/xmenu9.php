<?php
require_once(dirname(__FILE__)."/../config.php");

//载入可发布频道
$addset = '';

//检测可用的内容模型
if($cfg_admin_channel = 'array' && count($admin_catalogs) > 0)
{
	$admin_catalog = join(',', $admin_catalogs);
	$dsql->SetQuery(" Select channeltype From `#@__arctype` where id in({$admin_catalog}) group by channeltype ");
}
else
{
	$dsql->SetQuery(" Select channeltype From `#@__arctype` group by channeltype ");
}
$dsql->Execute();
$candoChannel = '';
while($row = $dsql->GetObject())
{
	$candoChannel .= ($candoChannel=='' ? $row->channeltype : ','.$row->channeltype);
}
if(empty($candoChannel)) $candoChannel = 1;
$dsql->SetQuery("Select id,typename,addcon,mancon From `#@__channeltype` where id in({$candoChannel}) And id<>-1 And isshow=1 order by id asc");
$dsql->Execute();
while($row = $dsql->GetObject())
{
	$addset .= "  <m:item name='{$row->typename}' ischannel='1' link='{$row->mancon}?channelid={$row->id}' linkadd='{$row->addcon}?channelid={$row->id}' channelid='{$row->id}' rank='' target='main' />\r\n";
}
//////////////////////////
$menusMain = "
-----------------------------------------------
<m:top item='1_' name='频道模型' display='block' rank='t_List,t_AccList,c_List,temp_One' class='pdmx'>
  <m:item name='内容模型管理' link='mychannel_main.php' rank='c_List' target='main' class='nrmxgl' />
</m:top>
-----------------------------------------------
";
?>