<li><a href='{gemel:field name='typeurl'/}' class='{gemel:field.currentstyle/}'><img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="88" height="88" /><span>{gemel:field name='typename'/}</span></a>
                               <ul class="son_menu">
                                   
                                       <ul>
                                           {dede:sql sql='Select * from dede_arctype where reid=~id~ ORDER BY id limit 0,100'}
                                              <li><a href="[field:array runphp='yes']@me=GetOneTypeUrlA(@me);[/field:array]"  title="[field:typename/]" >[field:typename/]</a></li>
                                           {/dede:sql}
                                      </ul>
                                   
                              </ul>

                         </li>