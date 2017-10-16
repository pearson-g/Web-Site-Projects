<?php
$z[0]=Array("match","<div class=\"content cont-detail fs-small\" id=\"ctrlfscont\">[内容]<div class=\"share-mod clearfix\">",5,126);
$z[1]=Array("trim","<a([^>]*)>(.*)</a>",131,181);
$z[1][4]['replace']="";
$z[2]=Array("trim","<script([^>]*)>(.*)</script>",183,243);
$z[2][4]['replace']="";
$z[3]=Array("trim","<div([^.]*)>",245,289);
$z[3][4]['replace']="";
$z[4]=Array("trim","</div>",291,329);
$z[4][4]['replace']="";
$z[5]=Array("function","",334,363);

?>