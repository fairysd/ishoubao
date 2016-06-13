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
        .content ul{padding-left: 0;}
        .content li{list-style:none;line-height: 30px;}
        a{text-decoration:none;}
        .total{width: 1200px;height: 238px;border:2px solid #E4E4E4;margin:auto;}
        .content{width:1000px; height: 150px;margin:30px auto;padding-bottom: 20px;}
        .ddsuccess{font-size: 25px;color:#996600;}
        .content a{color:#996600; }
        .tj_line{width:100%;height:2px;background-color: #E7E7E7;margin:15px auto;}
        .fw_list li{float: left;color:#6F6F6F; font-size: 14px;line-height: 20px;height:20px;}
        .one_t1{font-size: 22px; color:#6F6F6F;margin-top: 10px;}
        .one_t{font-size: 22px; color:#6F6F6F;padding-left: 20px;}
        .content_a{margin-left: 10px;}
        .bq{margin-left: 10px;}
        .md_co2{float:left;width:100%;}
        .co2_con1{width:33%;float:left;text-align: center;}
        .co2_con2{width:33%;float:left;text-align: center;}
        .co2_con3{width:33%;float:left;text-align: center;}
        .line_le{height:100px;border:2px solid #E4E4E4;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="total">
    <div class="content">
        <ul>
            <li class="ddsuccess">订单提交成功，请在3天内去门店进行交易!</li>
            <li style="margin-top:30px;">订单号：${estimate.tradeNo}</li>
            <li>交易方式：爱收宝<c:if test="${empty isMortgage}">${estimate.orgName} ( ${estimate.orgAddress} )</c:if><c:if test="${not empty isMortgage}">${shopInfo.name} ( ${shopInfo.address} )</c:if><sapn style="margin-left:20px;color:#996600;" ><a href="${baseurl}store/${ordercityId}/${shopId}">查看地址</a></sapn></li>
            <li>交易金额：<span style="color:red;">￥${estimate.estimatePrice}</span></li>
            <li>接下来您可以：<a href="${baseurl}">继续<c:if test="${empty isMortgage}">回收</c:if><c:if test="${not empty isMortgage}">抵押</c:if></a><span style="color:#BCBCBC;">丨</span><a href="http://shop.aishoubao.com/user.php?act=<c:if test="${empty isMortgage}">estimate_list</c:if><c:if test="${not empty isMortgage}">mortgage_list</c:if>">查看我的订单</a></li>
        </ul>
    </div>
    <%----%>
    <%--<div class="tj_line"></div>--%>
    <%--<div class="md_co2">--%>
        <%--<div class="co2_con1">--%>
            <%--<ul>--%>
                <%--<li><img src="${baseurl}res/images/new/estimate/md_1.png" alt=""></li>--%>
                <%--<li style="margin-top:20px;font-size:20px;">携带有效证件</li>--%>
                <%--<li style="color:#939393;font-size:13px;">交易时带上身份证或其他有效证件</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div style="width:2px;height:200px;background-color:#E7E7E7;float:left;"></div>--%>
        <%--<div class="co2_con2">--%>
            <%--<ul>--%>
                <%--<li><img src="${baseurl}res/images/new/estimate/md_2.png" alt=""></li>--%>
                <%--<li style="margin-top:20px;font-size:20px;">备份个人数据</li>--%>
                <%--<li style="color:#939393;font-size:13px;">请备份好数据并最好恢复出厂设置</li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div style="width:2px;height:200px;background-color:#E7E7E7;float:left;"></div>--%>
        <%--<div class="co2_con3">--%>
            <%--<ul>--%>
                <%--<li><img src="${baseurl}res/images/new/estimate/md_3.png" alt=""></li>--%>
                <%--<li style="margin-top:20px;font-size:20px;">充满手机电量</li>--%>
                <%--<li style="color:#939393;font-size:13px;">请提前将机器充满电提高质检速度</li>--%>
            <%--</ul>--%>
        <%--</div>--%>

    <%--</div>--%>
</div>
<div class="mt20"></div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
