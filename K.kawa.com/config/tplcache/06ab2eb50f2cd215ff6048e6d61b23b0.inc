<li><a href='{gemel:field name='typeurl'/}' class='{gemel:field.currentstyle/}'><img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="88" height="88" /><span>{gemel:field name='typename'/}</span></a>
                               <ul class="son_menu">
                                   
                    
                                           {gemel:sql sql='Select id from gemel_arctype where reid=4 ORDER BY id limit 0,100'}
                                              <li><a href="[field:array runphp='yes'] @me=GetOneTypeUrlA(@me);[/field:array]">[field:typename/]</a></li>
                                           {/gemel:sql}
                            
                                   
                              </ul>

                         </li>