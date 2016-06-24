<%--
  User: donny
  Date: 2/29/16
  Time: 09:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <title>订单提交成功 - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        li{list-style:none;}
        a{text-decoration:none;}
        p{margin-top: 5px;margin-bottom: 5px;color:#7F7F81;}
        .total{width: 1200px;height: 320px;border:2px solid #E4E4E4;margin:auto;}
        .content{width:1000px; height: 320px;margin:30px auto;}
        .ddsuccess{font-size: 25px;color:#996600;padding-bottom:10px;}
        .content a{color:#996600; }
        .tj_line{width:1000px;height:2px;background-color: #E7E7E7;margin:25px auto;}
        .fw_list li{float: left;color:#6F6F6F; font-size: 14px;line-height: 20px;height:20px;}
        .one_t1{font-size: 22px; color:#6F6F6F;margin-top: 10px;}
        .one_t{font-size: 22px; color:#6F6F6F;padding-left: 20px;}
        .content_a{margin-left: 15px;}
        .bq{margin-left: 10px;}
        .fie_1 li{float:left;margin-top: 20px;}
        .kd_a{color:#646567;font-size: 25px;font-weight: bold;padding-bottom: 10px;padding-top:5px;}
        .content ul li{padding-bottom:5px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="total">
    <div class="content">
        <ul style="padding-left:0px;">
            <li class="ddsuccess">订单提交成功！</li>
            <%--<li style="padding-top:20px;">--%>
                <%--<div>--%>
                    <%--<fieldset style="border:2px solid #F3D29C;height:170px;">--%>
                        <%--<legend style="color:#996600;">完成下面两步骤，放款速度提高30%以上</legend>--%>
                        <%--<ul class="fie_1">--%>
                            <%--<li><img src="${baseurl}res/images/new/estimate/kd_1.png" alt=""></li>--%>
                            <%--<li>--%>
                                <%--<p class="kd_a">解除密码</p>--%>
                                <%--<p >解除手机开机密码</p>--%>
                                <%--<p>苹果机解绑iCloud账号密码</p>--%>
                            <%--</li>--%>
                            <%--<li style="margin-left:50px;"><img src="${baseurl}res/images/new/estimate/kd_2.png" alt=""></li>--%>
                            <%--<li>--%>
                                <%--<p class="kd_a">标注手机号码</p>--%>
                                <%--<p>请把写有<span style="color:#996600">提交订单手机号码</span>的小纸条塞入快递包装中</p>--%>
                                <%--<p>无需邮寄电池以外的配件</p>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</fieldset>--%>
                <%--</div>--%>
            <%--</li>--%>
            <li style="margin-top:25px;">订单号：${estimate.tradeNo}</li>
            <li>快递信息: 江苏省苏州市姑苏区园林路5-2号 爱收宝（收） 400-086-1131</li>
            <li>交易金额：<span style="color:red;">￥${estimate.estimatePrice}</span></li>
            <li>接下来您可以：<a href="${baseurl}">继续回收</a><span style="color:#BCBCBC;">丨</span><a href="http://shop.aishoubao.com/user.php?act=estimate_list">查看我的订单</a></li>
        </ul>
        <div class="tj_line"></div>
        <ul class="fw_list" style="padding-left:0px;">
            <li style="font-size:20px; color:#6F6F6F;">服务流程：<img src="${baseurl}res/images/new/estimate/successKd.jpg" style="vertical-align:middle;"></li>
        </ul>
    </div>
</div>
<div class="mt20"></div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
