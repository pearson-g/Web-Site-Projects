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
$company = $_POST['company'];
$add = $_POST['add'];
$tel = $_POST['tel'];
$email = $_POST['email'];
$education = $_POST['education'];
$department = $_POST['department'];
$zip_code = $_POST['zip_code'];
$post = $_POST['post'];
$direction = $_POST['direction'];
$brand = $_POST['brand'];
$no = $_POST['no'];
$p_name = $_POST['p_name'];
$num = $_POST['num'];
$con = $_POST['con'];
$vdcode=$_POST['vdcode'];


//提示信息及语言
if(!isset($lang) || $lang =='cn')
{
	$error = '您提交的信息不完整,请重新提交!';
	$ok ='您的信息已成功提交,我们会尽快与您取得联系,谢谢!';
	$mailtitle = '您好,接收到来自网站上的留言信息';
	$vdcode_error = '验证码错误！';
	
	//标题项
	$lang_name = '姓名：';
	$lang_company = '单位：';
	$lang_add = '地址：';
	$lang_tel = '电话：';
	$lang_email = 'email：';
	$lang_education = '学历：';
	$lang_department = '部门/实验室：';
	$lang_zip_code = '邮政编码：';
	$lang_post = '职务/职称：';
	$lang_direction = '主要研究方向：';
	$lang_brand = '样品品牌：';
	$lang_no = '货 号：';
	$lang_p_name = '品 名：';
	$lang_num = '申请数量：';
	$lang_con = '预计购买情况：';	
}
elseif($lang =='en')
{
	$error = 'Information is not complete.';
	$ok ='Your message has been submitted, please wait for the administrator reply, thank you!';
	$mailtitle = 'Hello, you have a new message from  your website';
	$vdcode_error = 'Verification code error!';
	
	//标题项
	$lang_name = 'Name：';
	$lang_company = 'Company：';
	$lang_tel = 'Tel：';
	$lang_fax = 'Fax：';
	$lang_email = 'Email：';
	$lang_address = 'Address：';
	$lang_content = 'Content：';
}
else
{
	$error = 'Information is not complete.';
	$ok ='Your message has been submitted, please wait for the administrator reply, thank you!';
	$mailtitle = 'Hello, you have a new message from  your website';
	$vdcode_error = 'Verification code error!';
	
	//标题项
	$lang_name = 'Name：';
	$lang_company = 'Company：';
	$lang_tel = 'Tel：';
	$lang_fax = 'Fax：';
	$lang_email = 'Email：';
	$lang_address = 'Address：';
	$lang_content = 'Content：';
}


//检查验证码
$svali = GetCkVdValue();
if(strtolower($vdcode)!=$svali || $svali=='')
{
	ResetVdValue();
	ShowMsg($vdcode_error, '-1');
	exit();
}

//检查信息完整性
/*if($name=='' || $telephone=='' || $email=='' || $content=='')
{
	ShowMsg($error, '-1');
	exit();
}*/

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
$mailbody = $lang_company.$company."<br/>";
$mailbody = $lang_add.$add."<br/>";
$mailbody = $lang_tel.$tel."<br/>";
$mailbody = $lang_email.$email."<br/>";
$mailbody = $lang_education.$education."<br/>";
$mailbody = $lang_department.$department."<br/>";
$mailbody = $lang_zip_code.$zip_code."<br/>";
$mailbody = $lang_post.$post."<br/>";
$mailbody = $lang_direction.$direction."<br/>";
$mailbody = $lang_brand.$brand."<br/>";
$mailbody = $lang_no.$no."<br/>";
$mailbody = $lang_p_name.$_name."<br/>";
$mailbody = $lang_num.$num."<br/>";
$mailbody = $lang_con.$con;


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