
{gemel:noteinfo notename="文章测试" channelid="1" macthtype="string"
refurl="http://" sourcelang="utf-8" cosort="asc" isref="no" exptime="10" usemore="0" /}

{gemel:listrule sourcetype="hand" rssurl="http://" regxurl="http://"
startid="1" endid="" addv="1" urlrule="area"
 musthas="shtml" nothas="" listpic="1" usemore="0"}
    {gemel:addurls}http://www.chinaz.com/news/roll/{/gemel:addurls}
    {gemel:batchrule}{/gemel:batchrule}
    {gemel:regxrule}{/gemel:regxrule}
    {gemel:areastart}<div class="news_list">{/gemel:areastart}
    {gemel:areaend}<ul class="pageul">{/gemel:areaend}
{/gemel:listrule}

