<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",71,106);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",224,248);
$z[2][4]['name']="typename";
$z[3]=Array("field","",255,279);
$z[3][4]['name']="typename";
$z[4]=Array("field","",381,432);
$z[4][4]['name']="position";
$z[4][4]['function']="position_preg(@me)";
$z[5]=Array("field","",506,529);
$z[5][4]['name']="seotitle";
$z[6]=Array("list","\r\n              <li class=\"clear\">\r\n                   <div class=\"news-img\">\r\n                       <a href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"170\" height=\"140\" /></a>\r\n                   </div>\r\n                   <div class=\"news-text\">\r\n                        <h2><a href=\"[field:arcurl/]\" title=\"[field:title/]\">[field:title/]</a></h2>\r\n                        <p>[field:description function='cn_substrR(html2text(@me),100)'/]..</p>\r\n                        <a href=\"[field:arcurl/]\">view more</a> \r\n                   </div>\r\n              </li>\r\n              ",1199,1934);
$z[6][4]['orderby']="weight";
$z[6][4]['pagesize']="8";
$z[6][4]['titlelen']="180";
$z[6][4]['addfields']="add_time";
$z[6][4]['channelid']="1";
$z[7]=Array("pagelist","",2012,2084);
$z[7][4]['listitem']="index,end,pageno";
$z[7][4]['listsize']="4";
$z[7][4]['sitelang']="en";
$z[8]=Array("include","",2149,2187);
$z[8][4]['filename']="footer.htm";

?>