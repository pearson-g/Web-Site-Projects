<?php
if(!isset($GLOBALS['_vars'])) $GLOBALS['_vars'] = array(); 
$fields = array();
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $cfg_soft_lang; ?>">
<title>采集内容管理</title>
<link href="css/base.css" rel="stylesheet" type="text/css">
<script language="javascript">

//获得选中文件的文件名
function getCheckboxItem(){
	 var allSel="";
	 if(document.form1.logs.value) return document.form1.logs.value;
	 for(i=0;i<document.form1.logs.length;i++)
	 {
		 if(document.form1.logs[i].checked){
			 if(allSel=="")
				 allSel=document.form1.logs[i].value;
			 else
				 allSel=allSel+"`"+document.form1.logs[i].value;
		 }
	 }
	 return allSel;	
}

function ReSel(){
	for(i=0;i<document.form1.logs.length;i++){
		if(document.form1.logs[i].checked) document.form1.logs[i].checked = false;
		else document.form1.logs[i].checked = true;
	}
}

function DelSel(){
	 var nid = getCheckboxItem();
	 if(nid==""){
		  alert("请选择项目!\r\n");
		  return ;
	 }
	 location.href = "log_edit.php?dopost=del&ids="+nid;
}

function ClearLog(){
	 location.href = "log_edit.php?dopost=clear";
}

</script>
</head>
<body background='images/allbg.gif' leftmargin='8' topmargin='8'>
<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#ccc" align="center">
  <tr> 
    <td height="28" colspan="7" background='images/tbg.gif'>
    	<table width="96%" border="0" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="20%" height="18" style="padding-left:10px;"><strong>管理系统日志：</strong></td>
          <td width="80%" align="right">&nbsp; </td>
        </tr>
      </table></td>
  </tr>
  <tr align="center" bgcolor="#ffffff"> 
    <td colspan="7">
	  <table width="90%" border="0" cellspacing="0" cellpadding="0">
     <form name='formsearch'>
		  <tr>
       <td>
		  管理员：
		  <select name="adminid" id="adminid" style="width:90px">
		  <option value="0" selected>--全部--</option>
		  <?php echo $adminlist?>
		  </select>
		  IP地址：
      <input name="cip" type="text" id="cip" size="15" style="width:100px" />
      时间： 
      <select name="dtime" id="dtime">
              <option value="0" selected>--全部--</option>
              <option value="7">一周内</option>
              <option value="15">15天内</option>
              <option value="30">30天以内</option>
              <option value="60">60天以内</option>
        </select> 
			   &nbsp;
        <input type="submit" name="Submit" value="搜索" />
        </td>
      </tr>
		</form>
    </table>
   </td>
  </tr>
  <tr align="center" bgcolor="#FFFFFF"> 
    <td width="8%">选择</td>
    <td width="11%">管理员</td>
    <td width="15%">访问文件</td>
    <td width="8%">方式</td>
    <td width="14%">访问IP</td>
    <td width="16%">时间</td>
    <td width="28%">Query参数</td>
  </tr>
  <form name="form1">
<?php
$atts = array();
$atts['tagname'] = 'datalist';
$blockValue = $this->refObj->GetArcList($atts,$this->refObj,$fields); 
if(is_array($blockValue)){
foreach( $blockValue as $key=>$fields )
{
?>
    <tr align="center" bgcolor="#FFFFFF" height="26" align="center" onMouseMove="javascript:this.bgColor='#F9FCFD';" onMouseOut="javascript:this.bgColor='#FFFFFF';"> 
      <td>
      	<input name='logs' type='checkbox' class='np' id="logs" value='<?php echo $fields['lid']; ?>' />
      </td>
      <td> 
        <?php echo $fields['userid']; ?>
      </td>
      <td>
      	<input class="np" type="text" value="<?php echo $fields['filename']; ?>" name="t0" style="width:100px" />
      </td>
      <td> 
        <?php echo $fields['method']; ?>
      </td>
      <td> 
        <?php echo $fields['cip']; ?>
      </td>
      <td> 
        <?php echo MyDate('y/m/d H:i:s',$fields['dtime']); ?>
      </td>
      <td>
      	<input class="np" type="text" value="<?php echo $fields['query']; ?>" name="t1" style="width:280px" />
      </td>
    </tr>
<?php
}
}?>
  </form>
  <tr> 
    <td height="30" colspan="7" bgcolor="#FCFDF7">
    	&nbsp; <input type="button" name="b5" value="反选" class="coolbg np" onClick="ReSel();" /> 
      &nbsp; <input type="button" name="b6" value="删除所选"  style="width:80px" class="coolbg np" onClick="DelSel();" /> 
      &nbsp; <input type="button" name="b7" value="清空所有日志"  style="width:100px" class="coolbg np" onClick="ClearLog();" /> 
    </td>
  </tr>
  <tr bgcolor="#F9FCFD"> 
    <td height="24" colspan="7" align="center"> 
      <?php
$atts = array();
$atts['tagname'] = 'pagelist';
$atts['listsize'] = '5';
 echo $this->refObj->GetPageList($atts,$this->refObj,$fields); 
?>

    </td>
  </tr>
</table>
</body>
</html>