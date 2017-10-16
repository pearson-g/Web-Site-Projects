<?php
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) );

require_once(GEMELADMIN.'/../functions/common.inc.php');
require_once(GEMELINC.'/arc.partview.class.php');

$aa=$_REQUEST['sendlist'];
//$aa=7;
$flag=$_REQUEST['flag'];
if($flag=='true'){
	$pv = new PartView();
	$pv->SetTemplet(GEMELROOT."/templets/gemelsoft/email.htm");
	$pv->Display();
}else{
   echo '<script>alert("Submission Failed!");history.go(-1);</script>';
   exit();
}
?>