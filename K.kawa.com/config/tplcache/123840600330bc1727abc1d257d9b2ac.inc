<li><a href='{gemel:field name='typeurl'/}' class='{gemel:field.currentstyle/}'><img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="88" height="88" /><span>{gemel:field name='typename'/}</span></a>
                              <ul class="son_menu">
                                  {gemel:sql sql='Select * from gemel_arctype where reid=~id~  ORDER BY id limit 0,20'}
                                      <li><a href="[field:typedir function='str_replace("{cmspath}","",@me)'/]"  class="depth_3"><img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="88" height="88" /><span>{gemel:field name='typename'/}</span></a></li>
                                  {/gemel:sql}
                              </ul>     
                         </li>