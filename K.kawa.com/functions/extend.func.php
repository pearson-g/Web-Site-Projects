<?php
//获取文章内容数目

function GetTotalArc($tid){
global $dsql;
$sql = GetSonIds($tid);
$row = $dsql->GetOne("Select count(id) as dd From `#@__archives` where typeid
in({$sql})");
return $row['dd'];
}

function litimgurls($imgid=0)
{
    global $lit_imglist,$dsql;
    //获取附加表
    $row = $dsql->GetOne("SELECT c.addtable FROM #@__archives AS a LEFT JOIN #@__channeltype AS c 
                                                            ON a.channel=c.id where a.id='$imgid'");
    $addtable = trim($row['addtable']);
    
    //获取图片附加表imgurls字段内容进行处理
    $row = $dsql->GetOne("Select imgurls From `$addtable` where aid='$imgid'");
    
    //调用inc_channel_unit.php中ChannelUnit类
    $ChannelUnit = new ChannelUnit(2,$imgid);
    
    //调用ChannelUnit类中GetlitImgLinks方法处理缩略图
    $lit_imglist = $ChannelUnit->GetlitImgLinks($row['imgurls']);
    
    //返回结果
    return $lit_imglist;
}

//对内容里的图片进行最大宽度处理，防止客户上传图片过大导致图片显示不全
/*
	$value 编辑器内容
	$width 显示区最大宽度
	需配合 config.js 使用
*/
/*调用例子 {gemel:field.content function='replace_image(@me,600)'/} */
function replace_image($value,$width='600'){
	if(empty($value))
	{
		$val ='';	
	}
	else 
	{
		$image ='<img onload="auto_image(this,'.$width.')"';
		$val=str_replace('<img', $image, $value);
	}
	return $val;
}

function RepStr($val)
{
	$capacity= '';
	$val = explode(",",$val);
	if(is_array($val))
	{
		foreach($val as $v)
		{
			$capacity .= '<span>'.$v.'G'.'</span>';
		}
	}
	return $capacity;
}

//函数直接替换，用于中英文网站的当前位置替换，替换后需自行加上首页链接
/*调用例子 <a href="/cn">首页</a> &gt; {gemel:field.positoin function='position_preg(@me)'/} */
function position_preg($position)
{
	$k = str_replace("首页","Home",$position);
	$position =$k;
    return $position;
}

//获取当前分类的顶级分类信息
/*
	$id 当前栏目id
	$topid 要返回的顶级栏目id
	$type 返回信息类型 1为栏目id 2为栏目标题
*/
/*调用例子 {gemel:field.typeid function='GetTopInfo(@me,0,2)'/} */
function GetTopInfo($id,$topid=0,$type=1)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT * FROM #@__arctype where id='$id'");
	if($row['reid']==$topid || $row['reid']==0)
	{	  
		if($type==1)
		{
			$code = $row['id'];
		}
		elseif($type==3) 
		{
			$code = $row['typepic'];
		}	
		else
		{
			$code = $row['typename'];
		}	
	}
	else
	{
		$code = GetTopInfo($row['reid'],$topid,$type);
	}
	return $code;
}

//获取当前分类的上级分类信息
/*
	$id 当前栏目id
	$topid 要返回的顶级栏目id
	$type 返回信息类型 1为栏目id 2为栏目标题
*/
/*调用例子 {gemel:field.typeid function='GetReidInfo(@me,0,2)'/} */
function GetReidInfo($id,$topid=0,$type=1)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT * FROM #@__arctype where id='$id'");
	if($row['reid']==$topid || $row['reid']==0)
	{	  
		if($type==1)
		{
			$code = $row['id'];
		}
		else
		{
			$code = $row['typename'];
		}	
	}
	else
	{
		$reid_row = $dsql->GetOne("SELECT * FROM #@__arctype where id=".$row['reid']);
		if($type==1)
		{
			$code = $reid_row['id'];
		}
		else
		{
			$code = $reid_row['typename'];
		}
	}
	return $code;
}


//输出广告信息 是于需要判断广告内容是否为空的情况
/*
	$val 广告内容
	$css 广告位样式	
*/
/*调用例子 {gemel:rpad name='list_225' function='IfAdInfo(@me,"<div class=\"box225 mt10\">~code~</div>")'/} */
function IfAdInfo($val,$css='')
{
	$code='';
	if($val!='' && $css!='')
	{
		$code = str_replace('~code~',$val,$css);
	}
	else
	{
		$code = $val;
	}
	
	return $code;
}

//重新输出列表大图(适应于列表全屏大图，高度需要在样式表里固定)
/*调用例子  {gemel:rpad name='list_banner' function='RepListBanner(@me)'/} */
function RepListBanner($val)
{
	$code = '';
	$str="/<[img|IMG].*?src=[\'|\"](.*?(?:[\.gif|\.jpg]))[\'|\"].*?[\/]?>/"; 
	preg_match($str,$val,$img); 
	if(!empty($img[1]))
	{
		
		$code .= '<div class="list_banner" style="background:url('.$img[1].') no-repeat center top"></div>';
	}

	return $code;	
}



//检查seo标题
/*
	$val 内容
	$mark 分隔符
	$pos 分隔符位置
*/
//调用例子 {gemel:field.seotitle function="IfSeoTitle(@me,'_','last')"/}
function IfSeoTitle($val,$mark='_',$pos='before')
{
	$code ='';
	if(!empty($val))
	{
		if($pos == 'before')
		{
			$code = $mark.$val;
		}
		else
		{
			$code = $val.$mark;
		}
	}
	return $code;
}

//检查来源或标题是否存在
/*
	$val 字段内容
	$title 字段标题
*/
//调用例子 {gemel:field.source function="RepWriterSouce(@me,'来源：')"/}
function RepWriterSouce($val,$title='')
{
	$code ='';
	if($val !='' && $val != 'admin' && $val !='未知')
	{
		$code = $title.$val."&nbsp;&nbsp;";
	}
	return $code;
}

//判断栏目内容是否为空
//调用例子 {gemel:field.content function='IsHaveContent(@me)'/}
function IsHaveContent($val)
{
	if(!empty($val) && $val !='&nbsp;')
	{
		//样式根据需要自行定义
		$val = '<div class="about_content">'.replace_image($val,'610').'</div>';
	}
	else
	{
		$val = '';
	}
	return $val;
}

//输出底部关键字（适应于在底部增加内链关键词，需要系统设置添加一个变量）
//调用例子 {gemel:global.cfg_key function="RepFooterKey(@me)"/}
function RepFooterKey($val)
{
	global $cfg_basehost;
	$code = '';
	if(!empty($val))
	{
		$val_arr = explode(',',$val);
		foreach($val_arr as $v)
		{
			if(!empty($v))
			{
				$code .= '<a href="'.$cfg_basehost.'" title="'.$v.'">'.$v.'</a>'."\r\n";
			}
		}
	}
	return $code;
}

//输出自定义搜索关键字（适应于在搜索框处定义一些热门搜索词，需要系统设置添加一个变量）
//调用例子 {gemel:global.cfg_search_key function="RepSearchKey(@me)"/}
function RepSearchKey($val)
{
	$code = '';
	if(!empty($val))
	{
		$val_arr = explode(',',$val);
		foreach($val_arr as $v)
		{
			if(!empty($v))
			{
				//搜索参数根据需要自行设置
				$code .= '<a href="/module/search.php?kwtype=0&pagesize=25&searchtype=titlekeyword&q='.urlencode($v).'" title="'.$v.'">'.$v.'</a>'."\r\n";
			}
		}
	}
	
	return $code;
}

//获取指定栏目链接（适用于在文档标签需要调用某个固定栏目链接时使用）
//调用例子 [field:id function='GetTypeLink(13)'/]
function GetTypeLink($id)
{
	global $dsql;
	$row = $dsql->GetOne("SELECT id,typename,typedir,seotitle,content,typepic,open_new,description,isdefault,ispart,defaultname,namerule2,moresite,siteurl,sitepath FROM `#@__arctype` WHERE id='$id' ");
	return  GetOneTypeUrlA($row);
}

//输出图集图片
/*
	$aid 文档id
	$type 输出类型 1 输出图集第一张图片的地址 2 输出图集列表（含样式）
*/
//调用例子 {gemel:field.id function='get_image_list(@me,2)'/}

function get_image_list($aid=0,$type=2)
{
    global $dsql;
	global $cfg_ddimg_width;
	global $cfg_ddimg_height;
	
    //获取附加表
    $row = $dsql->GetOne("SELECT c.addtable FROM #@__archives AS a LEFT JOIN #@__channeltype AS c 
                                                            ON a.channel=c.id where a.id='$aid'");
    $addtable = trim($row['addtable']);
    
    //获取imgurls字段内容进行处理
    $row = $dsql->GetOne("Select imgurls From `$addtable` where aid='$aid'");
    $arr = $dsql->GetOne("Select * From `gemel_archives` where id='$aid'");
    $dtp = new GemelTagParse();
    $dtp->LoadSource($row['imgurls']);	
    $img_list='';
    $tit=$arr['title'];
    $tyid_=$arr['typeid'];
    $arr_ = $dsql->GetOne("Select * From `gemel_arctype` where id='$tyid_'");
    $tyname_ = $arr_['typename'];
    foreach($dtp->CTags as $ctag)
    {
    	if($ctag->GetName()=="img")
        {
        	if($type=='1')
        	{
        		$img = trim($ctag->GetInnerText());        		        		
        		$ddimg = $ctag->GetAtt('ddimg');
        		
        		if(empty($img) && !empty($ddimg))
        		{
        			$img = $ddimg;
        		}
        		break;        		
        	}
        	else
        	{ 
	        	$ddimg = $ctag->GetAtt('ddimg');
	        	$src = trim($ctag->GetInnerText());
				if(empty($ddimg))
				{
					$ddimg =$src;
				}
				//循环图集列表 样式可根据需要自行定义
				
	        	//$img_list.='<li><img src="/images/bg/pro-detail-small.png" width="'.$cfg_ddimg_width.'" height="'.$cfg_ddimg_height.'" alt="'.$tyname_.' - '.$tit.'" title="'.$tyname_.' - '.$tit.'" class="pro-detail-small"/><img src="'.$ddimg.'" width="'.$cfg_ddimg_width.'" height="'.$cfg_ddimg_height.'" alt="'.$tyname_.' - '.$tit.'" title="'.$tyname_.' - '.$tit.'"/></li>'."\r\n"; //$cfg_ddimg_width
	        	$img_list.='<li><img src="'.$ddimg.'" width="'.$cfg_ddimg_width.'" height="'.$cfg_ddimg_height.'" alt="'.$tyname_.' - '.$tit.'" title="'.$tyname_.' - '.$tit.'"/></li>'."\r\n"; 
        	}
        }
    }
    if($type==1)
    {
    	if(empty($img))
    	{
    		$row = $dsql->GetOne("SELECT litpic FROM #@__archives  where id='$aid'");
        	if($row['litpic']!='')
        	{
        		$img =$row['litpic']; 
        	}
        	else
        	{
        		$img='/images/defaultpic.gif';
        	}
    	}
    	return $img;
    }
    else 
    {
    	return $img_list;
   	}        
}


//模板引擎（适应于会员中心等直接引入模板文件无法解析的情况）
/*
调用例子
<?php
   pasterTempletDiy("gemelsoft/head.htm");
?>
*/
function pasterTempletDiy($path)
{
  require_once(GEMELINC."/arc.partview.class.php");
  global $cfg_basedir,$cfg_templets_dir;
  $tmpfile = $cfg_basedir.$cfg_templets_dir."/".$path;//模版文件的路径
  $dtp = new PartView();
  $dtp->SetTemplet($tmpfile);
  $dtp->Display();
}

/*织织网工作室（www.wwwcms.net）字符过滤函数*/
function wwwcms_filter($str,$stype="inject") {
	if ($stype=="inject")  {
		$str = str_replace(
		       array( "select", "insert", "update", "delete", "alter", "cas", "union", "into", "load_file", "outfile", "create", "join", "where", "like", "drop", "modify", "rename", "'", "/*", "*", "../", "./"),
			   array("","","","","","","","","","","","","","","","","","","","","",""),
			   $str);
	} else if ($stype=="xss") {
		$farr = array("/\s+/" ,
		              "/<(\/?)(script|META|STYLE|HTML|HEAD|BODY|STYLE |i?frame|b|strong|style|html|img|P|o:p|iframe|u|em|strike|BR|div|a|TABLE|TBODY|object|tr|td|st1:chsdate|FONT|span|MARQUEE|body|title|\r\n|link|meta|\?|\%)([^>]*?)>/isU", 
					  "/(<[^>]*)on[a-zA-Z]+\s*=([^>]*>)/isU",
					  );
		$tarr = array(" ",
		              "",
					  "\\1\\2",
					  ); 
		$str = preg_replace($farr, $tarr, $str);
		$str = str_replace(
		       array( "<", ">", "'", "\"", ";", "/*", "*", "../", "./"),
			   array("&lt;","&gt;","","","","","","",""),
			   $str);
	}
	return $str;
}

/**
 *  载入自定义表单(用于发布)
 *
 * @access    public
 * @param     string  $fieldset  字段列表
 * @param     string  $loadtype  载入类型
 * @return    string
 */
 
function AddFilter($channelid, $type=1, $fieldsnamef, $defaulttid, $loadtype='autofield')
{

	global $tid,$dsql,$id;
	$tid = $defaulttid ? $defaulttid : $tid;
	if ($id!="")
	{
		$tidsq = $dsql->GetOne(" Select typeid From `#@__archives` where id='$id' ");
		$tid = $tidsq["typeid"];
	}

	$nofilter = (isset($_REQUEST['TotalResult']) ? "&TotalResult=".$_REQUEST['TotalResult'] : '').(isset($_REQUEST['PageNo']) ? "&PageNo=".$_REQUEST['PageNo'] : '');
	$filterarr = wwwcms_filter(stripos($_SERVER['REQUEST_URI'], "list.php?tid=") ? str_replace($nofilter, '', $_SERVER['REQUEST_URI']) : $GLOBALS['cfg_cmsurl']."/module/list.php?tid=".$tid);
    $cInfos = $dsql->GetOne(" Select * From  `#@__channeltype` where id='$channelid' ");
	$fieldset=$cInfos['fieldset'];

	$dtp = new GemelTagParse();
    $dtp->SetNameSpace('field','<','>');
    $dtp->LoadSource($fieldset);
    $dede_addonfields = '';

    if(is_array($dtp->CTags))
    {
        foreach($dtp->CTags as $tida=>$ctag)
        {
            $fieldsname = $fieldsnamef ? explode(",", $fieldsnamef) : explode(",", $ctag->GetName());
			if(($loadtype!='autofield' || ($loadtype=='autofield' && $ctag->GetAtt('autofield')==1)) && in_array($ctag->GetName(), $fieldsname) )
            {
                $href1 = explode($ctag->GetName().'=', $filterarr);
				$href2 = explode('&', $href1[1]);
				$fields_value = $href2[0];
				$dede_addonfields .= "<li>";
				$dede_addonfields .= "<div class='species-tit'><h4>".$ctag->GetAtt('itemname')."</h4></div>";
				switch ($type) {
					case 1:
					    $dede_addonfields .="<div class='species-box'>";
						$dede_addonfields .= '<a title="All" href="'.str_replace("&".$ctag->GetName()."=".$fields_value,"",$filterarr).'">All</a>';
					
						$addonfields_items = explode(",",$ctag->GetAtt('default'));
						for ($i=0; $i<count($addonfields_items); $i++)
						{
							$href = stripos($filterarr,$ctag->GetName().'=') ? str_replace("=".$fields_value,"=".urlencode($addonfields_items[$i]),$filterarr) : $filterarr.'&'.$ctag->GetName().'='.urlencode($addonfields_items[$i]);//echo $href;
							$dede_addonfields .= ($fields_value!=urlencode($addonfields_items[$i]) ? '<a title="'.$addonfields_items[$i].'" href="'.$href.'">'.$addonfields_items[$i].'</a>' : '<span>'.$addonfields_items[$i].'</span>');
						}
						$dede_addonfields .= '</div>';
						$dede_addonfields .= '</li>';
					break;
					
					case 2:
						$dede_addonfields .= '<select name="filter"'.$ctag->GetName().' onchange="window.location=this.options[this.selectedIndex].value">
							'.'<option value="'.str_replace("&".$ctag->GetName()."=".$fields_value,"",$filterarr).'">全部</option>';
						$addonfields_items = explode(",",$ctag->GetAtt('default'));
						for ($i=0; $i<count($addonfields_items); $i++)
						{
							$href = stripos($filterarr,$ctag->GetName().'=') ? str_replace("=".$fields_value,"=".urlencode($addonfields_items[$i]),$filterarr) : $filterarr.'&'.$ctag->GetName().'='.urlencode($addonfields_items[$i]);
							$dede_addonfields .= '<option value="'.$href.'"'.($fields_value==urlencode($addonfields_items[$i]) ? ' selected="selected"' : '').'>'.$addonfields_items[$i].'</option>
							';
						}
						$dede_addonfields .= '</select><br/>';
					break;
				}
            }
        }
    }
	echo $dede_addonfields;
}

function GetPrevName($id){
	global $dsql;
    $typeid = $id;
    $query = "SELECT reid FROM gemel_arctype where id = $typeid";
    $rs = $dsql->GetOne($query);
    $reid = $rs['reid'];
    $query2 = "SELECT * FROM gemel_arctype where id = $reid";
    $row = $dsql->GetOne($query2);
    $typename = $row['typename'];
    return $typename;
}