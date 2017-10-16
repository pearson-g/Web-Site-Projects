<?php
$z[0]=Array("channeltitle","",254,306);
$z[0][4]['order']="backward";
$z[0][4]['character']="_";
$z[1]=Array("global","",307,334);
$z[1][4]['name']="cfg_webname";
$z[2]=Array("field","",378,411);
$z[2][4]['name']="description";
$z[3]=Array("field","",448,478);
$z[3][4]['name']="keywords";
$z[4]=Array("include","",998,1034);
$z[4][4]['filename']="head.htm";
$z[5]=Array("list","\r\n    	<div class=\"news_list\">\r\n            <div class=\"news_list_left\"><a href=\"[field:arcurl/]\"><img src=\"[field:litpic/]\" title=\"[field:title/]\" alt=\"[field:title/]\" width=\"200\" height=\"150\" /></a></div>\r\n            <div class=\"news_list_right\">\r\n                <p class=\"news_list_text\"><a href=\"[field:arcurl/]\">[field:title/]</a></p>\r\n                <p class=\"news_list_time\">[field:pubdate function=\"MyDate('Y-m-d',@me)\"/]</p>\r\n                <p class=\"news_list_des\">[field:description function='cn_substrR(html2text(@me),200)'/]...</p>\r\n                <p class=\"news_list_more\"><a href=\"[field:arcurl/]\">Read More</a></p>\r\n            </div>\r\n        </div>\r\n        ",1193,1944);
$z[5][4]['orderby']="weight";
$z[5][4]['pagesize']="5";
$z[5][4]['titlelen']="100";
$z[6]=Array("pagelist","",2006,2087);
$z[6][4]['listitem']="index,end,pre,next,pageno";
$z[6][4]['listsize']="5";
$z[6][4]['sitelang']="en";
$z[7]=Array("include","",2143,2181);
$z[7][4]['filename']="footer.htm";

?>