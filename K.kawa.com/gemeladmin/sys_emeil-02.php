<?php
/**
 * 系统修复工具
 *
 * @version        $Id: sys_repair.php 1 22:28 2010年7月20日Z 
 */
require_once(dirname(__FILE__)."/../functions/common.inc.php");
require_once(dirname(__FILE__).'/config.php');
CheckPurview('sys_ArcBatch');
require_once(dirname(__FILE__).'/../functions/oxwindow.class.php');
//ShowMsg("目前暂不需要此工具，以后有需要系统会进行自动升级这个程序！<br /><a href='index_body.php'>&lt;&lt;点击此返回&gt;&gt;</a>", "javascript:;");
//exit();
if(empty($dopost))
{
    $win = new OxWindow();
    $win->Init("sys_repair.php", "js/blank.js", "POST' enctype='multipart/form-data' ");
    $win->mainTitle = "发送邮件";
    $wecome_info = "<a href='index_body.php'>系统主页</a> &gt;&gt; 发送订阅邮件";
    $win->AddTitle('本工具用于发送订阅邮件');
    $msg = "
    <table width='98%' border='0' cellspacing='0' cellpadding='0' align='center'>
  <tr>
    <td height='250' valign='top'>
    <br />
   
    <br />
    <br />
    <a href='sys_emeil.php?dopost=1' style='font-size:18px;color:red'><b>点击此开始发送订阅邮件&gt;&gt;</b></a>
    <br /><br /><br />
    </td>
  </tr>
 </table>
    ";
    $win->AddMsgItem("<div style='padding-left:20px;line-height:150%'>$msg</div>");
    $winform = $win->GetWindow('hand','');
    $win->Display();
    exit();
}
/*-------------------
发送订阅邮件
function 1_test_db() {  }
--------------------*/
else if($dopost==1)
{
    $mailtitle = 'Hello, you have a new message from  your website';
    $mailbody = "aaaaa";
	//获取所有订阅者邮箱
	$sql = "Select * From gemel_subscribe";
	$dsql->Execute('subscribe',$sql);
	$subscribe = array();
	while($arr = $dsql->GetArray('subscribe'))
	{
		$subscribe[] = $arr;
	}
	foreach( $subscribe as $val){
		$smtp_email = $val['email'];

		if($cfg_sendmail_bysmtp == 'Y' && !empty($cfg_smtp_server))
		{
			$mailtype = 'HTML';
			require_once(GEMELINC.'/mail.class.php');
			$smtp = new smtp($cfg_smtp_server,$cfg_smtp_port,true,$cfg_smtp_usermail,$cfg_smtp_password);
			$smtp->debug = true;
			$smtp->sendmail($smtp_email,$cfg_webname,$cfg_smtp_usermail, $mailtitle, $mailbody, $mailtype);
		}
		else
		{
			$mailtitle= mb_convert_encoding($mailtitle, "gb2312", "utf-8");
			$headers = "Content-type:text/html;charset=utf-8" . "\r\n";
			$aa = mail($smtp_email, $mailtitle, $mailbody, $headers);
            var_dump($aa);
		}
	}
}
