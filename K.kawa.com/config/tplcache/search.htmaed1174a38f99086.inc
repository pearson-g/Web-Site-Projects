<?php
$z[0]=Array("global","",288,316);
$z[0][4]['name']="cfg_keywords";
$z[1]=Array("global","",360,391);
$z[1][4]['name']="cfg_description";
$z[2]=Array("global","",713,740);
$z[2][4]['name']="cfg_webname";
$z[3]=Array("datalist"," \r\n                       <?php \r\n                          \$title=\$fields['title'];\r\n                          \$shorttitle=\$fields['shorttitle'];\r\n                          \$typename=\$fields['typename'];\r\n                          \$title = str_ireplace(\$keyword, \"<font color='red'>\$keyword</font>\", \$title);\r\n                          \$shorttitle = str_ireplace(\$keyword, \"<font color='red'>\$keyword</font>\", \$shorttitle);\r\n                          if(empty(\$shorttitle)){\r\n                             \$shorttitle=\$title;\r\n                          }\r\n                          \$typename=str_ireplace(\$keyword, \"<font color='red'>\$keyword</font>\", \$typename);\r\n                       ?> \r\n                      <li><!--{gemel:field.title /}-->\r\n                          <h2>\r\n                           <a href=\"view.php?aid={gemel:field.id /}&amp;dopost=viewArchives\" target=\"_blank\"><?php echo \$shorttitle;?></a><span> - - <a href=\"/module/list.php?tid={gemel:field.typeid /}\" class=\"fen\" target=\"_bank\"><?php echo \$typename;?></a></span></h2>\r\n                          <p>{gemel:field.description function='cn_substrR(html2text(@me),200)'/]/}....</p>\r\n                      </li>\r\n                      ",1617,2862);
$z[4]=Array("pagelist","",2967,3039);
$z[4][4]['listitem']="index,end,pageno";
$z[4][4]['listsize']="4";
$z[4][4]['sitelang']="en";

?>