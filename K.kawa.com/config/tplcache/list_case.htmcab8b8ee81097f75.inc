<?php
$z[0]=Array("include","",0,36);
$z[0][4]['filename']="head.htm";
$z[1]=Array("include","",65,100);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("field","",161,183);
$z[2][4]['name']="typepic";
$z[3]=Array("field","",192,216);
$z[3][4]['name']="seotitle";
$z[4]=Array("field","",223,247);
$z[4][4]['name']="seotitle";
$z[5]=Array("field","",437,488);
$z[5][4]['name']="position";
$z[5][4]['function']="position_preg(@me)";
$z[6]=Array("list","\r\n            <li class=\"clear\"><a href=\"[field:arcurl/]\" class=\"intro-img\">\r\n                <img src=\"[field:litpic/]\" width=\"200\" height=\"200\" alt=\"\"><i>&nbsp;</i></a>\r\n                <div class=\"intro-info\">\r\n                    <h3>[field:title/]</h3>\r\n                    <p>[field:description function='cn_substrR(html2text(@me),100)'/]..</p>\r\n                    <a href=\"[field:arcurl/]\"></a>\r\n                </div>\r\n            </li>\r\n             ",637,1202);
$z[6][4]['orderby']="weight";
$z[6][4]['pagesize']="4";
$z[6][4]['titlelen']="180";
$z[6][4]['addfields']="add_time";
$z[6][4]['channelid']="1";
$z[7]=Array("pagelist","",1290,1362);
$z[7][4]['listitem']="index,end,pageno";
$z[7][4]['listsize']="4";
$z[7][4]['sitelang']="en";
$z[8]=Array("rpad","",1485,1520);
$z[8][4]['name']="common_problem";
$z[9]=Array("include","",1604,1642);
$z[9][4]['filename']="footer.htm";

?>