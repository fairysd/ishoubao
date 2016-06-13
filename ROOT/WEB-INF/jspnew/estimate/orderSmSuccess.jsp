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
        .total{width: 1200px;height: 320px;border:2px solid #E4E4E4;margin:auto;}
        .content{width:1000px; height: 320px;margin:30px auto;}
        .ddsuccess{font-size: 25px;color:#996600;}
        .content a{color:#996600; }
        .tj_line{width:930px;height:2px;background-color: #E7E7E7;margin-top:25px;margin-bottom:25px;}
        .fw_list li{float: left;color:#6F6F6F; font-size: 14px;line-height: 20px;height:20px;}
        .one_t1{font-size: 22px; color:#6F6F6F;margin-top: 10px;}
        .one_t{font-size: 22px; color:#6F6F6F;padding-left: 20px;}
        .content_a{margin-left: 10px;}
        .bq{margin-left: 10px;}
        .content ul li{padding-bottom:5px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="total">
    <div class="content">
        <ul>
            <li class="ddsuccess">订单提交成功！</li>
            <li style="margin-top:30px;">订单号：${estimate.tradeNo}</li>
            <li>交易时间：<fmt:formatDate value="${estimate.createTime}" type="both"/></li>
            <li>交易金额：<span style="color:red;">￥${estimate.estimatePrice}</span></li>
            <li>接下来您可以：<a href="${baseurl}">继续回收</a><span style="color:#BCBCBC;">丨</span><a href="http://shop.aishoubao.com/user.php?act=estimate_list">查看我的订单</a></li>
        </ul>
        <div class="tj_line"></div>
        <ul class="fw_list">
            <li style="font-size:20px; color:#6F6F6F;">服务流程：<img src="${baseurl}res/images/new/estimate/successSm.jpg" style="vertical-align:middle;"></li>
        </ul>
    </div>
</div>
<div class="mt20"></div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
