<?php
$z[0]=Array("global","",236,263);
$z[0][4]['name']="cfg_soft_lang";
$z[1]=Array("channeltitle","",276,326);
$z[1][4]['order']="backward";
$z[1][4]['character']="_";
$z[2]=Array("global","",327,352);
$z[2][4]['name']="cfg_webname";
$z[3]=Array("field","",393,421);
$z[3][4]['name']="keywords";
$z[4]=Array("field","",461,518);
$z[4][4]['name']="description";
$z[4][4]['function']="html2text(@me)";
$z[5]=Array("include","",875,909);
$z[5][4]['filename']="head.htm";
$z[6]=Array("banner","\r\n    <div class=\"pro_banner\" style=\"background:url([field:pic/]) center top no-repeat;\"></div>\r\n    ",951,1103);
$z[6][4]['name']="pro_banner";
$z[6][4]['row']="1";
$z[7]=Array("field","",1233,1290);
$z[7][4]['name']="typeid";
$z[7][4]['function']="GetTopInfo(@me,0,2)";
$z[8]=Array("channel2","\r\n                <li class=\"pro_li_bg\"> \r\n                    <a href=\"[field:typeurl/]\" class=\"prolist_a1\">[field:typename/]</a>\r\n                    <div class=\"pro_icon\"></div>\r\n                    <div class=\"clear\"></div>\r\n                    <ul class=\"pro_list2\">\r\n                        [field:sonchannel0]\r\n                        <li><a href=\"[field:typeurl/]\">[field:typename/]</a></li>  \r\n                        [/field:sonchannel0] \r\n                    </ul>  \r\n                </li>\r\n                ",1385,1954);
$z[8][4]['type']="son";
$z[8][4]['typeid']="2";
$z[9]=Array("rpad","",2187,2214);
$z[9][4]['name']="sub_tell";
$z[10]=Array("field","",2340,2368);
$z[10][4]['name']="position";
$z[11]=Array("list","\r\n                <li>\r\n                <a class=\"product_con_img\" href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" alt=\"[field:title function='html2text(@me)'/]\" /></a>\r\n                <a class=\"product_con_text\" href=\"[field:arcurl/]\">[field:title/]</a>\r\n                </li>\r\n                ",2467,2830);
$z[11][4]['pagesize']="9";
$z[11][4]['orderby']="weight";
$z[11][4]['titlelen']="16";
$z[12]=Array("pagelist","",2963,3035);
$z[12][4]['listitem']="index,end,pre,next,pageno,option";
$z[12][4]['listsize']="5";
$z[13]=Array("include","",3127,3163);
$z[13][4]['filename']="footer.htm";

?>