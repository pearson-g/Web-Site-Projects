// JavaScript Document
$(function() {
    var bread_A = $(".bread a"),
        menu_Li = $(".header .nav").children(".w1200").children("ul").children("li"),
        float_Li = $(".float .nav").children(".w1200").children("ul").children("li"),
        Li_a = $(".products-box .nav-left").find("ul li"),
        pro_List = $('.pro-list-box ul li'),
        menu_Btn = $('.menu-btn'),
        menu_Box = $('.menu-box'),
        search_Btn = $('.search em'),
        search_Show = $('.search-show'),
        searc_Close = $('.search-show i'),
        for_Mail = $('.feature-quotes .bt'),
        get_Quote = $('.get-quote'),
        quote_Close = $('.form-box em');

    /*导航高亮*/
    menu_Li.each(function(i) {
        // console.log($(this).children("a").text())
        // console.log(bread_A.eq(1).text())
        var _text = $(this).children("a").text();
        if (_text == bread_A.eq(1).text()) {
            $(this).addClass("current").siblings("li").removeClass("current");
        }
    });
    float_Li.each(function(i) {
        var _text = $(this).children("a").text();
        if (_text == bread_A.eq(1).text()) {
            $(this).addClass("current").siblings("li").removeClass("current");
        }
    });
    menu_Box.children('ul').children('li').each(function(i) {
        var _text = $(this).children("a").text();
        if (_text == bread_A.eq(1).text()) {
            $(this).addClass("current").siblings("li").removeClass("current");
        }
    });



    //导航下拉
    menu_Li.find(".pull-down-a").hide();
    menu_Li.hover(function() {
        $(this).children("i").css({
            display: 'block'
        });
        $(this).find(".pull-down-a").stop(true, false).show(200);
    }, function() {
        $(this).children("i").css({
            display: 'none'
        });
        $(this).find(".pull-down-a").stop(true, false).hide(200);
    });

    //返回顶部
    $('<div class="backToTop"></div>').appendTo($("body"));
    $(".backToTop").click(function() {
        $("html,body").animate({
            scrollTop: 0
        }, 200);
    });
    //浮动导航栏
    $(window).bind("scroll", function() {
        var tops = parseInt($(window).scrollTop());
        var myHight = $(".header").height();
        var sidebar = $(".sidebar");
        if (tops == 0 || tops < 0) {
            $(".backToTop").css({
                display: "none"
            });
        } else {
            $(".backToTop").css({
                display: "block"
            });
        }
        if (tops > myHight) {
            $(".header").addClass('flow-header');
            $("body").css({
                paddingTop: myHight + 'px'
            });
            sidebar.css({
                top: 54 + 'px'
            });
        } else {
            $(".header").removeClass('flow-header');
            $("body").css({
                paddingTop: 0 + 'px'
            });
            sidebar.css({
                top: 150 + 'px'
            })
        }
    });

    /*顶部搜索*/
    search_Btn.click(function() {
        $(this).hide();
        search_Show.show();
    });
    searc_Close.click(function() {
        search_Btn.show();
        search_Show.hide();
    });
    var key = $("#keyword");
    $("#search").click(function() {
        if (key.val() == '' || key.val() == 'Search..') {
            alert('Keyword can not be empty');
            key.focus();
            return false;
        } else {

            $("#form1").submit();
        }
    });
    $("#form1").keydown(function(event) {

        if (event.keyCode == 13) {
            if (key.val() == '' || key.val() == key.defaultValue) {
                alert('Keyword can not be empty');
                key.focus();
                return false;
            }
            $("#form1").submit();
        }
    });

    $(".send-mail input,.send-mail textarea,.search input").focus(function() {
        var inpVal = $(this).val();
        if (inpVal == this.defaultValue) {
            $(this).val('');
        }
    }).blur(function() {
        var inpVal = $(this).val();
        if (inpVal == '') {
            $(this).val(this.defaultValue);
        }
    });

    //导航点击出现响应式菜单效果

    menu_Btn.click(function() {
        if ($(this).hasClass('open')) {
            $(this).removeClass('open');
            menu_Box.css('display', 'none');
        } else {
            $(this).addClass('open');
            menu_Box.css('display', 'block');
        }


    });
    //产品列表页点击效果
    pro_List.each(function(i) {
        if (bread_A.eq(2).text() === pro_List.eq(i).find('span').text()) {
            pro_List.eq(i).addClass('active');

        } else {
            pro_List.eq(i).removeClass('active');
        }


    });
    //产品详情页询盘功能
    for_Mail.click(function() {
        get_Quote.slideDown();
    });
    quote_Close.click(function() {
        get_Quote.slideUp();
    });


    //轮播效果
    $(".about-sec").slide({
        titCell: ".slide-list ul",
        mainCell: ".about-slide-show ul",
        autoPage: true,
        effect: "leftLoop",
        autoPlay: true,
        scroll: 1,
        vis: 3,
        trigger: "click",
        interTime: 3000,
        titOnClassName: "active"
    });
    $(".related-slide-box").slide({
        titCell: ".related-list ul",
        mainCell: ".related-show ul",
        autoPage: true,
        effect: "leftLoop",
        autoPlay: true,
        scroll: 1,
        vis: 4,
        trigger: "click",
        interTime: 3000,
        titOnClassName: "active"
    });
    //产品详情页 参数切换
    var art_Li = $('.param-top>ul>li'),
        art_Con = $('.param-content>ul');
    art_Li.each(function(i) {

            art_Li.eq(i).click(function() {

                art_Li.eq(i).addClass('active').siblings().removeClass('active');
                art_Con.eq(i).addClass('active').siblings().removeClass('active');
            })
        })
        //产品详情页 浮动菜单
    var catego_Em = $(".sidebar em"),
        catego_Close = $(".side-categories span"),
        catego_Content = $(".side-categories");

    catego_Em.click(function() {
        catego_Content.show();
        $(this).hide();
    })
    catego_Close.click(function() {
            catego_Content.hide();
            catego_Em.show();
        })
        // var window_Height=$(window).height(),catego_Ul=$(".sidebar .side-categories ul");
        // $(window).resize(function(){
        //     var real_H=window_Height-150;
        //     catego_Ul.css({
        //         height:real_H+'px'
        //     });
        // })

    //邮箱验证
    var name = $(".name"),
        company = $(".company"),
        email = $(".email"),
        message = $(".message"),
        format = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    $("#form .sub-btn").click(function() {
        $(this).parent().submit();
    });
    $("#form").submit(function() {

        var _email = email.val();
        // if(company.val()==''){
        // alert('company can not be empty!');
        // company.focus();
        // return false;
        // }
        if (name.val() == 'Name') {
            alert('Name can not be empty!');
            name.focus();
            return false;
        }
        if (email.val() == 'E-mail') {
            alert('Email can not be empty!');
            email.focus();
            return false;
        } else if (!_email.match(format)) {
            alert('Email is wrong');
            return false;

        }
        if (message.val() == 'Message') {
            alert('Message can not be empty!');
            message.focus();
            return false;
        }

    });
    // 询盘邮件验证
    var r_email = $("#email"),
        subject = $("#subject"),
        content = $("#content"),
        format_r = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
   
    $("#form2 #form-submit").click(function() {
        $(this).parent().parent().parent().parent().submit();
        
    });
    $("#form2").submit(function() {
         var email_Val = r_email.val();
        if (r_email.val() == 'Email Address:*') {
            alert('Email can not be empty!');
            r_email.focus();
            return false;
        } else if (!email_Val.match(format_r)) {
            
                alert('Email is wrong');
            return false;

        }
        if (subject.val() == 'Subject:*') {
            alert('Subject can not be empty!');
            subject.focus();
            return false;
        }

        if (content.val() == 'Content:*') {
            alert('Content can not be empty!');
            content.focus();
            return false;
        }

    });




});
