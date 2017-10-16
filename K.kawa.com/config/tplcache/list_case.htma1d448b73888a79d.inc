<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",70,105);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",223,246);
$z[2][4]['name']="typename";
$z[3]=Array("field","",253,276);
$z[3][4]['name']="typename";
$z[4]=Array("field","",376,427);
$z[4][4]['name']="position";
$z[4][4]['function']="position_preg(@me)";
$z[5]=Array("field","",506,529);
$z[5][4]['name']="typename";
$z[6]=Array("list","\r\n                  <li>\r\n                       <a href=\"[field:arcurl/]\" title=\"[field:title/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"326\" height=\"200\"/></a>\r\n                       <h2><a href=\"[field:arcurl/]\">[field:title/]</a></h2>\r\n                       <p>[field:description function='cn_substrR(html2text(@me),180)'/]..</p>\r\n                  </li>\r\n                  ",866,1355);
$z[6][4]['orderby']="weight";
$z[6][4]['pagesize']="12";
$z[6][4]['titlelen']="100";
$z[7]=Array("pagelist","",1426,1498);
$z[7][4]['listitem']="index,end,pageno";
$z[7][4]['listsize']="4";
$z[7][4]['sitelang']="en";
$z[8]=Array("include","",1562,1600);
$z[8][4]['filename']="footer.htm";

?>