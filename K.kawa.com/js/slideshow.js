$(function(){
	//根据位置的不同实现幻灯片自动播放功能
	function ScrollPos(opts){
        this.curClass = opts.curClass;
   	    this.speed = opts.speed;
        this.el = opts.el; 
   	    this.listEl = opts.listEl;
   	    this.prevEl = opts.prevEl;
   	    this.nextEl = opts.nextEl;  		
    }
    ScrollPos.prototype = {  
        _isPcFun: function(){
            var userAgentInfo = navigator.userAgent,
                Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"),
                flag = true; 
            for (var v = 0; v < Agents.length; v++) { 
                if (userAgentInfo.indexOf(Agents[v]) > 0) { 
                    flag = false; break; 
                } 
            } 
            return flag;
        },         
        _slideshowFun: function(_box,_list,_prev,_next){
        	   var e = this,
        		    mainLen = _box.children().length,
        		    curIndex = 1,
                winW = $(window).width(),
                imgH = _box.find('img').attr('height'),
                per = winW/1600;
                function setElW(){
                    e.el.parent().css({
                        width: winW,
                        height: imgH*per
                    });
                    e.el.children().css({
                         width: winW,
                         height: imgH*per
                    });
                }
                setElW();
                var mainW = winW;
                function setMainW(){
                    //主体动态设置宽度
                    _box.css({
                        width: (mainLen+2)*mainW,
                        left: -mainW
                    });
                }
                setMainW();
                //改变窗口大小时执行的代码
                $(window).on('resize',function(){
                    winW = $(window).width();
                    per = winW/1600;
                    mainW = winW;
                    setMainW();
                    setElW();
                });
                //第一个圆点设置默认选中
                _list.children().eq(0).addClass(e.curClass).siblings().removeClass(e.curClass);
        		//克隆第一个元素置底，克隆最后一个元素置顶
        		_box.children().eq(0).clone().addClass('clone').appendTo(_box);
                _box.children().eq(mainLen-1).clone().addClass('clone').prependTo(_box);
        		//开启定时器执行自动滚动
                _timer = setInterval(function(){
                    curIndex++;
                    if(curIndex > mainLen){
                        curIndex = 1;
                        _box.css({
                            left: 0
                        });
                    }
                    e._sliderAnimateFun(_box,_list,curIndex,mainW);
                },e.speed);
        		//鼠标滑到对应的点击对象时，清楚定时器，离开则开启
        		function _objHover(_obj){
        			_obj.hover(function(){
        				clearInterval(_timer);
        			},function(){
        				_timer = setInterval(function(){
        					curIndex++;
		        			if(curIndex > mainLen){
		        				curIndex = 1;
		        				_box.css({
			        				left: 0
			        			});
		        			}
		        			e._sliderAnimateFun(_box,_list,curIndex,mainW);
        				},e.speed);
        			});
        		}
                if(e._isPcFun()){
                    _objHover(_list);
                    _objHover(_prev);
                    _objHover(_next);
                    //点击小圆点执行滚动
                    _list.children().on('click',function(){
                        curIndex = $(this).index()+1;
                        e._sliderAnimateFun(_box,_list,curIndex,mainW);
                    });
                    //点击prev按钮时，向右滚动
                    _prev.on('click',function(){
                        curIndex--;
                        if(curIndex == 0){
                            curIndex = mainLen;
                            _box.css({
                                left: -(mainLen+1)*mainW
                            });
                        }
                        e._sliderAnimateFun(_box,_list,curIndex,mainW);
                    });
                    //点击next按钮时，向左滚动
                    _next.on('click',function(){
                        curIndex++;
                        if(curIndex > mainLen){
                            curIndex = 1;
                            _box.css({
                                left: 0
                            });
                        }
                        e._sliderAnimateFun(_box,_list,curIndex,mainW);
                    });
                    //滑到幻灯上执行按钮动画效果
                    _box.parent().parent().hover(function(){
                        $(this).find('.prev').addClass(e.curClass);
                        $(this).find('.next').addClass(e.curClass);
                    },function(){
                        $(this).find('.prev').removeClass(e.curClass);
                        $(this).find('.next').removeClass(e.curClass);
                    });
                }
                else{
                    var direction = 'lanscape',
                        startS = 0,
                        moveS = 0,
                        _touchStartFun = function(e){
                            var _touch = e.touches[0];
                            if(direction=='vertical'){
                                startS = _touch.pageY;
                            }
                            else{
                                startS = _touch.pageX;
                            }
                            clearInterval(_timer);
                        },
                        _touchMoveFun = function(e){
                            var _touch = e.touches[0];
                            e.preventDefault(); 
                            if(direction == 'vertical'){
                                moveS = _touch.pageY;
                            }
                            else{
                                moveS = _touch.pageX;
                            }
                        },
                        _touchEndFun = function(){
                            var  _direct = moveS - startS;
                            if (_direct > 40) {
                                curIndex--;
                                if(curIndex == 0){
                                    curIndex = mainLen;
                                    _box.css({
                                        left: -(mainLen+1)*mainW
                                    });
                                }
                                e._sliderAnimateFun(_box,_list,curIndex,mainW);
                            } 
                            if (_direct < -40) {
                                curIndex++;
                                if(curIndex > mainLen){
                                    curIndex = 1;
                                    _box.css({
                                        left: 0
                                    });
                                }
                                e._sliderAnimateFun(_box,_list,curIndex,mainW);
                            }
                            _timer = setInterval(function(){
                                curIndex++;
                                if(curIndex > mainLen){
                                    curIndex = 1;
                                    _box.css({
                                        left: 0
                                    });
                                }
                                e._sliderAnimateFun(_box,_list,curIndex,mainW);
                            },e.speed);

                        };
                        _box.parent()[0].addEventListener('touchstart',_touchStartFun, false);
                        _box.parent()[0].addEventListener('touchmove',_touchMoveFun, false);
                        _box.parent()[0].addEventListener('touchend',_touchEndFun, false);
                }
        		
        },
        _sliderAnimateFun: function(_box,_list,_index,_selfW){
        	var e = this;
        	//主体执行滚动效果
            _box.stop(true,true).animate({
                left: -_selfW*(_index)
            },500);
            //当前小圆点执行选中效果
            _list.children().eq(_index-1).addClass(e.curClass).siblings().removeClass(e.curClass);
        },
        _init: function(){
            var e = this;
            e._slideshowFun(e.el,e.listEl,e.prevEl,e.nextEl);
        }
    }
    // new ScrollPos({
	   //  curClass: 'active',
	   //  speed: 5000,
	   //  el: $('.banner .slideshow ul'),
	   //  listEl: $('.slidelist ul'),
	   //  prevEl: $('.slidebox .prev'),
	   //  nextEl: $('.slidebox .next')
    // })._init();
});