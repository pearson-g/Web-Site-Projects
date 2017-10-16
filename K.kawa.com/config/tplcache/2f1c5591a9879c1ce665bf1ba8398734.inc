{gemel:listconfig}
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

{/gemel:listconfig}

{gemel:itemconfig}
{gemel:sppage sptype='full' sptype='full' srul='1' erul='5'}{/gemel:sppage}
{gemel:previewurl}http://www.chinaz.com/news/2012/1024/279602.shtml{/gemel:previewurl}
{gemel:keywordtrim}{/gemel:keywordtrim}
{gemel:descriptiontrim}{/gemel:descriptiontrim}
{gemel:item field='title' value='' isunit='' isdown=''}
   {gemel:match}<title>[内容] - 站长之家</title>{/gemel:match}
   
   {gemel:function}{/gemel:function}
{/gemel:item}
{gemel:item field='writer' value='' isunit='' isdown=''}
   {gemel:match}{/gemel:match}
   
   {gemel:function}{/gemel:function}
{/gemel:item}
{gemel:item field='source' value='' isunit='' isdown=''}
   {gemel:match}{/gemel:match}
   
   {gemel:function}{/gemel:function}
{/gemel:item}
{gemel:item field='pubdate' value='' isunit='' isdown=''}
   {gemel:match}{/gemel:match}
   
   {gemel:function}@me=GetMkTime(@me);{/gemel:function}
{/gemel:item}
{gemel:item field='body' value='' isunit='1' isdown='1'}
   {gemel:match}<div class="content cont-detail fs-small" id="ctrlfscont">[内容]<div class="share-mod clearfix">{/gemel:match}
   {gemel:trim replace=""}<a([^>]*)>(.*)</a>{/gemel:trim}
{gemel:trim replace=""}<script([^>]*)>(.*)</script>{/gemel:trim}
{gemel:trim replace=""}<div([^.]*)>{/gemel:trim}
{gemel:trim replace=""}</div>{/gemel:trim}
   {gemel:function}{/gemel:function}
{/gemel:item}

{/gemel:itemconfig}