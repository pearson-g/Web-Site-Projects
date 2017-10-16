// JavaScript Document
$(function(){
  var proList=$(".products-son-box .son-list ul li"),href=window.location.href;
  $("#href").val(href);
  proList.click(function(){
  	if($(this).hasClass('select')){
         $(this).removeClass('select');
  	   }else{
         $(this).addClass('select');
  	}
  })
  $("#list-send").click(function(){
  	if($("input[name='list[]']:checked").length < 1)
      {
      	alert('Select at least one product!');
      }else{
      	$("#list-email").submit();
      }	
   })
   
   /************************************************
    ************************************************
    **Cookie 机制
    ************************************************
    ***********************************************/

   var Li_click=$(".pro-content-02 ul li"), //点击的产品列表
       flag=false,
       default_Arr=new Array(), //自定义一个空数组
       close_Button=$(".clear-all"), //清除列表按钮
       basketList=$(".send-list").find('ul'), //询盘列表
       send_Idlist=$("#sendlist"), //产品id
       numBox=$(".num-basket"), //数量
       sendBox=$(".sendbox"),
       sendBox_Close=$('.close-send'); //

   if($.cookie('cookieName')!=null&&$.cookie('cookieName')!=""&&$.cookie('cookieName')!="null"){ //判断是否刷新页面或者跳转页面
      default_Arr=$.cookie('cookieName').split(',');
   }
    
   Li_click.each(function(){
      var span_Button=$(this).children("p").children('i');
      span_Button.click(function(){
          $('.sendbox').show();
          var input_Val=$(this).find("input").val();
          jqchk(input_Val);
      })
   })

   //产品详情页添加功能
   var feature_quotes=$('.feature-quotes .add-basket');
   feature_quotes.click(function(){
    $('.sendbox').show();
     var input_Val=$(this).children('p').children('i').find('input').val();
          jqchk(input_Val);
   })
   sendBox_Close.click(function(){
    $('.sendbox').hide();
   })

   // ======================================功能区====================

   function jqchk(val){ //jquery获取复选框值 
      var arr_Lin=new Array(),
          Num=parseInt(numBox.text());;
      if($.cookie('cookieName')!=null&&$.cookie('cookieName')!=""&&$.cookie('cookieName')!="null"){
         arr_Lin=$.cookie('cookieName').split(',');
      }
      if(arr_Lin=="null"||arr_Lin.length==0){
        arr_Lin=[];
        Num=1;
      }

      //判断ID值是否重复
      if(arr_Lin.length==0){
         arr_Lin.push(val);
      }else{
         var result = $.inArray(val, arr_Lin);
         if(result<0){
            Num++;
            arr_Lin.push(val);
         }
      }
      numBox.text(Num);
      cookSet(arr_Lin); 
      //alert(chk_value.length==0 ?'你还没有选择任何内容！':chk_value); 
   }
   function cookSet(arr){  //最终数据赋值给Cookie
     if(default_Arr.length!=0){
        var mainArray=new Array();
        mainArray=$.merge(default_Arr, arr); //合并上一页面值
        mainArray=$.unique(mainArray);  //删除重复的值
        $.cookie('cookieName', mainArray); 
        default_Arr=[];      
     }else{
        $.cookie('cookieName', arr);
     }
     var htm_T=$.cookie('cookieName').split(',');
     // console.log(htm_T);

     addajax(htm_T);
     //console.log(htm_T);
   }
   
   function addajax(obj){ //新增列表
      send_Idlist.val(obj);
      $.ajax({
          url: '/search/data.php',
          type: 'POST',
          data: 'flag=true&did='+obj,
          dataType: "html",
          success: function(data) {
            //console.log(result);
              $(".send-list").find("ul").html(data);
             }  
       });
   }
   close_Button.click(function(event) {//清除cookie
     basketList.html("");
     send_Idlist.val("");
     numBox.text(0);
     sendBox.removeClass("on");
     $.cookie('cookieName',null);
   });

   /*
    *页面刚才跳转时加载数据
    */
    if($.cookie('cookieName')!=null&&$.cookie('cookieName')!=""&&$.cookie('cookieName')!="null"){
        var ajax_Arr=$.cookie('cookieName');
        var num_basket=($.cookie('cookieName').split(',')).length;
        $(".num-basket").text(num_basket);
        $("#sendlist").val(ajax_Arr);
        $.ajax({
          url: '/search/data.php',
          type: 'POST',
          data: 'flag=true&did='+ajax_Arr,
          dataType: "html",
          success: function(data) {
            //console.log(result);
              $(".send-list").find("ul").html(data);
             }  
       });
    }
    /*
    *删除已添加选项
    */

    basketList.on('click',function(event){
        event.stopPropagation();
        var $target = $(event.target),
            send_Idlist_val=(send_Idlist.val()).split(','),
            Num=parseInt(numBox.text()); 
        if(event.target.tagName == 'EM'){
             var Li=$target.parents("li"),
                 del_id=Li.find(".delete_id").val(); 
             var index = $.inArray(del_id,send_Idlist_val);
             //send_Idlist_val[index]=[];
             send_Idlist_val.splice(index,1);
             send_Idlist_val=send_Idlist_val.join(',');
             send_Idlist.val(send_Idlist_val);
             Num--;
             numBox.text(Num);
             Li.remove();
             $.cookie('cookieName', send_Idlist_val);
        }
     })
    $(".send-button").click(function(){
       $("#sendemail").submit();
    })
})