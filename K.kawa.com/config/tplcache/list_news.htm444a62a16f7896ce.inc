<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",70,105);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",174,225);
$z[2][4]['name']="position";
$z[2][4]['function']="position_preg(@me)";
$z[3]=Array("field","",283,307);
$z[3][4]['name']="typename";
$z[4]=Array("list","\r\n              <li>\r\n                   <a href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]..\" alt=\"[field:title/]\" width=\"200\" height=\"141\" /></a>\r\n                   <h2><a href=\"[field:arcurl/]\">[field:title/]..</a></h2>\r\n                   <p>[field:description function='cn_substrR(html2text(@me),100)'/]..</p>                        \r\n              </li>\r\n              ",727,1196);
$z[4][4]['orderby']="weight";
$z[4][4]['pagesize']="8";
$z[4][4]['titlelen']="60";
$z[5]=Array("pagelist","",1261,1333);
$z[5][4]['listitem']="index,end,pageno";
$z[5][4]['listsize']="4";
$z[5][4]['sitelang']="en";
$z[6]=Array("include","",1398,1436);
$z[6][4]['filename']="footer.htm";

?>