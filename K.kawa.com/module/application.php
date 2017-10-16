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
$address = $_POST['address'];
$living_years=$_POST['living_years'];
$zip = $_POST['zip'];//邮编
$telephone = $_POST['phone'];//移动电话
$tel=$_POST['tel'];//固定电话
$email = $_POST['email'];
$birth = $_POST['birth'];//出生日期
$marital = $_POST['marital'];//婚姻状态
$persons = $_POST['persons'];//受供养人数
$name_age = $_POST['name_age'];//受供养人姓名及年龄
$commercial = $_POST['commercial'];//商业资料
$working = $_POST['working'];//工作背景
$f_choice = $_POST['f_choice'];//第一选择
$s_choice = $_POST['s_choice'];//第二选择
$money = $_POST['money'];//投资金额



//提示信息及语言
if(!isset($lang) || $lang =='cn')
{
	$error = '您提交的信息不完整,请重新提交!';
	$ok ='您的信息已成功提交,我们会尽快与您取得联系,谢谢!';
	$mailtitle = '您好,接收到来自网站上的留言信息';
	$vdcode_error = '验证码错误！';
	


	$lang_name = '姓名：';
	$lang_sex="性别：";
	$lang_address = '地址：';
	$lang_living_years = '居住年限：';
	$lang_zip = '邮编：';
	$lang_telephone = '移动电话：';
	$lang_tel = '固定电话：';
	$lang_email = '邮箱：';
	$lang_birth = '出生日期：';
	$lang_marital = '婚姻状态：';
    $lang_persons = '受供养人数：';
	$lang_name_age = '受供养人姓名及年龄：';
	$lang_commercial = '商业资料：';
	$lang_working = '工作背景：';
	$lang_f_choice = '城市第一选择：';
	$lang_s_choice = '城市第二选择：';
	$lang_money = '投资金额：';
	
	
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
$mailbody.= $lang_address.$address."<br/>";
$mailbody.= $lang_living_years.$living_years."<br/>";
$mailbody.= $lang_zip.$zip."<br/>";
$mailbody.= $lang_telephone.$phone."<br/>";
$mailbody.= $lang_tel.$tel."<br/>";
$mailbody.= $lang_email.$email."<br/>";
$mailbody.= $lang_birth.$birth."<br/>";
$mailbody.= $lang_marital.$marital."<br/>";
$mailbody.= $lang_persons.$persons."<br/>";
$mailbody.= $lang_name_age.$name_age."<br/>";
$mailbody.= $lang_commercial.$commercial."<br/>";
$mailbody.= $lang_working.$working."<br/>";
$mailbody.= $lang_f_choice.$f_choice."<br/>";
$mailbody.= $lang_s_choice.$s_choice."<br/>";
$mailbody.= $lang_money.$money."<br/>";


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