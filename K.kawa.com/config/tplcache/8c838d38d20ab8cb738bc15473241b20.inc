<!-- typeid='3,4,5,6'-->
    <div class="products_list">
        <h2><a href="{gemel:field.typeurl/}">{gemel:field.typename/}</a></h2>
        <div class="products_row clear">
            <div class="products_left">
                <a href="{gemel:field.typeurl/}"><img src="{gemel:field.typepic2/}" width="405" height="380" title="{gemel:field.typename/}" alt="{gemel:field.typename/}"/></a>
            </div>
            <div class="products_right">
                <ul class="clear">
                    {gemel:arclist orderby='weight' titlelen='40' row='6' addfields='blist_img' channelid='2'}
                    <li>
                        <a href="[field:arcurl/]">
                            <img src="[field:blist_img/]" width="182" height="130" title="[field:title/]" alt="[field:title/]"/>
                        </a>
                    </li>
                    {/gemel:arclist}
                </ul>
                <span><a href="{gemel:field.typeurl/}" class="more">More &gt;&gt;</a></span>
            </div>
        </div>
    </div>