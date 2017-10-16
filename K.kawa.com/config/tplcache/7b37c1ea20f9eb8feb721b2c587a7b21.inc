<li>
                            <div class="downloadlist_left">
                                <img src="[field:litpic/]" alt="资料下载" />
                                <a class="preview" href="[field:files_url/]">预览</a>|
                                <a href="javascript:viod(0);" onclick="downloadfile()">下载</a>
                                <script   language="JavaScript">   
								  function   downloadfile()   {   
										  var   a   =window.open("[field:files_url/].pdf","_blank");   
								  a.document.execCommand("SaveAs");   
								  a.close();   
								  }   
								 </script>
                            </div>
                            <div class="downloadlist_right">
                                <a href="[field:files_url/]">[field:title/]</a>
                                <p>[field:description function='cn_substrR(html2text(@me),120)'/]...</p>
                            </div>
                        </li>