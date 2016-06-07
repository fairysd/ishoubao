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
    <title>产品分类 - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style type="text/css">
        .myhs{background-color: #FAFAFA;padding:30px 0;}
        .myhs ul li{margin:0;padding:0;list-style-type:none;line-height: 0;}
        .myhs ul li img:hover {
            -webkit-transform: scale(1.05);
            -ms-transform: scale(1.05);
            transform: scale(1.05);
            zoom: 1.05;
        }
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="mywrapper myhs">
    <div class="out_box">
        <div class="pure-g">
            <div class="pure-u-1-3" style="width:396px;">
                <ul>
                    <li><a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><img src="${mybaseurl}/res/images/v2/hs_01.jpg"/></a></li>
                    <li><a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/v2/hs_02.jpg"/></a></li>
                    <li><a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/v2/hs_03.jpg"/></a></li>
                </ul>
            </div>
            <div class="pure-u-1-3" style="width:408px;">
                <img src="${mybaseurl}/res/images/v2/hs_mid.jpg"/>
            </div>
            <div class="pure-u-1-3" style="width:396px;">
                <ul>
                    <li><a href="${mybaseurl}/product/diamond"><img src="${mybaseurl}/res/images/v2/hs_04.jpg"/></a></li>
                    <li><a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/v2/hs_05.jpg"/></a></li>
                    <li><a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/v2/hs_06.jpg"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
