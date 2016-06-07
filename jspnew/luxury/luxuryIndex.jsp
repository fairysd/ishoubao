<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="" />
    <meta name="description" content=""/>
    <title>奢侈品频道 - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .zly_top{width: 100%;height:30px; background-color: #000000;}
        .zly_topcon {width:1200px; margin:auto}
        .zly_topcon ul li{color:#FFFFFF;float: left;list-style:none;font-size: 12px;line-height: 30px;}
        .zly_topcon ul li a{color:#FFFFFF;text-decoration:none;}
        .zly_floor1{width: 1200px;margin:0 auto; background-color: #E9E9E9;}
        .zly_f1co{width:100%;height:5px;background-color: #D4D4D4;}
        .zly_floor2{width:100%;background-color: #F6F6F6;overflow:hidden;border-bottom: 1px solid #E8E6E7;}
        .zly_f2co{width:1200px;margin:auto;}
        .zly_f2co1,.zly_f2co2,.zly_f2co3{width:310px;height:370px;float:left;text-align: center;background-color: #FFFFFF;margin-bottom: 50px;color:#9E9E9E;}
        .zly_f2co2{margin-left: 135px;}
        .zly_f2co3{margin-left: 135px;}
        .zly_floor3{width:100%;background-color: #F6F6F6;overflow:hidden;margin-top: 1px;padding-bottom: 20px;}
        .zly_f3co{width:1200px;margin:auto;}
        .zly_f3co img{margin-top: 50px;margin-bottom: 50px;margin-left: 50px;}
        .pro-slide{ position:relative;height: 140px;width: 1107px;margin-left: 47px;}
        .border-dash{height: 1px; width:98%;border-bottom: 1px dashed #f3d2a6;position: absolute;top: 72px;left: 0;z-index: 0;}
        .pro-slide ul{padding-top: 30px;margin-left: -71px;position: absolute;z-index: 2;width: 1200px;}
        .pro-slide ul li{ float: left;width: 71px;height: 72px;margin-left: 66px; position:relative;}
        .pro-slide ul li.act{  margin-right:-10px;}
        .pro-slide ul li b{ position:absolute; left:-29px; top:37px; z-index:5; display:inline-block; width:10px; height:11px;background:url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat; background-position:0 -236px;}

        .pro-slide .JText{width: 297px;border: 1px solid #f3941f;border-radius: 2px;background-color: #fff;padding: 10px;line-height: 16px;color: #666; display:none; overflow:hidden;position:absolute; right:0; top:8px;font-size: 12px;}
        .pro-slide .JText:first-child,.pro-slide .JText:last-child{top:3px;}
        .skSmallStyle .JText{ width:216px;}
        .pro-slide ul li.act .JText{/* display:block*/}
        .Jicon{width: 92px; height:130px; text-align:center; font-family:"微软雅黑"; margin:6px 0 0; color:#666;font-weight: bold;}
        .Jicon em{width: 71px; height:72px; margin-bottom:1px; display:inline-block;background: url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat;margin-right: 8px;}
        .Jicon em.Jicon01{ background-position:0 -72px;}
        .Jicon em.Jicon02{ background-position:-72px -72px;}
        .Jicon em.Jicon03{ background-position:-144px -72px;}
        .Jicon em.Jicon04{ background-position:-0 -144px;}
        .Jicon em.Jicon05{ background-position:-72px -144px;}
        .Jicon em.Jicon06{ background-position:-144px -144px;}
        .clearfix:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}* html .clearfix{zoom:1}*:first-child+html .clearfix{zoom:1}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="zly_top">
    <div class="zly_topcon">
        <ul>
            <li><a style="color:#e1882a;font-size:14px;">奢侈品养护频道</a></li>
            <li style="margin-left:10px;"><a style="color:#e1882a;">Luxury maintenance</a></li>
            <li style="margin-left:533px;"><a href="${baseurl}luxury">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;养护首页</a></li>
            <li style="margin-left:15px;"><a href="${baseurl}luxury/maintenance" >丨&nbsp;&nbsp;&nbsp;&nbsp;爱收宝奢护</a></li>
            <li style="margin-left:15px;"><a href="#wyyh" >丨&nbsp;&nbsp;&nbsp;&nbsp;我要养护</a></li>
            <li style="margin-left:15px;"><a href="#yhlc" >丨&nbsp;&nbsp;&nbsp;&nbsp;养护流程</a></li>
            <li style="margin-left:15px;"><a href="#lxwm" >丨&nbsp;&nbsp;&nbsp;&nbsp;联系我们</a></li>
        </ul>
    </div>
</div>
<div class="zly_floor1">
    <img src="${mybaseurl}/res/images/v2/hlTop.jpg" alt="">
</div>
<div class="zly_floor2">
    <div class="zly_f2co">
        <p style="color:#717171;font-size:20px;margin-top:50px;"><a name="wyyh"></a>我要养护&nbsp;/&nbsp;CONSERVE<span style="float:right;font-size:12px;"><a href="" style="color:#717171;text-decoration:none;">更多套餐>></a></span></p>
        <div class="zly_f2co1">
            <img src="${baseurl}res/images/new/luxury/lux_2.png" alt="" style="margin-top:20px;">
            <p style="margin-right:70px;">奢侈品皮具基础清洗养护套餐</p>
            <p><span style="float: left;margin-left:20px;">￥400</span><span style="float: right;margin-right:20px;"><s>￥400</s></span></p>
        </div>
        <div class="zly_f2co2">
            <img src="${baseurl}res/images/new/luxury/lux_3.png" alt="" style="margin-top:20px;">
            <p style="margin-right:80px;">&nbsp;品名鞋养护&nbsp;单鞋</p>
            <p><span style="float: left;margin-left:20px;">￥400</span><span style="float: right;margin-right:20px;"><s>￥400</s></span></p>
        </div>
        <div class="zly_f2co3">
            <img src="${baseurl}res/images/new/luxury/lux_4.png" alt="" style="margin-top:20px;">
            <p style="margin-right:80px;">&nbsp;腕表打磨新番服务&nbsp;</p>
            <p><span  style="float: left;margin-left:20px;">￥400</span><span style="float: right;margin-right:20px;"><s>￥400</s></span></p>
        </div>
    </div>
</div>
<div class="zly_floor3">
    <div class="zly_f3co">
        <p style="color:#717171;font-size:20px;margin-top:50px;"><a name="yhlc"></a></a>养护流程  /  MAINTENANCE PROCESS</p>
        <div class="pro-slide">
            <ul class="clearfix">
                <li class="" style="">
                    <div class="Jicon fl">
                        <em class="Jicon01"></em>
                        前台接收
                    </div>
                    <div class="JText fr">
                        <p>1、前台接收</p>
                        北京、上海、苏州会所养护中心前台接收货品，接待人员对货品信息进行登记，并拍照上传至养护服务系统；初步制定养护服务方案，明确报价并收取费用。
                    </div>
                </li>
                <li class="">
                    <div class="Jicon fl"><em class="Jicon02"></em>调拨工厂</div>
                    <div class="JText fr">
                        <p>2、调拨工厂</p>
                        养护中心前台将货品调拨养护工厂；专业物流运送货品至养护工厂。
                    </div>
                    <b></b>
                </li>
                <li class="">
                    <div class="Jicon fl"><em class="Jicon03"></em>消毒分发</div>
                    <div class="JText fr">
                        <p>3、消毒分发</p>
                        货品消毒，根据货品需要养护的不同项目分发给专长技师进行服务。
                    </div>
                    <b></b>
                </li>
                <li class="">
                    <div class="Jicon fl"><em class="Jicon04"></em>技师养护</div>
                    <div class="JText fr">
                        <p>4、技师养护</p>
                        技师出具详细养护方案，严格按照12道养护工序进行专业养护工作。
                    </div>
                    <b></b>
                </li>
                <li class="">
                    <div class="Jicon fl"><em class="Jicon05"></em>货品质检<br/>消毒 调拨出厂</div>
                    <div class="JText fr">
                        <p>5、货品质检，消毒、调拨出厂</p>
                        货品养护后由专业质检人员进行严格质量检查，再次消毒、包装后由专业物流送出工厂
                    </div>
                    <b></b>
                </li>
                <li class="">
                    <div class="Jicon fl"><em class="Jicon06"></em>完成养护<br/>顾客取货</div>
                    <div class="JText fr">
                        <p>6、完成养护，顾客取货</p>
                        完成养护后，养护服务系统会自动发送物品养护完成的通知短信，顾客可选择到就近的养护中心提取自己的货品或者拨打养护中心服务电话选择快递送货上门（快递费用顾客自行支付）。
                    </div>
                    <b></b>
                </li>
            </ul>
            <div class="border-dash"></div>
        </div>
    </div>
</div>
<a name="lxwm"></a>
<%@ include file="../common/footer.jsp"%>
<script>
    $(function () {
        $(".pro-slide li").hover(function(){
            var _th = $(this),index = $(".pro-slide li").index(this);
            if(!_th.hasClass('act')){
                _th.addClass("act").siblings().removeClass('act');
                $(".pro-slide li").css({ width : '71px'}).find('.JText').hide();
                $(".pro-slide li").css('overflow','visible');
                if($('body').hasClass('skSmallStyle')){
                    _th.css({ width : '320px'}).find('.JText').stop().fadeIn();
                }else{
                    _th.css({ width : '404px'}).find('.JText').stop().fadeIn();
                }
            }
        }).eq(0).trigger('mouseover');
    })
</script>
</body>
</html>
