<?php
$z[0]=Array("include","",0,40);
$z[0][4]['filename']="head_art.htm";
$z[1]=Array("include","",69,104);
$z[1][4]['filename']="nav.htm";
$z[2]=Array("php"," \r\n			  	    \$sql = \"SELECT arc.*,tp.typedir,tp.typename,\r\n                       tp.namerule,tp.namerule2,tp.moresite,tp.siteurl,tp.sitepath\r\n                       \$addField\r\n                       FROM `#@__archives` arc LEFT JOIN `#@__arctype` tp ON arc.typeid=tp.id\r\n                       \$addJoin\r\n                       WHERE arc.id in(\$aa)\";\r\n			  	    \$dsql->SetQuery(\$sql);\r\n			  	    \$dsql->Execute('aaa');\r\n			  	    while(\$row=\$dsql->GetArray(\"aaa\"))\r\n					{\r\n					 \$row['filename'] = \$row['arcurl'] = GetFileUrl(\$row['id'],\$row['typeid'],\$row['senddate'],\$row['title'],\$row['ismake'],\$row['arcrank'],\$row['namerule'],\$row['typedir'],\$row['money'],\$row['filename'],\$row['moresite'],\$row['siteurl'],\$row['sitepath']);\r\n					 echo \"<li>\r\n                   	 		<a href='\".\$row['arcurl'].\"'><img src='\".\$row['litpic'].\"' title='\".\$row['title'].\"-\".\$row['typename'].\"' alt='\".\$row['title'].\"-\".\$row['typename'].\"' width='298' height='274'  /></a>\r\n                   	 		 <h3><a href='\".\$row['arcurl'].\"'>\".\$row['title'].\"</a></h3>\r\n                   	 		 <p><a href='\".\$row['arcurl'].\"'>READMORE</a></p>\r\n                   	 		 <!-- <i class='del'></i> -->\r\n                            <input type='hidden' name='product-title[]' value='\".\$row['title'].\"' />\r\n                   	</li>\";                   \r\n					}\r\n					",467,1824);
$z[3]=Array("include","",4131,4169);
$z[3][4]['filename']="footer.htm";

?>