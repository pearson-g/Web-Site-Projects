<div class="list-text show">
              <h2><a href="{gemel:field.typeurl/}">{gemel:field.typename/}</a></h2>
              <div class="list">
                   <ul class="clear">
                        {gemel:arclist orderby='weight' titlelen='40' row='40'}                   
                        <li>
                             <a href="[field:arcurl/]"><img src="[field:litpic/]" title="[field:title/]" alt="[field:title/]" width="298" height="450" /></a>
                             <p><a href="[field:arcurl/]"> [field:shorttitle/]</a></p>
                        </li>
                        {/gemel:arclist}
                   </ul>
              </div>
        </div>