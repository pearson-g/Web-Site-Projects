<div class="list_text clear">
              <h2><a href="{gemel:field.typeurl/}">{gemel:field.typename/}</a></h2>
              <div class="list_img">
                   <a href="{gemel:field.typeurl/}"><img src="{gemel:field.typepic/}" title="{gemel:field.typename/}" alt="{gemel:field.typename/}" width="306" height="306" /></a>
              </div>
              <div class="list">
                   <ul class="clear">
                        {gemel:arclist orderby='weight' titlelen='100' addfields='blist_limg'}                   
                        <li>
                             <a href="[field:arcurl/]"><img src="[field:blist_img/]" title="[field:title/]" alt="[field:title/]" width="178" height="172" /></a>
                             <p><a href="[field:arcurl/]"> [field:shorttitle/]</a></p>
                        </li>
                        {/gemel:arclist}
                   </ul>
                   <div class="more"><a href="{gemel:field.typeurl/}">&gt;&gt;More</a></div>
              </div>
        </div>