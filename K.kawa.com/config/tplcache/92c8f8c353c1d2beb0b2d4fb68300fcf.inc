<div class="pro_list">
							<img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="354" height="257" />
							<a href="javascript:;">{gemel:field name='typename'/}</a>
							<div class="pro_info">
								{gemel:field name="content"/}
							</div>
						</div>
					{gemel:name runphp='yes'}
						for ($j=1; $j <= 18; $j++) {
							if ($j==9) {
								@me = "</li><li>";
							}
						}
					{/gemel:name}