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
        .zly_floor1{width: 100%;height:390px; background-color: #E9E9E9;border-top: 2px solid #000000;}
        .zly_floor1 img{width:100%;height:100%;}
        .zly_f1co{width:100%;height:5px;background-color: #D4D4D4;}
        .zly_floor2{width:100%;background-color: #F6F6F6;overflow:hidden;border-bottom: 1px solid #E8E6E7;}
        .zly_f2co{width:1200px;margin:auto;}
        .zly_f2co1,.zly_f2co2,.zly_f2co3{width:310px;height:370px;float:left;text-align: center;background-color: #FFFFFF;margin-bottom: 50px;color:#9E9E9E;}
        .zly_f2co2{margin-left: 135px;}
        .zly_f2co3{margin-left: 135px;}
        .zly_floor3{width:100%;background-color: #F6F6F6;overflow:hidden;margin-top: 1px;}
        .zly_f3co{width:1200px;margin:auto;}
        .zly_f3co img{margin-top: 50px;margin-bottom: 50px;margin-left: 50px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="zly_top">
    <div class="zly_topcon">
        <ul>
            <li><a style="color:#F19108;font-size:14px;">奢侈品养护频道</a></li>
            <li style="margin-left:10px;"><a style="color:#F19108;">Luxury maintenance</a></li>
            <li style="margin-left:400px;"><a href="${baseurl}luxury">丨&nbsp;&nbsp;&nbsp;&nbsp;养护首页</a></li>
            <li style="margin-left:15px;"><a href="${baseurl}luxury/maintenance" >丨&nbsp;&nbsp;&nbsp;&nbsp;爱收宝奢护</a></li>
            <li style="margin-left:15px;"><a href="#wyyh" >丨&nbsp;&nbsp;&nbsp;&nbsp;我要养护</a></li>
            <li style="margin-left:15px;"><a href="#yhlc" >丨&nbsp;&nbsp;&nbsp;&nbsp;养护流程</a></li>
            <li style="margin-left:15px;"><a href="#lxwm" >丨&nbsp;&nbsp;&nbsp;&nbsp;联系我们</a></li>
        </ul>
    </div>
</div>
<div class="zly_floor1">
    <div class="zly_f1co"></div>
    <img src="${baseurl}res/images/new/luxury/lux_1.png" alt="">
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
        <img src="${baseurl}res/images/new/luxury/lux_5.png" alt="">
    </div>
</div>
<a name="lxwm"></a>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
