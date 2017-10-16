<?php
require_once(dirname(__FILE__)."/../functions/common.inc.php"); 
$email = $_POST['email'];
if( empty($email) ){
	ShowMsg('Your email is not complete.', '-1');
	exit();
}
$row = $dsql->GetOne("Select email From `#@__subscribe` where email='$email' ");
if($row){
	ShowMsg('Your email has been subscribed.', '-1');
	exit();
}
$res = $dsql->ExecuteNoneQuery("INSERT into `#@__subscribe` (email) values('$email') ");

if($res){
	ShowMsg('Subscription success.', '-1');
	exit();
}else{
	ShowMsg('Subscription Failed.', '-1');
	exit();
}
?>