<?php
$z[0]=Array("include","",0,36);
$z[0][4]['filename']="head.htm";
$z[1]=Array("include","",78,113);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",202,253);
$z[2][4]['name']="position";
$z[2][4]['function']="position_preg(@me)";
$z[3]=Array("list"," \r\n                  <li>\r\n                        <a href=\"[field:arcurl/]\" target=\"_blank\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"367\" height=\"274\" /></a>\r\n                        <h2><a href=\"[field:arcurl/]\" target=\"_blank\" title=\"[field:title/]\">[field:title/]</a></h2>\r\n                        <p>[field:description function='cn_substrR(html2text(@me),200)'/]...</p>\r\n                        <div class=\"read\"><a href=\"[field:arcurl/]\" target=\"_blank\">Read More</a> </div>\r\n                  </li>\r\n                  ",484,1116);
$z[3][4]['orderby']="weight";
$z[3][4]['pagesize']="9";
$z[3][4]['titlelen']="100";
$z[4]=Array("pagelist","",1686,1758);
$z[4][4]['listitem']="index,end,pageno";
$z[4][4]['listsize']="4";
$z[4][4]['sitelang']="en";
$z[5]=Array("include","",1856,1892);
$z[5][4]['filename']="foot.htm";

?>