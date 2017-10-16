<?php
$z[0]=Array("global","",254,279);
$z[0][4]['name']="cfg_webname";
$z[1]=Array("global","",323,352);
$z[1][4]['name']="cfg_description";
$z[2]=Array("global","",389,415);
$z[2][4]['name']="cfg_keywords";
$z[3]=Array("include","",583,617);
$z[3][4]['filename']="head.htm";
$z[4]=Array("banner","\r\n<div class=\"about_banner\" style=\"background:url([field:pic/]) center top no-repeat;\"></div>\r\n",621,769);
$z[4][4]['name']="about_banner";
$z[4][4]['row']="1";
$z[5]=Array("field","",827,855);
$z[5][4]['name']="position";
$z[6]=Array("type","[field:typename/]",945,993);
$z[6][4]['typeid']="";
$z[7]=Array("list","\r\n                    <li>\r\n                        <a href=\"[field:arcurl/]\" class=\"news_list_img\"><img src=\"[field:litpic/]\" /></a>\r\n                        <div class=\"news_list_right\">\r\n                            <p class=\"news_list_tit\"><a href=\"[field:arcurl/]\">[field:title/]([field:pubdate function=\"MyDate('Y-m-d',@me)\"/])</a></p>\r\n                            <p class=\"news_list_profile\">[field:description function='cn_substrR(html2text(@me),280)'/]</p>\r\n                            <a class=\"news_more\" href=\"[field:arcurl/]\"></a>\r\n                        </div>\r\n                        <div class=\"clear\"></div>\r\n                    </li>\r\n                    ",1118,1860);
$z[7][4]['orderby']="weight";
$z[7][4]['pagesize']="10";
$z[7][4]['titlelen']="60";
$z[8]=Array("pagelist","",1988,2067);
$z[8][4]['listitem']="index,end,pre,next,pageno";
$z[8][4]['listsize']="5";
$z[8][4]['sitelang']="cn";
$z[9]=Array("channel","\r\n				<li><a href=\"[field:typeurl/]\">[field:typename/]</a></li>\r\n                ",2273,2392);
$z[9][4]['type']="son";
$z[10]=Array("include","",2461,2497);
$z[10][4]['filename']="footer.htm";

?>