<div class="pro_list">
							<img src="{gemel:field name='typepic'/}" alt="{gemel:field name='typename'/}" title="{gemel:field name='typename'/}" width="354" height="257" />
							<a href="javascript:;">{gemel:field name='typename'/}</a>
							<div class="pro_info">
								{gemel:field name="content"/}
							</div>
						</div>
					{gemel:global  name=itemindex runphp='yes'}if(@me-1==0){@me='class="sample_cont clearfix nr"';}else{@me='class="undis"';}{/gemel:global}