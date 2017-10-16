<?php
/**
 * 后台登陆
 *
 * @version        $Id: login.php 1 8:48 2010年7月13日Z 
 */
define('GEMELADMIN', str_replace("\\", '/', dirname(__FILE__) ) ); 
require_once(dirname(__FILE__).'/../functions/common.inc.php');
require_once(GEMELADMIN.'/conn.php');
require_once(GEMELINC.'/userlogin.class.php');
if(empty($dopost)) $dopost = '';

//检测安装目录安全性
if( is_dir(dirname(__FILE__).'/../install') )
{
    if(!file_exists(dirname(__FILE__).'/../install/install_lock.txt') )
    {
      $fp = fopen(dirname(__FILE__).'/../install/install_lock.txt', 'w') or die('安装目录无写入权限，无法进行写入锁定文件，请安装完毕删除安装目录！');
      fwrite($fp,'ok');
      fclose($fp);
    }
    //为了防止未知安全性问题，强制禁用安装程序的文件
    if( file_exists("../install/index.php") ) {
        @rename("../install/index.php", "../install/index.php.bak");
    }
    if( file_exists("../install/module-install.php") ) {
        @rename("../install/module-install.php", "../install/module-install.php.bak");
    }
	$fileindex = "../install/index.html";
	if( !file_exists($fileindex) ) {
		$fp = @fopen($fileindex,'w');
		fwrite($fp,'dir');
		fclose($fp);
	}
}



//登录检测
$admindirs = explode('/',str_replace("\\",'/',dirname(__FILE__)));
$admindir = $admindirs[count($admindirs)-1];
if($dopost=='login')
{
    $validate = empty($validate) ? '' : strtolower(trim($validate));
    $svali = strtolower(GetCkVdValue());
    if(($validate=='' || $validate != $svali) && preg_match("/6/",$safe_gdopen)){
        ResetVdValue();
        ShowMsg('验证码不正确!','login.php',0,1000);
        exit;
    } else {
        $cuserLogin = new userLogin($admindir);
        if(!empty($userid) && !empty($pwd))
        {
            $res = $cuserLogin->checkUser($userid,$pwd);

            //success
            if($res==1)
            {
                $cuserLogin->keepUser();
                if(!empty($gotopage))
                {
                    ShowMsg('成功登录，正在转向管理管理主页！',$gotopage);
                    exit();
                }
                else
                {
                    ShowMsg('成功登录，正在转向管理管理主页！',"index.php");
                    exit();
                }
            }

            //error
            else if($res==-1)
            {
				ShowMsg('你的用户名不存在!',-1,0,1000);
				exit;
            }
            else
            {
                ShowMsg('你的密码错误!',-1,0,1000);
				exit;
            }
        }

        //password empty
        else
        {
            ShowMsg('用户和密码没填写完整!',-1,0,1000);
			exit;
        }
    }
}

include('templets/login.htm');