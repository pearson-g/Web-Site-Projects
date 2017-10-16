<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",70,105);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",242,293);
$z[2][4]['name']="position";
$z[2][4]['function']="position_preg(@me)";
$z[3]=Array("field","",390,414);
$z[3][4]['name']="typename";
$z[4]=Array("list","\r\n                  <li class=\"clear\">\r\n                       <div class=\"news-img\">\r\n                           <a href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"150\" height=\"140\" /></a>\r\n                       </div>\r\n                       <div class=\"news-text\">\r\n                            <h2><a href=\"[field:arcurl/]\">[field:title/]</a></h2>\r\n                            <p>[field:description function='cn_substrR(html2text(@me),100)'/]..</p>\r\n                            <span><a href=\"[field:arcurl/]\">More</a></span> \r\n                       </div>                       \r\n                  </li>\r\n                  ",864,1615);
$z[4][4]['orderby']="weight";
$z[4][4]['pagesize']="8";
$z[4][4]['titlelen']="60";
$z[5]=Array("pagelist","",1710,1782);
$z[5][4]['listitem']="index,end,pageno";
$z[5][4]['listsize']="4";
$z[5][4]['sitelang']="en";
$z[6]=Array("include","",1863,1901);
$z[6][4]['filename']="footer.htm";

?>