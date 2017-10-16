// JavaScript Document
;(function($){
	$.fn.arc_slide=function(options){
	   var  defaults={ 
			M_UL:$(".slideshow ul"),            //大图UL
			S_UL:$(".slide_hidden ul li"),      //小图LI
			S_UL2:$(".slidelist2 ul li"),
			prev:$(".slidelist .prev"),        //切换大图左
			next:$(".slidelist .next"),        //切换大图右
			cLeft:$(""),                       //切换小图（不影响大图的切换）左
			cRight:$(""),            //切换小图（不影响大图的切换）右
			cStyle:"level",          //设置小图是横着排放还是垂直排放  //vertical垂直  //level 水平
			animated:'click',        //hover      //click                   
			mousemoveStop:true,     //true       //false
			tag:"leftLoop",          //leftLoop   //topLoop  //slide(可视大图个数为1时使用)   //fade(可视大图个数为1时使用)
			autoPlay:true,           //false      //true    
			scrolls:1,         //每次切换大图个数（目前只能实现1个、呵呵）
			vis:1,             //大图可视个数
			cvis:4,            //小图可视个数
			sIndex:0,          
			speed:500,
			intTime:5000,      //自动循环时切换间隔时间
			citOn:"active",
			num:0,
			//sTime:'Int_sTime',       
			flag:true,          //阻止连击事
			clickBig:false,
			adaptive:true
	   }
	   return this.each(function(){
         var opts = $.extend({},defaults,options),
		       nH = parseInt(opts.M_UL.find("li").height())/1600;
	     window_w = $(window).width(),
		     sLen = opts.S_UL.length,
		 banner_w = $(this),
		   body_W = banner_w.width(),
		   sIndex = opts.sIndex,
		      num = opts.num,
	 slide_list_W = body_W,
	     slide_Bi = 0.2,
	    slide_Bi2 = 0.03;
         
         opts.S_UL2.html('');
         if(body_W<550){
		  	opts.adaptive=true;
		  	//console.log(body_W);
		     }	
     
		 /*克隆*/
		  var cloneNum = sLen>=opts.vis?( sLen%opts.scrolls!=0 ? sLen%opts.scrolls: opts.scrolls):0; 
		  for(var i=0;i<opts.vis;i++){
				 opts.M_UL.find("li").eq(i).clone().addClass("clone").appendTo(opts.M_UL);   //内部追加
			  }	
		  for(var i=0;i<cloneNum;i++){
				 opts.M_UL.find("li").eq(sLen-i-1).clone().addClass("clone").prependTo(opts.M_UL);  //内部置顶
			  }	  
	      _sLen=opts.M_UL.find("li").length;
		  		
        var w=parseInt(opts.M_UL.find("li").width()),   //大图（LI）宽度
			 h=parseInt(opts.M_UL.find("li").height()),  //大图（LI）高度
		    cW=parseInt(opts.S_UL.outerWidth(true)),         //小图（LI）宽度（包括margin值）
		    cH=parseInt(opts.S_UL.outerHeight(true));        //小图（LI）高度（包括margin值）
		 var Bi =h/w;    
		
		function adaptive(_adaptive){
			if(_adaptive==true){
			    w=banner_w.width(),h=w*Bi,slide_list_W = parseInt(banner_w.width());
			    wCss(w,h,slide_list_W);
				function wCss(w,h,www){
					  //console.log(66);
					  $(this).css({width:w+'px',height:h+'px'});
					  opts.M_UL.parent(".slideshow").css({width:w+'px',height:h+'px'});
					  opts.M_UL.find("li,img").css({width:w+'px',height:h+'px'});
                      $(".slide-list").find("ul li").css({width:www*slide_Bi+'px',marginRight:www*slide_Bi2+'px'});
			    }						
				$(window).resize(function(){
                     //console.log(33);
					  w=banner_w.width(),h=w*Bi,slide_list_W = parseInt(banner_w.width());
					  //console.log(slide_list_W)
					  wCss(w,h,slide_list_W);
					  tags(opts.tag,w,h);	
				      cW=parseInt(opts.S_UL.outerWidth(true)),         //小图（LI）宽度（包括margin值）
				      cH=parseInt(opts.S_UL.outerHeight(true));        //小图（LI）高度（包括margin值）
				      tagSmall(opts.cStyle,cW,cH);			  
					})
				}	
		}
		adaptive(opts.adaptive);
        $(window).resize(function(){
			 var banner_w=$(this).width();
			 if(banner_w<550){
			 	 opts.adaptive=true;
			 	 adaptive(opts.adaptive);
			 }
        })
        /*默认第一个背景色为红色(针对小图)*/
		opts.S_UL.eq(0).addClass(opts.citOn);
		opts.S_UL2.eq(0).addClass(opts.citOn);
		/*刚加载时、改变窗口时对应样式修改*/
	    function tags(tag,w,h){
			switch(tag){
				  case 'leftLoop':
						opts.M_UL.css({width:_sLen*w+3+'px',left:-cloneNum*w+'px',position:'relative'});
						opts.M_UL.children("li").css({'float':'left'});			     
				  break;
				  case 'topLoop':
						opts.M_UL.css({'height':_sLen*h+3+'px','top':-cloneNum*h+'px','position':'relative'});
				  break;
				  case 'fade':
						opts.M_UL.find("li").css({opacity:0.2,position:"absolute",zIndex:5,left:'0px',top:'0px'});
						opts.M_UL.find("li").eq(cloneNum).css({opacity:1,zIndex:10});
				  break;
				}
		}
		tags(opts.tag,w,h);

		/*小的列表*/
		function tagSmall(_cStyle,ccw,cch){
			switch(_cStyle){
			      case  'level':
		          opts.S_UL.parent("ul").css({width:sLen*ccw+10+'px',position:'relative',left:0});
				  break;
				  case  'vertical':
		          opts.S_UL.parent("ul").css({height:sLen*cch+3+'px',position:'relative',top:0});
				  break;
			}	
	   }
		tagSmall(opts.cStyle,cW,cH);	
		/*click/hover实现动画效果*/
		switch(opts.animated){
			case 'click':
			  opts.S_UL.each(function(){
				  $(this).click(function(){
				  sIndex=$(this).index();
				  var is_to=true;
			      Call(is_to); 
				  })
			  }) 
			break;
			case 'hover':
			  opts.S_UL.mouseover(function(){
			  sIndex=$(this).index();
              var is_to=true;
			  Call(is_to);  
			  })
			break;  			
		}
		
		/*单击左右按钮*/
		/*单击左右按钮*/
        
        function ArcAnijs(winW){
	          if(winW>780){
			       opts.prev.click(function(){   
						  if (!opts.flag) return;
						  opts.flag = false; 
						  (sIndex >0||sIndex==0) ? sIndex-- : sIndex=sLen-2;  //sIndex=sLen-2
			               Call();
						   cTag(opts.cvis, sLen, opts.cStyle, sIndex, opts.S_UL, direction="left"); 
					});
					opts.next.click(function(){
						  if (!opts.flag) return; 
						  opts.flag = false;
						  (sIndex < sLen) ? sIndex++ : sIndex=cloneNum;    //sIndex=cloneNum
						  Call();
						  cTag(opts.cvis, sLen, opts.cStyle, sIndex, opts.S_UL, direction="right");
					});
           }else{
                var startS2= 0,      // 触摸开始位置
                     moveS2= 0;      // 触摸经过
                							    					
	       	    document.getElementsByClassName("article-slide")[0].addEventListener('touchstart',_touchStartFun2, false);
	            document.getElementsByClassName("article-slide")[0].addEventListener('touchmove',_touchMoveFun2, false);
	            document.getElementsByClassName("article-slide")[0].addEventListener('touchend',_touchEndFun2, false);

	            function _touchStartFun2(e){
	               var touch2 = e.touches[0];
                   startS2 = touch2.pageX;
	            }
	            function _touchMoveFun2(e){
                   //e.preventDefault();		
				   var touch2 = e.touches[0],
						dir2;
				   moveS2 = touch2.pageX;
				   dir2 = moveS2 - startS2;
				   //return false;

	            }
	            function _touchEndFun2(e){
                   if (moveS2- startS2 > 0 && sIndex == 0) {
					} else if (moveS2 - startS2 < 0 && sIndex == sLen - 1) {
						// 如果是最后一屏
					} else if (moveS2 - startS2 > 70) {
						// 如果高度滑动大于70像素，则向上移动一屏
						(sIndex >0||sIndex==0) ? sIndex-- : sIndex=sLen-1;  //sIndex=sLen-2
			               Call();
						   cTag(opts.cvis, sLen, opts.cStyle, sIndex, opts.S_UL, direction="left"); 
					} else if (moveS2 - startS2 < -70) {
						// 如果高度滑动小于70像素，则向下移动一屏
						(sIndex < sLen) ? sIndex++ : sIndex=cloneNum;    //sIndex=cloneNum
						  Call();
						  cTag(opts.cvis, sLen, opts.cStyle, sIndex, opts.S_UL, direction="right");
					}
	            }
           }
          }
         ArcAnijs(window_w);
		function Call(is_to){
			if(opts.autoPlay==true){
			  clearInterval(sTime);
			  bannerTag(opts.M_UL, opts.S_UL, sIndex, opts.speed, opts.tag, opts.S_UL2);
			  if(is_to){setInt();}
			}else{
			  bannerTag(opts.M_UL, opts.S_UL, sIndex, opts.speed, opts.tag, opts.S_UL2);
			}
		}	
		
		/*动画自动*/	
		function setInt(){
			if(opts.autoPlay==true){	
			  sTime=setInterval(function(){
				  (sIndex < sLen) ? sIndex++ : sIndex=cloneNum;
				  bannerTag(opts.M_UL, opts.S_UL, sIndex, opts.speed, opts.tag, opts.S_UL2);
				  cTag(opts.cvis, sLen, opts.cStyle, sIndex, opts.S_UL, direction="right");
				},opts.intTime)	
			  }
			}
		setInt();
		
		/*鼠标移到当前元素动画暂停，移开继续*/
		if(opts.autoPlay==true){
		      opts.prev.hover(
			    function(){
					 clearInterval(sTime);
					 },function(){
						 setInt();
					})
			  opts.next.hover(
			    function(){
					 clearInterval(sTime);
					 },function(){
						 setInt();
					})		
		};
		
		/***单击实现实现小图片偏移
		  **
		  **
		  **
		  **/
		opts.cLeft.click(function(){
			   if(opts.cStyle=='level'&&sLen>cvis){
				   opts.S_UL.parent("ul").css({left:0+'px'}); 
				   }
			   if(opts.cStyle=='vertical'&&sLen>cvis){
				   opts.S_UL.parent("ul").css({top:0+'px'});
				   }   
			})
		opts.cRight.click(function(){
			   if(opts.cStyle=='level'&&sLen>cvis){
				    opts.S_UL.parent("ul").css({left:-cvis*cW+'px'}); 
				   }
				if(cStyle=='vertical'&&sLen>cvis){
					opts.S_UL.parent("ul").css({top:-cvis*cH+'px'});
					}   
			})	  
		  
		/**小图片列表循环
		 **
		 **
		 **
		 **
		 **
		 **/
		function cTag(cvis, sLen, cStyle, sIndex, S_UL, direction){
		  var i=parseInt(sLen/cvis),remainder=sIndex%cvis,fu_yu=sLen%cvis; 		  
		  if(sLen>cvis){
			if(direction=="left"){
				 if(remainder==cvis-1||sIndex==sLen-1||sIndex==-1){
					  num--;
					  if(num<0){
						  num=i;
						  }
					  if(sIndex<0&&fu_yu==0){
						  num=i-1;
						  }  	 	  	     	
				 }				 	
			}else{
			    if(remainder==0&&sIndex<sLen){	  
					  num++;
				 }
				if(sIndex==sLen){
					 num=0;
					 }				 			 
		  }		  
		  if(cStyle=='level'){	     
				if(S_UL.eq(num*cvis).hasClass(opts.citOn)||S_UL.eq((num+1)*cvis-1).hasClass(opts.citOn)||S_UL.eq(sLen-1).hasClass(opts.citOn)){
					 S_UL.parent("ul").css({left:-(num*cvis*cW)+'px'});	  
							}	
				if(S_UL.eq(0).hasClass(opts.citOn)||S_UL.eq(cvis-1).hasClass(opts.citOn)){
					 S_UL.parent("ul").css({left:0+'px'});
							} 
			    }else if(cStyle=='vertical'){
					//console.log(num,sIndex);
					if(S_UL.eq(num*cvis).hasClass(opts.citOn)||S_UL.eq((num+1)*cvis-1).hasClass(opts.citOn)||S_UL.eq(sLen-1).hasClass(opts.citOn)){
						   S_UL.parent("ul").css({top:-(num*cvis*cH)+'px'});	  
							}	
				    if(S_UL.eq(0).hasClass(opts.citOn)||S_UL.eq(cvis-1).hasClass(opts.citOn)){
						   S_UL.parent("ul").css({top:0+'px'});
							}
					}
			  }
		}
		
		/**首页banner滚动动画
		 **index 当前索引
		 **speed 动画时间
		 **tag   动画方式
		 **s     $(".slide ul")
		 **c     $(".cit ul li")
		 **/
		 
		function bannerTag(s, c, index, speed, tag,f){  
			var _left=-(index+cloneNum) * w;
			var _height=-(index+cloneNum) * h;   //topLoop
			if(index<sLen||index==0){s
				    c.removeClass(opts.citOn).eq(index).addClass(opts.citOn);
				    f.removeClass(opts.citOn).eq(index).addClass(opts.citOn);
				}else if(index>sLen||index==sLen){
					     c.removeClass(opts.citOn).eq(0).addClass(opts.citOn);
					     f.removeClass(opts.citOn).eq(0).addClass(opts.citOn);
					}else{//index<0
						    c.removeClass(opts.citOn).eq(sLen-1).addClass(opts.citOn);
						    f.removeClass(opts.citOn).eq(sLen-1).addClass(opts.citOn);
							}
			switch(tag){
				 case 'leftLoop':
					 s.stop(true,false).animate({
						 left:_left*opts.scrolls + "px"
					 },speed, function(){
						if( index<0 ){
							s.animate({
								 left:-(cloneNum+(sLen-1)*opts.scrolls)*w+'px'
							},0); 
						}else if( index>=sLen){ 
							s.animate({
								left:-cloneNum*w+'px'
							},0);
						}
						opts.flag = true;    // 设置按钮可用
					});
					break;
				 case 'topLoop':
				     //alert(index);
				 	 s.stop(true,false).animate({
						 top:_height*opts.scrolls + "px"
					 },speed, function(){
						if( index<0 ){
							s.animate({
								 top:-(cloneNum+(sLen-1)*opts.scrolls)*h+'px'
							},0); 
						}else if( index>=sLen){ 
							s.animate({
								top:-cloneNum*h+'px'
							},0);
						}
						opts.flag = true;    // 设置按钮可用
					});
					break;	
				 case 'fade':
				     if(opts.vis==1){
						 s.find("li").css({opacity:0.2,zIndex:5});	
						 s.find("li").eq(index+cloneNum).animate({opacity:1,zIndex:10},speed-50,function(){opts.flag = true;}); 
					 }else{
						  return false;
						 }
			     break;
				 case 'slide':
						 s.find("li").slideUp(speed);	
						 s.find("li").eq(index).slideDown(speed); 
				 break;
				 case 'display':
						 s.find("li").hide();	
						 s.find("li").eq(index+cloneNum).show(); 
						 opts.flag = true;
				 break;
				}
		 }	
		 
		/*---------相关产品----------------*/
		var winW1=$(window).width();
        var related_pro=$(""),
            related_li=related_pro.find("ul li"),
            related_W=parseInt(related_li.outerWidth(true)),
            related_len=related_li.length,
            related_prev=related_pro.find(".prev"),
            related_next=related_pro.find(".next"),
            related_In=0,
            related_flag=true,
            related_aniTime=800,
            related_BI=0,ss=0;
	    var relatedBox_W=related_pro.find(".related-list").width(),
	        n_Bi=0.239,
	        n_Bi2=0.0113;

		function varC(w){
           if(w>980){
           	 related_BI=Math.ceil(related_len/4);
           	 n_Bi=0.239;
           	 ss=4;
           }else{
           	 related_BI=Math.ceil(related_len/2);
           	 n_Bi=0.488;
           	 ss=2;
           }
		}
        varC(winW1);
        $(window).resize(function(){
        	var winWx=$(window).width();
        	varC(winWx);
        })

	    
	    if(related_len<5){$(".related-slide-box .arrow").hide();}   
	    if(related_len==0||related_len<0){$(".related-list").hide();}                  
	    function liCss(w,related_Ws){
	        related_pro.find("ul").css({width:(related_Ws*related_len+20)+'px'}); 
	        //related_In=0;
	      }
	      liCss(relatedBox_W,related_W);

	    var win_W=parseInt(related_pro.find(".related-list").width());
	      if(win_W<1054){
	          relatedBox_W=parseInt(related_pro.find(".related-list").width());
	          related_li.stop(true,false).animate({width:relatedBox_W*n_Bi+'px',marginRight:relatedBox_W*n_Bi2+'PX'},200,function(){
	               related_W=parseInt(related_li.outerWidth(true));
	               //console.log(related_W);
	               liCss(relatedBox_W,related_W);
	          });
	            
	         }
	      
	      $(window).resize(function(){
	         var win_W2=parseInt(related_pro.find(".related-list").width()),related_Wn=0;       
	         //if(win_W2<1110){
	          relatedBox_W=parseInt(related_pro.find(".related-list").width());
	          related_li.stop(true,false).animate({width:relatedBox_W*n_Bi+'px',marginRight:relatedBox_W*n_Bi2+'PX'},200,function(){
	                related_W=related_li.outerWidth(true);
	                liCss(relatedBox_W,related_W);
	          });        
	         //}
	         var winW2=$(window).width();
	         Anijs(winW2);
	      })
          
          function Anijs(winW){
	          if(winW>980){
			       related_prev.click(function(){
			          if(related_BI<2)return;
			          if (!related_flag) return;
			          related_flag = false; 
			          related_In--;
			          if(related_In<0){
			            related_In=related_BI-1;
			            }
			          related_Ani(related_In);   
			          //console.log(1); 
			          })
			        related_next.click(function(){
			          if(related_BI<2)return;
			          if (!related_flag) return;
			          related_flag = false; 
			          related_In++;
			          if(related_In>related_BI-1){
			            related_In=0;
			          }
			          //console.log(2);
			          related_Ani(related_In);    
			          })
           }else{
                var startS= 0,      // 触摸开始位置
                     moveS= 0;      // 触摸经过
                							    					
	       	    document.getElementsByClassName("related-list")[0].addEventListener('touchstart',_touchStartFun, false);
	            document.getElementsByClassName("related-list")[0].addEventListener('touchmove',_touchMoveFun, false);
	            document.getElementsByClassName("related-list")[0].addEventListener('touchend',_touchEndFun, false);

	            function _touchStartFun(e){
	            	
	               var touch = e.touches[0];
                   startS = touch.pageX;
	            }
	            function _touchMoveFun(e){
	            	
                   //e.preventDefault();		
				   var touch = e.touches[0],
						dir;
				   moveS = touch.pageX;
				   dir = moveS - startS;	

	            }
	            function _touchEndFun(e){
                   if (!related_flag) return;
			          related_flag = false;
                   if (moveS- startS > 0 && related_In == 0) {
                   	  // 如果是第一屏
                     //console.log(1);
					} else if (moveS - startS < 0 && related_In == related_BI - 1) {
						// 如果是最后一屏
						 //console.log(2);
					} else if (moveS - startS > 70) {
						// 如果高度滑动大于70像素，则向上移动一屏
						 //console.log(3);
						 
						related_In--;
						
					} else if (moveS - startS < -70) {
						// 如果高度滑动小于80像素，则向下移动一屏
						 
						 //console.log(4);
						related_In++;
						
					}
					 
					related_Ani(related_In);
	            }
           }
          }
           Anijs(winW1);
	        function related_Ani(related_In2){ 
	          //console.log(related_In2,related_flag)
	          related_pro.find("ul").stop(true,false).animate({left:-related_In2*ss*related_W+'px'},related_aniTime,function(){
	          	related_flag=true;
	          })
	      }
           

	  })	
   }
})(jQuery);		    