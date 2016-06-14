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
    <title>爱收宝抵押</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>

        .topimg{text-align: center;}
        .footerimg{text-align: center;background-color: #FAFAFA;}
        .jmcategory ul{display: inline;}
        .jmcategory ul li{float:left;height:100px;line-height:100px;background-color: #e1882a;color:#fff;font-size:18px;width:200px;margin-right: 20px;text-align:center;margin-top:100px;-moz-border-radius: 15px; -webkit-border-radius: 15px; border-radius:15px;}
        .jmcategory ul li p{line-height:30px;padding-top:15px;}
        .jmcategory ul li p:first-child{font-weight: bold;font-size:24px;}
        .jmcategory ul a:hover li{background-color: #E8B07D;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="pure-g topimg">
    <div class="pure-u-1-1">
        <img src="${mybaseurl}/res/images/v2/jm_top.jpg" width="1200"/>
    </div>
</div>
<div class="out_box">
<div class="pure-g jmcategory">
    <!--<div class="pure-u-1-3">
        <img src="${mybaseurl}/res/images/v2/jm_left.jpg"/>
    </div>
    <div class="pure-u-2-3">
        <ul>
            <a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><li><p>黄金/珠宝寄卖</p><p>专业寄卖,值得信赖</p></li></a>
            <a href="${mybaseurl}/product/diamond"><li><p>钻石寄卖</p><p>专业的团队鉴定人员</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><li><p>名包寄卖</p><p>保证客户利益失效执行</p></li></a>
        </ul>
        <ul>
            <a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><li style="margin-left: 100px;"><p>名表寄卖</p><p>资深的推广运营团队</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><li><p>手机/数码寄卖</p><p>线上线下整合营销推广</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><li><p>贵金属寄卖</p><p>量身定制品牌营销方案</p></li></a>
        </ul>
    </div>-->
    
</div>
</div>
<div class="pure-g footerimg">
    <div class="pure-u-1-1">
        <img class="lazy" data-original="${mybaseurl}/res/images/v2/jm_footer.jpg"/>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script type="text/javascript">
    $(function() {
        $("img.lazy").lazyload({skip_invisible: false, effect: "fadeIn"});
    });
</script>
</body>
</html>