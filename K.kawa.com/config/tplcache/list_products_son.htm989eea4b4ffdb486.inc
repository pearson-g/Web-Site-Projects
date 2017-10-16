<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",70,105);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("arclist","\r\n                  <li>\r\n                       <a href=\"[field:arcurl/]\"><img src=\"[field:list_c/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"152\" height=\"120\" /></a>\r\n                       <h3><a href=\"[field:arcurl/]\">[field:shorttitle/]</a></h3>\r\n                  </li>\r\n                  ",263,681);
$z[2][4]['flag']="c";
$z[2][4]['row']="6";
$z[2][4]['titlelen']="150";
$z[2][4]['orderby']="weight";
$z[2][4]['addfields']="list_c";
$z[2][4]['channelid']="2";
$z[3]=Array("field","",790,841);
$z[3][4]['name']="position";
$z[3][4]['function']="position_preg(@me)";
$z[4]=Array("field","",927,950);
$z[4][4]['name']="typename";
$z[5]=Array("channelartlist","\r\n         <div class=\"list-text\">\r\n              <h2><a href=\"{gemel:field.typeurl/}\">{gemel:field.typename/}</a></h2>\r\n              <div class=\"list\">\r\n                   <ul class=\"clear\">\r\n                        {gemel:arclist orderby='weight' titlelen='40' row='40' addfields='pro_spec' channelid='2'}                   \r\n                        <li>\r\n                             <a href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"298\" height=\"450\" /></a>\r\n                             <div class=\"product-specifications\">\r\n                                   [field:pro_spec/]\r\n                             </div>\r\n                             <h3><a href=\"[field:arcurl/]\">[field:shorttitle/]</a></h3>\r\n                             <em></em>\r\n                        </li>\r\n                        {/gemel:arclist}\r\n                   </ul>\r\n              </div>\r\n        </div> \r\n        ",1030,2043);
$z[5][4]['typeid']="1,2,3,4";
$z[6]=Array("include","",2114,2152);
$z[6][4]['filename']="footer.htm";

?>