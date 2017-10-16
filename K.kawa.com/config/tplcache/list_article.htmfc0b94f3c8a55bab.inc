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
$z[4]=Array("include","",1092,1128);
$z[4][4]['filename']="head.htm";
$z[5]=Array("ad","[field:url/]",1175,1226);
$z[5][4]['name']="sub_banner";
$z[6]=Array("include","",1286,1322);
$z[6][4]['filename']="left.htm";
$z[7]=Array("field","",1402,1432);
$z[7][4]['name']="position";
$z[8]=Array("type","[field:typename/]<span>[field:seotitle/]</span>",1475,1557);
$z[8][4]['typeid']="";
$z[9]=Array("arclist","\r\n                    <li>\r\n                        <div class=\"news_list_img\"><a href=\"[field:arcurl/]\" ><img src=\"[field:litpic/]\" onload='zoomimg(153,109,this)' /></a></div>\r\n                        <div class=\"news_list_right\">\r\n                            <p class=\"news_list_tit\"><a href=\"[field:arcurl/]\">[field:title/]</a></p>\r\n                            <p class=\"news_list_profile\">[field:description function='cn_substrR(html2text(@me),500)'/]...</p>\r\n                            <a class=\"news_more\" href=\"[field:arcurl/]\">详情 >>></a>\r\n                        </div>\r\n                        <div class=\"clear\"></div>\r\n                    </li>\r\n                    ",1708,2469);
$z[9][4]['orderby']="weight";
$z[9][4]['row']="1";
$z[9][4]['titlelen']="60";
$z[9][4]['flag']="a";
$z[10]=Array("list","\r\n                    <li><span>[field:pubdate function=\"MyDate('Y-m-d',@me)\"/]</span><a href=\"[field:arcurl/]\">[field:title/]</a></li>\r\n                    ",2636,2864);
$z[10][4]['orderby']="weight";
$z[10][4]['pagesize']="12";
$z[10][4]['titlelen']="120";
$z[11]=Array("pagelist","",2981,3062);
$z[11][4]['listitem']="index,end,pre,next,pageno";
$z[11][4]['listsize']="5";
$z[11][4]['sitelang']="cn";
$z[12]=Array("include","",3173,3211);
$z[12][4]['filename']="footer.htm";

?>