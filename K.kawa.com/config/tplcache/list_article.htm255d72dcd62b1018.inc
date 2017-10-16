<?php
$z[0]=Array("global","",236,263);
$z[0][4]['name']="cfg_soft_lang";
$z[1]=Array("field","",276,294);
$z[1][4]['name']="title";
$z[2]=Array("global","",295,320);
$z[2][4]['name']="cfg_webname";
$z[3]=Array("field","",361,389);
$z[3][4]['name']="keywords";
$z[4]=Array("field","",429,486);
$z[4][4]['name']="description";
$z[4][4]['function']="html2text(@me)";
$z[5]=Array("include","",789,823);
$z[5][4]['filename']="head.htm";
$z[6]=Array("banner","\r\n    <div class=\"news_banner\" style=\"background:url([field:pic/]) center top no-repeat;\"></div>\r\n    ",862,1016);
$z[6][4]['name']="news_banner";
$z[6][4]['row']="1";
$z[7]=Array("include","",1088,1129);
$z[7][4]['filename']="common_left.htm";
$z[8]=Array("field","",1219,1247);
$z[8][4]['name']="position";
$z[9]=Array("list","\r\n                <li>\r\n                    <a href=\"[field:arcurl/]\" class=\"news_con_img\"><img src=\"[field:litpic/]\" alt=\"[field:title function='html2text(@me)'/]\" /></a>\r\n                    <div class=\"news_con_right\">\r\n                        <p class=\"news_con_tit\"><a href=\"[field:arcurl/]\">[field:title/]([field:pubdate function=\"MyDate('Y-m-d',@me)\"/])</a></p>\r\n                        <p class=\"news_con_profile\">[field:description function='cn_substrR(html2text(@me),200)'/]</p>\r\n                        <a class=\"news_more\" href=\"[field:arcurl/]\"></a>\r\n                    </div>\r\n                </li>\r\n                ",1386,2083);
$z[9][4]['orderby']="weight";
$z[9][4]['pagesize']="5";
$z[9][4]['titlelen']="60";
$z[10]=Array("pagelist","",2234,2306);
$z[10][4]['listitem']="index,end,pre,next,pageno,option";
$z[10][4]['listsize']="5";
$z[11]=Array("include","",2448,2484);
$z[11][4]['filename']="footer.htm";

?>