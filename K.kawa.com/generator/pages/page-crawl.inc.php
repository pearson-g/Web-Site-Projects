<?php // This file is protected by copyright law and provided under license. Reverse engineering of this file is strictly prohibited.




































































































$LQeEK42486572CiWbB=446781799;$FUIrG75192871ByoYz=652752381;$lTSFY12801513SuRgs=255810852;$SpFHY60625000pJUgM=286175964;$tPomK18975830pBJZq=275566467;$ZZuwd93166504nsDZE=255201111;$TefCd83509522kZgQh=755798645;$iNZii15317382ruqYg=809577820;$BBmgP48902588puvcf=947257386;$XKdss29577636kxvKb=201056091;$vYMAw27655029dBbSx=100692688;$czPZi68447266oaaQf=677385925;$gfeXY42266846XUTwF=463854553;$CojMD64426270ofqpr=490317322;$JhCOP25238037ixthH=288492981;$IakVY40014648nbPqw=888600281;$rJDzQ89068604dmlJW=823357972;$XlZNH17712402seRjc=123984802;$Qqwfd76258545PopHs=320199524;$ABbaE20019531qaNyn=444220886;$sfFPz99307862nPfRb=27767639;$SSkdp69436035JItZn=101058532;$HAzGC90716553BgHzi=195812317;$eucyB98461915HukFI=343247742;$rVqSl72984619skAbU=75083557;$JefMt39597168atTuj=421538513;$nGBym68612061VJDro=914331360;$pXykD95341797JJbtW=585680847;$hOvSq10098876VyXbM=965305726;$UZtwv18195800paeBJ=86424743;$ODKgw99945069UEdZx=477756653;$fhQOo10659179VlINu=172520202;$VmrPG90650635jszET=700434143;$ngYxh95231934kmnzB=94717224;$dVKfW94715577eLdHA=884088196;$xkUbN24414062smFbb=102765808;$rxVzQ44639892hXaJc=279468811;$fgSyR90705567mbZxZ=446415955;$biBoq52923584ppHJW=135325988;$vHbTh46606445BUVQm=376417663;$PcqCk52066650qDGqv=701409729;$tXGod94616700MgjqW=142520935;$wbxAb64569092wwPDc=229470031;$bCqrq77236328FUwoh=993475770;$HWdgC22930908nrPzL=967256897;$StvEE16965332PVRkX=182032165;$yAecA39652099YlrNW=167520324;$bIfZk26303711ZbyvK=954940125;$fKSQE47232666OPrAo=78010315;$RADfh37751465YvZwM=564949646;?><?php include yCwTqe5GDcta.'page-top.inc.php'; $Fpei00GZKLxgY3rk = $_REQUEST['crawl']; if($_GET['act']=='interrupt'){ m0HngeVPuiULaXDb(hE3J3lTm1xrJcz5CHD,''); echo '<h2>The "stop" signal has been sent to a crawler.</h2><a href="index.'.$cLhYAB9aL2j.'?op=crawl">Return to crawler page</a>'; }else if(file_exists($fn=fSB9ZrUIK4aICK6XAM.w7NW0sRCh2KBF74Bo)&&(time()-filemtime($fn)<10*60)){ $FAzOemScryy=true; $Fpei00GZKLxgY3rk = 1; } if($Fpei00GZKLxgY3rk){ if($FAzOemScryy) echo '<h4>Crawling already in progress.<br/>Last log access time: '.date('Y-m-d H:i:s',@filemtime($fn)).'<br><small><a href="index.'.$cLhYAB9aL2j.'?op=crawl&act=interrupt">Click here</a> to interrupt it.</small></h4>'; else { echo '<h4>Please wait. Sitemap generation in progress...</h4>'; if($_POST['bg']) echo '<div class="block2head">Please note! The script will run in the background until completion, even if browser window is closed.</div>'; } ?>
																									<script type="text/javascript">
																									var lastupdate = 0;
																									var framegotsome = false;
																									function QoPlLvVWe()
																									{
																									var cd = new Date();
																									if(!lastupdate)return false;
																									var df = (cd - lastupdate)/1000;
																									<?php if($grab_parameters['xs_autoresume']){?>
																									var re = document.getElementById('rlog');
																									re.innerHTML = 'Auto-restart monitoring: '+ cd + ' (' + Math.round(df) + ' second(s) since last update)';
																									var ifr = document.getElementById('cproc');
																									var frfr = window.frames['clog'];
																									
																									var doresume = (df >= <?php echo intval($grab_parameters['xs_autoresume']);?>);
																									if(typeof frfr != 'undefined') {
																									if( (typeof frfr.pageLoadCompleted != 'undefined') &&
																									!frfr.pageLoadCompleted) 
																									{
																									
																									framegotsome = true;
																									doresume = false;
																									}
																									
																									if(!frfr.document.getElementById('glog')) {	
																									
																									}
																									}
																									if(doresume)
																									{
																									var rle = document.getElementById('runlog');
																									lastupdate = cd;
																									if(rle)
																									{
																									rle.style.display  = '';
																									rle.innerHTML = cd + ': resuming generator ('+Math.round(df)+' seconds with no response)<br />' + rle.innerHTML;
																									}
																									var lc = ifr.src;
																									if(lc.indexOf('resume=1')<0)
																									lc = lc + '&resume=1';
																									ifr.src = lc;
																									}
																									<?php } ?>
																									}
																									window.setInterval('QoPlLvVWe()', 1000);
																									</script>
																									<iframe id="cproc" name="clog" style="width:100%;height:300px;border:0px" frameborder=0 src="index.<?php echo $cLhYAB9aL2j?>?op=crawlproc&bg=<?php echo $_POST['bg']?>&resume=<?php echo $_POST['resume']?>"></iframe>
																									<!--
																									<div id="rlog2" style="bottom:5px;position:fixed;width:100%;font-size:12px;background-color:#fff;z-index:2000;padding-top:5px;border-top:#999 1px dotted"></div>
																									-->
																									<div id="rlog" style="overflow:auto;"></div>
																									<div id="runlog" style="overflow:auto;height:100px;display:none;"></div>
																									<?php }else if(!$YIrFdD7SrWLpwW3) { ?>
																									<div id="sidenote">
																									<?php include yCwTqe5GDcta.'page-sitemap-detail.inc.php'; ?>
																									</div>
																									<div id="shifted">
																									<h2>Crawling</h2>
																									<form action="index.<?php echo $cLhYAB9aL2j?>?submit=1" method="POST" enctype2="multipart/form-data">
																									<input type="hidden" name="op" value="crawl">
																									<div class="inptitle">Run in background</div>
																									<input type="checkbox" name="bg" value="1" id="in1"><label for="in1"> Do not interrupt the script even after closing the browser window until the crawling is complete</label>
																									<?php if(@file_exists(fSB9ZrUIK4aICK6XAM.t_LlD5p6PQKvgvIZpP9)){ if(@file_exists(fSB9ZrUIK4aICK6XAM.UGhOmnuNjG2fj)){ $S6zsGHiQqbyS93wtuJ = @W4Xzu7_XRKxGlHA(pUvA4zhAkYZK2Nd8A(fSB9ZrUIK4aICK6XAM.UGhOmnuNjG2fj));; } if(!$S6zsGHiQqbyS93wtuJ){ $x3y6JFDVKhBEE3np = @W4Xzu7_XRKxGlHA(pUvA4zhAkYZK2Nd8A(fSB9ZrUIK4aICK6XAM.t_LlD5p6PQKvgvIZpP9)); $S6zsGHiQqbyS93wtuJ = $x3y6JFDVKhBEE3np['progpar']; } ?>
																									<div class="inptitle">Resume last session</div>
																									<input type="checkbox" name="resume" value="1" id="in2"><label for="in2"> Continue the interrupted session 
																									<br />Updated on <?php  $ED9J_RImHqcpoV = filemtime(fSB9ZrUIK4aICK6XAM.t_LlD5p6PQKvgvIZpP9); echo date('Y-m-d H:i:s',$ED9J_RImHqcpoV); if(time()-$ED9J_RImHqcpoV<600)echo ' ('.(time()-$ED9J_RImHqcpoV).' seconds ago) '; ?>, 
																									<?php echo	'Time elapsed: '.PvEr4n2DQ($S6zsGHiQqbyS93wtuJ[0]).',<br />Pages crawled: '.intval($S6zsGHiQqbyS93wtuJ[3]). ' ('.intval($S6zsGHiQqbyS93wtuJ[7]).' added in sitemap), '. 'Queued: '.$S6zsGHiQqbyS93wtuJ[2].', Depth level: '.$S6zsGHiQqbyS93wtuJ[5]. '<br />Current page: '.$S6zsGHiQqbyS93wtuJ[1].' ('.number_format($S6zsGHiQqbyS93wtuJ[10],1).')'; } ?>
																									</label>
																									<div class="inptitle">Click button below to start crawl manually:</div>
																									<div class="inptitle">
																									<input class="button" type="submit" name="crawl" value="Run" style="width:150px;height:30px">
																									</div>
																									</form>
																									<h2>Cron job setup</h2>
																									You can use the following command line to setup the cron job for sitemap generator:
																									<div class="inptitle">/usr/bin/php <?php echo dirname(dirname(__FILE__)).'/runcrawl.php'?></div>
																									</div>
																									<?php } include yCwTqe5GDcta.'page-bottom.inc.php'; 



































































































