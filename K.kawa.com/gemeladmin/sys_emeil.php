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
require (dirname(__FILE__)."/../contact/class.phpmailer.php");
require (dirname(__FILE__)."/../contact/class.smtp.php");
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
  <tr><form name='email' action='sys_emeil.php?dopost=1' method='post'>
    <td height='250' valign='top'>
    <br />
   	 
    <br />
    <br />
    <a href='sys_emeil.php?dopost=1' style='font-size:18px;color:red'><b>点击此开始发送订阅邮件&gt;&gt;</b></a>
    <br /><br /><br />
    </td>
    </form>
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
    $mail = new PHPMailer();
    $mail->CharSet = "utf8";
    $mail->Encoding = "base64";
    $mail->SMTPDebug = 1;
    $mail->IsSendmail();  // tell the class to use Sendmail 告诉类使用Sendmail
    $mail->From = "tsdledco@box761.bluehost.com"; 
    $mail->FromName = "BYM";
    $mail->SMTPDebug=true ;  
    /*$mail->AddAddress("chengpeng@gemel.cn");*/
      
  	//获取所有订阅者邮箱
  	$sql = "Select * From gemel_subscribe";
  	$dsql->Execute('subscribe',$sql);
  	$subscribe = array();
  	while($arr = $dsql->GetArray('subscribe'))
  	{
  		$subscribe[] = $arr;
  	}
    $sql1 = "Select content From gemel_arctype where id=11";
    $html = $dsql->GetOne($sql1);
    $mail->Subject = "Feedback";
    date_default_timezone_set('Asia/Shanghai');
    $time = date("Y-m-d H:i:s",time());
    $ip = get_ip();
  /*  print_r($subscribe);*/
  	foreach( $subscribe as $val){
      $id= $val['id'];
      $sign = md5($val['email']);
      //preg_replace("%<i style=\"float:left;cursor:pointer;>.*?<\/i>%s","%<i style=\"float:left;cursor:pointer;>.*??sign=".$sign."<\/i>%s",$mailbody);
      $temp = preg_replace("%<a class=\"subscribe\" href=.*?\" style=%s","<a class=\"subscribe\" href=\"http://www.hstoolsteel.com/subscribe/index.php?sign=".$sign."&i=".$id."\" style=",$html['content']);
      /*print_r($temp);exit;*/
          //$html = preg_replace(pattern, replacement, $html);
      $mail->AddAddress($val['email']);
      $mail->MsgHTML($temp);
      $mail->IsHTML(true); // send as HTML
      // $aa = mail($val['email'],'Feedback',$temp);
      // print_r($aa);
      $aa = $mail->Send();
     // var_dump($aa);
  	}
  echo '邮件已经发送完成！';






 /**
  *if(!$mail->Send()) {
  *         //header("Content-Type: text/html; charset=utf-8");
  *          echo "Mail Error :".$mail->ErrorInfo;
  *         echo '<script>alert("Submission Failed!");history.back();</script>';
  *      } else {
  *          //header("Content-Type: text/html; charset=utf-8");
  *         echo '<script>alert("Submitted successfully! Thank you for your feedback!");history.go(-1);</script>';
  *      }
  *
 */
}
function get_ip(){
   if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
       $ip = getenv("HTTP_CLIENT_IP");
   else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
       $ip = getenv("HTTP_X_FORWARDED_FOR");
   else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
       $ip = getenv("REMOTE_ADDR");
   else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
       $ip = $_SERVER['REMOTE_ADDR'];
   else
       $ip = "unknown";
   return($ip);
}
