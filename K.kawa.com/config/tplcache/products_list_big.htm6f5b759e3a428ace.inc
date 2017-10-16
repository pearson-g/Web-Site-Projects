<?php
$z[0]=Array("include","",0,41);
$z[0][4]['filename']="head_list.htm";
$z[1]=Array("include","",70,105);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",227,278);
$z[2][4]['name']="position";
$z[2][4]['function']="position_preg(@me)";
$z[3]=Array("channelartlist","\r\n         <div class=\"list_text clear\">\r\n              <h2><a href=\"{gemel:field.typeurl/}\">{gemel:field.typename/}</a></h2>\r\n              <div class=\"list_img\">\r\n                   <a href=\"{gemel:field.typeurl/}\"><img src=\"{gemel:field.typepic/}\" title=\"{gemel:field.typename/}\" alt=\"{gemel:field.typename/}\" width=\"306\" height=\"306\" /></a>\r\n              </div>\r\n              <div class=\"list\">\r\n                   <ul class=\"clear\">\r\n                        {gemel:arclist orderby='weight' titlelen='40' row='3' addfields='blist_img' channelid='2'}                   \r\n                        <li>\r\n                             <a href=\"[field:arcurl/]\"><img src=\"[field:blist_img/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"178\" height=\"172\" /></a>\r\n                             <p><a href=\"[field:arcurl/]\"> [field:shorttitle/]</a></p>\r\n                        </li>\r\n                        {/gemel:arclist}\r\n                   </ul>\r\n                   <div class=\"more\"><a href=\"{gemel:field.typeurl/}\">&gt;&gt;More</a></div>\r\n              </div>\r\n        </div> \r\n        ",368,1526);
$z[3][4]['typeid']="3,4,5,6";
$z[4]=Array("include","",1623,1661);
$z[4][4]['filename']="footer.htm";

?>