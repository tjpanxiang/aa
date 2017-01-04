<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/jsp/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="ui-mobile landscape min-width-240px min-width-320px min-width-480px min-width-768px min-width-1024px">
<meta charset="utf-8">
<meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
<meta content="yes" name="apple-mobile-web-app-capable">
<head>
	<jsp:include page="/jsp/common/header.jsp"/>
	<title>会员之家</title>
	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.css">
	<link rel="stylesheet" href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css">
	<script type='text/javascript' src='https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js'></script>
	<script type="text/javascript" src="https://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
</head>
<body>
<input id="coupon_infoStatus" type="hidden" value="${user.coupon_infoStatus}"> 
<input id="coupon_infoStr" type="hidden" value="${user.coupon_infoStr}"> 
<div class="" id="ewmmm" style="padding: 0.75em; height:8em;">
	<div class="" style="width:5em;margin:0 auto;">
		<c:choose>
		<c:when test="${empty user.customer.headimgurl}">
			<div style="background: rgba(0,0,0, 0.2); filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#33000000, endColorstr=#33000000);width:5em;height:5em;border-radius:2.5em;padding:0.5em;"><img style="width:4em;border-radius:2em;" src="${wechatPath}wimg/ucp_ico2.jpg"></div>
		</c:when>
		<c:otherwise>
			<div style="background: rgba(0,0,0, 0.2); filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#33000000, endColorstr=#33000000);width:5em;height:5em;border-radius:2.5em;padding:0.5em;"><img style="width:4em;border-radius:2em;" src="${user.customer.headimgurl}"></div>
		</c:otherwise>
		</c:choose>
	</div>
	<div class="" style="overflow:hidden;margin-top:0em;text-align:center;color:#fff">
		<ul>
			<li style="font-size:0.7em;margin-top:-1em;font-weight:900">
			<c:choose>
			<c:when test="${empty user.customer.nicknameStr}">
				尊敬的三福微会员
			</c:when>
			<c:otherwise>
				${user.customer.nicknameStr}
			</c:otherwise>
			</c:choose>
		</li>
			<!-- 
			<li style="font-size:0.6em;"><img src="${wechatPath}wimg/why.gif" style="width:4.5em;"></li>
			 -->
		</ul>
	</div>

</div>
<c:if test="${!empty user.customer.curcusid}">
<div id="ewmm" style="background:#fff;border:1px solid #f1f1f1;margin-top:-0.7em;margin-bottom:0.5em;padding:1em;text-align:center;font-size:0.9em;">积分卡号：${user.customer.curcusid}<br/>

<a href="weixin://viewimage/${wechatPath}wechat/user/getTowdcode.htm?cusid=${user.customer.curcusid}&size=3"><div id="qrcode" style="margin-top:1.2em;"></div><!--<img src="${wechatPath}wechat/user/getTowdcode.htm?cusid=${user.customer.curcusid}&size=3" onerror="nofind();" style="width:65%;margin-top:1.2em;">--></a>
</div>
</c:if>
<div class=""style="padding: 0.75em;margin-top: 0em;border-top:3px solid #ccc;">

<div class="">
    <!--<div onclick="doOpen('${contextPath}/user/showUserCoupon.htm');" style="float:left;width:47%;height:5em;line-height:5em;background:#ff9900;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">官网优惠券<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl3.png"/></div>
    -->
    <div onclick="doOpen('${mob}?utm_source=fuwuhao&utm_medium=weihuiyuan&utm_campaign=huiyuanzhijia&utm_content=weixinshangcheng');" style="float:left;width:47%;height:5em;line-height:5em;background:#99cc00;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">微信商城<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl6.png"/></div>
	<div onclick="doOpen('${contextPath}/coupon/offlineCoupon.htm');" style="float:right;width:47%;height:5em;line-height:5em;background:#ff3366;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">我的优惠券<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl1.png"/></div>	
	<div style="clear:both;"></div>
</div>

<div class="" style="margin-top:0.5em;">
	<div onclick="doOpen('${contextPath}/user/showUseredit.htm');" style="float:left;width:47%;height:5em;line-height:5em;background:#ff0000;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">个人信息<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl2.png"/></div>
	<div onclick="mypoint();" style="float:right;width:47%;height:5em;line-height:5em;background:#00abec;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">我的积分<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl4.png"/></div>
	<div style="clear:both;"></div>
</div>

<div class="" style="margin-top:0.5em;">
	<div onClick="doOpen('${wechatPath}userqa.html');" style="float:left;width:47%;height:5em;line-height:5em;background:#9933cc;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">会员权益<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl5.png"/></div>
	<div onclick="doOpen('${contextPath}/user/toModPasswd.htm');" style="float:right;width:47%;height:5em;line-height:5em;background:#CE4735;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">修改密码<img style="float:right;height:3em;margin-top:0.9em;" src="${wechatPath}wimg/cl7.png"/></div>
	<div style="clear:both;"></div>
</div>
<!--<div class="" style="margin-top:0.5em;">
	<div onClick="doOpen('${mob}?utm_source=fuwuhao&utm_medium=weihuiyuan&utm_campaign=huiyuanzhijia&utm_content=weixinshangcheng');" style="float:left;width:98%;height:5em;line-height:5em;background:#99cc00;margin-right:0.6em;padding:0 0.8em;border-radius:0.5em;color:#fff;font-size:0.8em;text-align:center">微信商城<img style="height:3em;margin-left: 0.9em;" src="${wechatPath}wimg/cl6.png"/></div>
	
	<div style="clear:both;"></div>
</div>

--></div>
<jsp:include page="/jsp/common/footer.jsp"/>
</body>
<div id="weui_mypoint" style="display: none;">
    <div class="weui-mask"></div>
    <div class="weui-dialog">
        <div class="weui-dialog__hd"><strong class="weui-dialog__title">我的积分</strong></div>
        <div class="weui-dialog__bd">
        <div class="list">
        	<ul>
            <li>可用积分：<span id="mypoint"></span></li>
            <li>积分总额：<span id="mytotalpoint"></span></li>
        	</ul>
    	</div>
    </div>
        <div class="weui-dialog__ft">
            <a href="javascript:;" onclick="tangclose();" class="weui-dialog__btn weui-dialog__btn_primary">关闭</a>
        </div>
    </div>
</div>
<!--<div id="bg"></div>
<div id="dialog" class="box" style="display:none">
    <h2>我的积分<a href="javascript:void(0);" class="close">X</a></h2>
    
    <div class="list">
        <ul>
            <li>可用积分：<span id="mypoint"></span></li>
            <li>积分总额：<span id="mytotalpoint"></span></li>
        </ul>
    </div>
</div>
<div id="dialog1" class="box" style="display:none">
    <h2>提示<a href="javascript:void(0);" class="close">X</a></h2>
    
    <div class="list1">
        <ul>
            <li><span id="mymsg"></span></li>
        </ul> 
    </div>
</div>
 --><!--<script charset="utf-8" src="https://m.sanfu.com/js/jquery/jquery-1.8.0.min.js"></script>
  --><style>
  /* box */
.box{position:absolute;width:70%;height:auto;z-index:100;background-color:#fff;border:1px #ddd solid;padding:1px;border-radius:0.5em;}
.box h2{height:25px;font-size:16px;position:relative;padding-left:10px;line-height:25px;color:#000;margin-top: 0px;border-radius:0.5em;}
.box h2 a{position:absolute;right:5px;font-size:12px;color:#000;}
.box .list{padding-top:4.8em;padding-left: 0.7em;border:1px solid #DDD; border-radius:0.5em;background:url(${wechatPath}a_css/sanfu_img/jifen.png) 3.5em 1em no-repeat;background-size:3em;}
.box .list li{height:24px;line-height:24px;}
.box .list li span{margin:0 5px 0 0;font-family:"宋体";font-size:14px;font-weight:500;color:red;}
.box .list1{padding-left: 0.7em;padding-bottom: 0.7em;border:1px solid #DDD; border-radius:0.5em;}
.box .list1 li{height:80px;line-height:24px;}
.box .list1 li span{margin:0 5px 0 0;font-family:"宋体";font-size:14px;font-weight:500;color:black;clear:both}
.showbtn {font:bold 24px '微软雅黑';}
#bg{background-color:#666;position:absolute;z-index:99;left:0;top:0;display:none;width:100%;height:100%;opacity:0.5;filter: alpha(opacity=50);-moz-opacity: 0.5;}
  </style>
<script>
$(function(){
	var coupon_infoStatus=$('#coupon_infoStatus').val();
	//alert($('#coupon_infoStatus').val());
	if(coupon_infoStatus=="true"){
	//alert($('#coupon_infoStr').val());
	$('#mymsg').html($('#coupon_infoStr').val());
	tishi();
	}
	/*var qrcode = new QRCode(document.getElementById("qrcode"), {
        width : 150,//设置宽高
        height : 150
    });*/
    //qrcode.makeCode('${user.customer.curcusid}');
    //生成二维码
    $('#qrcode').qrcode({width: 190,height: 190,text: "${user.customer.curcusid}"});
});
function mypoint(){
	$.ajax({
					url:'../user/myPoint.htm',
					type:'post',
					dataType:'json',
					//data:{'p_senddiscoupons.pi_ayear':ayear,'p_senddiscoupons.pi_aquarter':aquarter,'p_senddiscoupons.pi_dis_id':dis_id,'p_senddiscoupons.pi_coupontypeid':coupontype_id},
					beforeSend:function(XMLHttpRequest){
						//$(o).attr('disabled', true).html('<i class="icon-spinner icon-spin pull-left"></i>');
					},
					error: function(){  
                    alert('对不起，服务器繁忙请稍后再试'); 
                    //$(o).attr('disabled', false).html('领取');
                    //createTipModal({style: 'danger', text: '对不起，服务器繁忙请稍后再试'}); 
                    },
					success:function(data){
					//alert(data.success);
						//mainWaringModal(data.success);
						if(data.success){						
						//alert("积分："+data.msg.point+", 总积分："+data.msg.total_point);
						//createTipModal({style: 'success', text: '积分：'+data.msg});
						$("#mypoint").text(data.msg.point);
						$("#mytotalpoint").text(data.msg.total_point);
						tang();
						}else{
						alert("积分获取失败");
						//createTipModal({style: 'danger', text: '积分：'+data.msg});
						
						}
						//$(o).attr('disabled', false).html('领取'); 
					}
				});
}


function tang(){
		/*$("#bg").css({
            display: "block", height: $(document).height()
        });
        var $box = $('#dialog');
        $box.css({
            //设置弹出层距离左边的位置
            left: ($("body").width() - $box.width()) / 2  + "px",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $box.height()) / 2 + $(window).scrollTop() + "px",
            display: "block"
        });*/
        $("#weui_mypoint").css("display","block");
}

function tangclose(){
	$("#weui_mypoint").css("display","none");
}

function tishi(){
		$("#bg").css({
            display: "block", height: $(document).height()
        });
        setTimeout(function () {
        $("#bg").css({
            height: $(document).height()
        });
        }, 100); 
        var $box1 = $('#dialog1');
        $box1.css({
            //设置弹出层距离左边的位置
            left: ($("body").width() - $box1.width()) / 2  + "px",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $box1.height()) / 2 + $(window).scrollTop() + "px",
            display: "block"
        });
}

/* $(window).resize(function() {
  $box.css({
            //设置弹出层距离左边的位置
            left: ($("body").width() - $box.width()) / 2  + "px",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $box.height()) / 2 + $(window).scrollTop() + "px"
        });
}); */

$(window).on('orientationchange', function() {
//var $el = $("#el"); // 需要重新获得宽和高的元素
//var newWidth = $el.width(); // 新的宽
//var newHeight = $el.height(); // 新的高
setTimeout(function () {
        $("#bg").css({
            height: $(document).height()
        });
        var $box = $('#dialog');
        $box.css({
            //设置弹出层距离左边的位置
            left: ($("body").width() - $box.width()) / 2  + "px",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $box.height()) / 2 + $(window).scrollTop() + "px"
        });					
                            }, 100); 
		
});

//点击关闭按钮的时候，遮罩层关闭
    $(".close").click(function () {
       $("#bg,#dialog,#dialog1").hide();
    });
    
var num = Math.floor(Math.random()*3+1);
var sex="${user.customer.sex}";
if (sex=="男"){
      if (num == 1){      
			$("#ewmmm").css("background-color","#00ABEC");
      }else if (num ==2){
      		$("#ewmmm").css("background-color","#99CC00");
      }else{
      		$("#ewmmm").css("background-color","#9933CC");
      }
}else{
	  if (num == 1){      
			$("#ewmmm").css("background-color","#FF0000");
      }else if (num ==2){
      		$("#ewmmm").css("background-color","#FF3366");
      }else{
      		$("#ewmmm").css("background-color","#9933CC");
      }
}

function nofind(){
	var img=event.srcElement;
	img.src="${wechatPath}wechat/user/getTowdcode.htm?cusid=${user.customer.curcusid}&size=3";
	//alert("${wechatPath}wechat/user/getTowdcode.htm?cusid=${user.customer.curcusid}");
	img.onerror=null; //控制不要一直跳动
}
</script>
</html>
