<!-- typeid='5,6,7'-->
        <div class="products-list">
            <h2><a href="{gemel:field.typeurl/}">{gemel:field.typename/}</a></h2>
            <div class="products-row clear">
                <ul class="clear">
                    {gemel:arclist orderby='weight' titlelen='40' row='6' addfields='blist_img' channelid='2'}
                    <li>
                        <div class="img">
                            <a href="[field:arcurl/]">
                                <img src="[field:litpic/]" width="360" height="240" title="[field:title/]" alt="[field:title/]"/>
                            </a>
                        </div>    
                        <h3><a href="[field:arcurl/]">[field:title/]</a></h3>
                        <p>1220*2440*5~20mm</p>
                    </li>
                    {/gemel:arclist}
                </ul>
                <span><a href="{gemel:field.typeurl/}" class="more">More &gt;&gt;</a></span>
            </div>
        </div>