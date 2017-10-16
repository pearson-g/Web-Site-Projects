<div class="list">
             <h2>{gemel:field.typename/}</h2><!--<h3><a href="{gemel:field.typeurl/}">{gemel:field.typename/}</a></h3>-->
             <ul class="clear"> 
                 {gemel:arclist orderby='weight' titlelen='40' row='10'}                                      
                 <li>
                     <a href="[field:arcurl/]"><img src="[field:litpic/]" title="[field:title/]" alt="[field:title/]" width="384" height="287" /></a>
                     <p><a href="[field:arcurl/]">[field:shorttitle/]</a></p>
                 </li>
                 {/gemel:arclist}
            </ul>
         </div>