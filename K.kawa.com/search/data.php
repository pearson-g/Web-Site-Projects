<?php
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) );

require_once(GEMELADMIN.'/../functions/common.inc.php');
require_once(GEMELINC.'/arc.partview.class.php');


$flag=$_POST['flag'];
$str_did=$_POST['did'];
if($flag=='true'){
	$newarray=explode(',',$str_did);
	$where_id.="(";
    foreach($newarray as $key=>$value){
        $where_id.=" OR s.id=$value";
    }
    $where_id.=")";
    $where_id = preg_replace('/OR /', '', $where_id, 1);
    $sql="SELECT s.id,s.title,s.shorttitle,s.description,e.typename,s.typeid,s.litpic FROM `gemel_archives` as s LEFT JOIN `gemel_arctype` as e ON e.id=s.typeid WHERE $where_id";
    $dsql->Execute('com',$sql);
	while($arr = $dsql->GetArray('com'))
	{
		$tyeid=$arr['id'];
	    $son_nav .="<li class='clear'>
	                   <div class='img'>
	                      <a href='/search/view.php?aid={$tyeid}&dopost=viewArchives' title='{$arr["title"]}' target='_blank'>
					        <img src='{$arr["litpic"]}' title='{$arr["title"]}' alt='{$arr["title"]}' width='50' height='50'/>
					      </a>
	                   </div>
				       <div class='text'>
				           <h2><a href='/search/view.php?aid={$tyeid}&dopost=viewArchives' title='{$arr["title"]}'  target='_blank'>{$arr["title"]}</a></h2>
				           <em>Delete</em>
				       </div>
				       <input type='hidden' name='delete_id' class='delete_id' value='{$tyeid}'/>	    
				    </li>";	    
	}
	echo $son_nav;
	exit();
}else{
   echo 'No resources';
   exit();
}
?>