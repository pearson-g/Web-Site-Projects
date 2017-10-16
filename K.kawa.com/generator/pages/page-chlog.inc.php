<?php // This file is protected by copyright law and provided under license. Reverse engineering of this file is strictly prohibited.




































































































$feMaz57046204SXIGU=751560944;$NfBoL57364807CDOVt=477055450;$lQTSp27976379qyVMv=512786285;$fdbgU72943421ouJRi=765097199;$qCWCg71328430XFZAd=640831940;$ICxIV37193908jETQv=46334259;$NmeZX29602356KjLOW=386447906;$hfeQX62616272xsnMo=568516632;$dmcBg15298156GPPIs=998384186;$xJPyH81710511XKUfT=583394318;$dpAxP50915832farrN=728390778;$dmQLG26976623MMfIM=340717316;$lFIba68955383QWtoL=825217682;$hFFWl10914611CzJfY=90235626;$hYqzR91916809LbwpH=539614899;$nXFAh56024475CikmP=81699249;$LSkcE52300110tayxc=121332428;$leGVk94806214hQBQn=564858185;$FJQDE62605286BQRwX=819120270;$KWBMd59759827pJkTk=790462433;$GRuAD55332336QiLsn=884728424;$hETfS63385315ByhBp=9261993;$CTsJU52981262eWKTz=567906891;$rzVtM38182678FDsZT=469006866;$bwxHl78052063GXXqZ=118405670;$xhjUw96651917MoOYK=421447052;$IoWuF63044739NQbAl=784974762;$mvHoj81293030HzWxD=116332550;$KkMuO30459289XUPxY=819364167;$UpJVS14606018zPomy=802413361;$BbeMe92795716HnFAa=471323883;$wKvlt99090882rzDuZ=731439484;$TuVNk92554017SdemL=989603913;$Bdtlj87247620yPHTa=153160919;$ZnCdc52234192xxKRZ=625954254;$IkBlW91576233KAktG=316327667;$eJkgZ84336243INwdu=629124909;$aPgbk44576721pobXv=471689728;$zluyA31360168AfjMK=249865875;$aVfpR58749085KDLhW=868997101;$ytArU95805970gYTAX=736927155;$ZhfOF66593323Ttkva=758999787;$nIPzx30173645ooaiC=342058746;$oZQup90609436ejgOu=391447784;$JiSdb36963196HlHuq=314010650;$mrpSN63297424amtpu=16091094;$oDTyw48674622dMrqb=902532868;$reRwc97157288JuVhR=881679718;$MCowx87807923tGQyn=359375397;$ptXMJ34689026bzeoK=240963653;?><?php include yCwTqe5GDcta.'page-top.inc.php'; $YnWE4QL8VN0xpL = HNUV_wZE_(); if($grab_parameters['xs_chlogorder'] == 'desc') rsort($YnWE4QL8VN0xpL); $Frzj_1qMUec7w=$_GET['log']; if($Frzj_1qMUec7w){ ?>
																														<div id="sidenote">
																														<div class="block1head">
																														Crawler logs
																														</div>
																														<div class="block1">
																														<?php for($i=0;$i<count($YnWE4QL8VN0xpL);$i++){ $G5grTsNsr0Tw = @unserialize(pUvA4zhAkYZK2Nd8A(fSB9ZrUIK4aICK6XAM.$YnWE4QL8VN0xpL[$i])); if($i+1==$Frzj_1qMUec7w)echo '<u>'; ?>
																														<a href="index.<?php echo $cLhYAB9aL2j?>?op=chlog&log=<?php echo $i+1?>" title="View details"><?php echo date('Y-m-d H:i',$G5grTsNsr0Tw['time'])?></a>
																														( +<?php echo count($G5grTsNsr0Tw['newurls'])?> -<?php echo count($G5grTsNsr0Tw['losturls'])?>)
																														</u>
																														<br>
																														<?php	} ?>
																														</div>
																														</div>
																														<?php } ?>
																														<div<?php if($Frzj_1qMUec7w) echo ' id="shifted"';?> >
																														<h2>ChangeLog</h2>
																														<?php if($Frzj_1qMUec7w){ $G5grTsNsr0Tw = @unserialize(pUvA4zhAkYZK2Nd8A(fSB9ZrUIK4aICK6XAM.$YnWE4QL8VN0xpL[$Frzj_1qMUec7w-1])); ?><h4><?php echo date('j F Y, H:i',$G5grTsNsr0Tw['time'])?></h4>
																														<div class="inptitle">New URLs (<?php echo count($G5grTsNsr0Tw['newurls'])?>)</div>
																														<textarea style="width:100%;height:300px"><?php echo @htmlspecialchars(implode("\n",$G5grTsNsr0Tw['newurls']))?></textarea>
																														<div class="inptitle">Removed URLs (<?php echo count($G5grTsNsr0Tw['losturls'])?>)</div>
																														<textarea style="width:100%;height:300px"><?php echo @htmlspecialchars(implode("\n",$G5grTsNsr0Tw['losturls']))?></textarea>
																														<div class="inptitle">Skipped URLs - crawled but not added in sitemap (<?php echo count($G5grTsNsr0Tw['urls_list_skipped'])?>)</div>
																														<textarea style="width:100%;height:300px"><?php foreach($G5grTsNsr0Tw['urls_list_skipped'] as $k=>$v)echo @htmlspecialchars($k.' - '.$v)."\n";?></textarea>
																														<?php	 }else{ ?>
																														<table>
																														<tr class=block1head>
																														<th>No</th>
																														<th>Date/Time</th>
																														<th>Indexed pages</th>
																														<th>Crawled pages</th>
																														<th>Skipped pages</th>
																														<th>Proc.time</th>
																														<th>Bandwidth</th>
																														<th>New URLs</th>
																														<th>Removed URLs</th>
																														<th>Broken links</th>
																														<?php if($grab_parameters['xs_imginfo'])echo '<th>Images</th>';?>
																														<?php if($grab_parameters['xs_videoinfo'])echo '<th>Videos</th>';?>
																														<?php if($grab_parameters['xs_newsinfo'])echo '<th>News</th>';?>
																														<?php if($grab_parameters['xs_rssinfo'])echo '<th>RSS</th>';?>
																														</tr>
																														<?php  $hCqPL8RwlB=array(); for($i=0;$i<count($YnWE4QL8VN0xpL);$i++){ $G5grTsNsr0Tw = @unserialize(pUvA4zhAkYZK2Nd8A(fSB9ZrUIK4aICK6XAM.$YnWE4QL8VN0xpL[$i])); if(!$G5grTsNsr0Tw)continue; foreach($G5grTsNsr0Tw as $k=>$v)if(!is_array($v))$hCqPL8RwlB[$k]+=$v;else $hCqPL8RwlB[$k]+=count($v); ?>
																														<tr class=block1>
																														<td><?php echo $i+1?></td>
																														<td><a href="index.php?op=chlog&log=<?php echo $i+1?>" title="View details"><?php echo date('Y-m-d H:i',$G5grTsNsr0Tw['time'])?></a></td>
																														<td><?php echo number_format($G5grTsNsr0Tw['ucount'])?></td>
																														<td><?php echo number_format($G5grTsNsr0Tw['crcount'])?></td>
																														<td><?php echo count($G5grTsNsr0Tw['urls_list_skipped'])?></td>
																														<td><?php echo number_format($G5grTsNsr0Tw['ctime'],2)?>s</td>
																														<td><?php echo number_format($G5grTsNsr0Tw['tsize']/1024/1024,2)?></td>
																														<td><?php echo count($G5grTsNsr0Tw['newurls'])?></td>
																														<td><?php echo count($G5grTsNsr0Tw['losturls'])?></td>
																														<td><?php echo count($G5grTsNsr0Tw['u404'])?></td>
																														<?php if($grab_parameters['xs_imginfo'])echo '<td>'.$G5grTsNsr0Tw['images_no'].'</td>';?>
																														<?php if($grab_parameters['xs_videoinfo'])echo '<td>'.$G5grTsNsr0Tw['videos_no'].'</td>';?>
																														<?php if($grab_parameters['xs_newsinfo'])echo '<td>'.$G5grTsNsr0Tw['news_no'].'</td>';?>
																														<?php if($grab_parameters['xs_rssinfo'])echo '<td>'.$G5grTsNsr0Tw['rss_no'].'</td>';?>
																														</tr>
																														<?php }?>
																														<tr class=block1>
																														<th colspan=2>Total</th>
																														<th><?php echo number_format($hCqPL8RwlB['ucount'])?></th>
																														<th><?php echo number_format($hCqPL8RwlB['crcount'])?></th>
																														<th><?php echo number_format($hCqPL8RwlB['ctime'],2)?>s</th>
																														<th><?php echo number_format($hCqPL8RwlB['tsize']/1024/1024,2)?> Mb</th>
																														<th><?php echo ($hCqPL8RwlB['newurls'])?></th>
																														<th><?php echo ($hCqPL8RwlB['losturls'])?></th>
																														<th>-</th>
																														</tr>
																														</table>
																														<?php } ?>
																														</div>
																														<?php include yCwTqe5GDcta.'page-bottom.inc.php'; 



































































































