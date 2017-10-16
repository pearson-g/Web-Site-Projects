<?php
/**
 *
 * 留言发信
 *
 * @version        $Id: email.php 2012年12月14日 by heibian
*/
require_once(dirname(__FILE__)."/../functions/common.inc.php");


//初始化信息
$name = $_POST['name'];
$sex = $_POST['sex'];
$age = $_POST['age'];
$relationship = $_POST['relationship'];
$address = $_POST['address'];
$telephone = $_POST['phone'];
$quedao=$_POST['qudao'];
//$company = $_POST['company'];
//$fax = $_POST['fax'];
//$email = $_POST['email'];
//$content = $_POST['content'];
//$lang = $_POST['lang'];


//提示信息及语言
if(!isset($lang) || $lang =='cn')
{
	$error = '您提交的信息不完整,请重新提交!';
	$ok ='您的信息已成功提交,我们会尽快与您取得联系,谢谢!';
	$mailtitle = '您好,接收到来自网站上的留言信息';
	$vdcode_error = '验证码错误！';
	
	//标题项
	$lang_name = '孩子姓名：';
	$lang_sex="孩子性别：";
	$lang_age = '孩子年龄：';
	$lang_tel = '电话：';
	$lang_relationship = '与孩子关系：';
	$lang_quedao = '进入渠道：';
	$lang_address = '地址：';
	
}

//检查信息完整性
if($name=='' || $telephone=='')
{
	ShowMsg($error, '-1');
	exit();
}

//初始化返回地址
if(!isset($return) || $return=='')
{
	$return = '/';
}
else
{
	$return = trim($return);
}

//邮件内容
$mailbody = $lang_name.$name."<br/>";
$mailbody.= $lang_sex.$sex."<br/>";
$mailbody.= $lang_age.$age."<br/>";
$mailbody.= $lang_relationship.$relationship."<br/>";
$mailbody.= $lang_address.$address."<br/>";
$mailbody.= $lang_tel.$telephone;



if($cfg_sendmail_bysmtp == 'Y' && !empty($cfg_smtp_server))
{
	$mailtype = 'HTML';
	require_once(GEMELINC.'/mail.class.php');
	$smtp = new smtp($cfg_smtp_server,$cfg_smtp_port,true,$cfg_smtp_usermail,$cfg_smtp_password);
	$smtp->debug = false;
	$smtp->sendmail($smtp_email,$cfg_webname,$cfg_smtp_usermail, $mailtitle, $mailbody, $mailtype);
}
else
{
	$mailtitle= mb_convert_encoding($mailtitle, "gb2312", "utf-8");
	$headers = "Content-type:text/html;charset=utf-8" . "\r\n";
	@mail($smtp_email, $mailtitle, $mailbody, $headers);
}

//输出提示信息
echo '<script language="javascript" type="text/javascript">alert("'.$ok.'");window.location.href="'.$return.'";</script>';
exit();	