<?php
if(!isset($GLOBALS['_vars'])) $GLOBALS['_vars'] = array(); 
$fields = array();
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="<?php echo $GLOBALS['cfg_keywords']; ?>" />
    <meta name="description" content="<?php echo $GLOBALS['cfg_description']; ?>" />
    <meta name="author" content="2016 中国营销力 - www.gemelsoft.com" />
    <meta name="robots" content="index,follow,noodp,noydir" />
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title><?php echo $GLOBALS['cfg_webname']; ?></title>
    <link rel="Shortcut Icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
     <!--[if lt IE 9]>
<script src="/js/css3-mediaqueries.js"></script>
<![endif]-->
</head>
<body class="bg">
<!--nav begin -->
<div class="search-header-box">
<?php require_once(GEMELINC."/../search/nav.php");?>
</div>

<!--nav end -->

<!-- search start-->
<div class="bread-box none">
    <div class="bread">
      <p><a href='/'>Home</a> > <a href='Javascript:void(0);'>Search</a></p>
    </div>
</div>
<div class="search-wrap clear">
    <div class="search-box">
      <div class="w1200">
        <div class="search-results">
             <div class="relevant-search">
                 <h1><?php echo $str;?></h1>
             </div>
             <div class="result-list">
                 <ul class="clearfix">
                      <?php
$atts = array();
$atts['tagname'] = 'datalist';
$blockValue = $this->refObj->GetArcList($atts,$this->refObj,$fields); 
if(is_array($blockValue)){
foreach( $blockValue as $key=>$fields )
{
 
                          $title=$fields['title'];
                          $shorttitle=$fields['shorttitle'];
                          $typename=$fields['typename'];
                          $title = str_ireplace($keyword, "<font color='red'>$keyword</font>", $title);
                          $shorttitle = str_ireplace($keyword, "<font color='red'>$keyword</font>", $shorttitle);
                          if(empty($shorttitle)){
                             $shorttitle=$title;
                          }
                          $typename=str_ireplace($keyword, "<font color='red'>$keyword</font>", $typename);
                       ?> 
                      <li><!--<?php echo $fields['title']; ?>-->
                          <h2>
                           <a href="view.php?aid=<?php echo $fields['id']; ?>&amp;dopost=viewArchives" target="_blank"><?php echo $shorttitle;?></a><span> - - <a href="/module/list.php?tid=<?php echo $fields['typeid']; ?>" class="fen" target="_bank"><?php echo $typename;?></a></span></h2>
                          <p><?php echo cn_substrR(html2text($fields['description']),200); ?>....</p>
                      </li>
                      <?php
}
}?>
                 </ul> 
             </div>
             <div class="sear-page">
                   <?php
$atts = array();
$atts['tagname'] = 'pagelist';
$atts['listitem'] = 'index,end,pageno';
$atts['listsize'] = '4';
$atts['sitelang'] = 'en';
 echo $this->refObj->GetPageList($atts,$this->refObj,$fields); 
?>
 
             </div>
          </div>
      </div>
    </div>
</div>

<!--search end-->
<!-- footer  begin -->
<?php require_once(GEMELINC."/../search/footer.php");?>
<!-- footer  end -->
</body>
</html>