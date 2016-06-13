<%--@elvariable id="store" type="cn.com.kpso.asb.model.Store"--%>
<%--
  User: donny
  Date: 2/29/16
  Time: 11:01
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>门店详情</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        /*百度地图css_begin*/
        #allmap{height:240px;width:860px;margin:auto;}
        /*百度地图css_end*/
        .shop_total{width: 1000px;height: 40px; background-color: #F0F0F0;margin:auto;}
        .total_1{padding:10px 0 10px 10px;}
        .total_1s{font-size: 12px;color:#A81315;margin-left: 15px;}
        .shop_to{width: 1000px;height: 60px; background-color: #000000;margin:auto;}
        .shop_to1{width:60px;height:40px; background-color: #F0F0F0;float: left;margin-left:20px ;margin-top: 9px;}
        .shop_to1 img{width:100%;height:100%;}
        .shop_to2{width:135px;height:30px;background-color: #E8E8E8;float: left;margin-left: 30px;margin-top: 15px; border-radius:5px; text-align: center; line-height: 30px;}
        .shop_to2 a{font-size: 12px;}
        .content_1{width:1000px;background-color: #F1EFE2;margin:auto;overflow:hidden;}
        .syu{width: 940px; background-color: #CACACA;margin:10px auto 10px auto;}
        .shop_1{width:900px; margin:auto;overflow:hidden;}
        .shop_1_c1{width:100%;height:50px;background-color: #000000;margin-top: 20px;border-top-left-radius: 5px;
            border-top-right-radius: 5px;overflow:hidden;}
        .shop_1c{width:200px;margin-top: 12.5px;padding-left: 10px;}
        .shop_1c a{color:#FFFFFF;font-size: 15px;padding-left: 20px;}
        .shop_1_c2{width:100%;background-color: #FFFFFF;overflow:hidden;}
        .shop_c2_c1{width:860px;height:200px;margin:auto;margin-top: 15px;}
        .c2_c1le{width:325px;height:200px;float:left;}
        .c2_c1le img{width:100%;}
        .c2_c1ri{width:535px;height:200px;float:left;}
        .c2_c1ri_to{width:510px;height:180px;margin-left: 20px;}
        .c2_c1ri_1{border-bottom:1px dashed #A8A8A8;}
        .c2_c1ri_1 a{line-height: 60px;height:60px;}
        .info{margin-left: 40px;}
        .shop_c2_c2{width:900px;height:380px;margin:auto;}
        .shop_c2_c2 img{width:860px;height:100%;margin-left: 20px;}
        .shop_c2_c3{width:900px;height:240px;margin:15px auto;}
        .floor_8{width:1000px;height:500px;margin:auto;}
        .floor_8_top{width:1000px;height:50px; }
        .floor_8_top a{color: #000000;font-size: 20px;text-decoration: none;}
        .floor_8_content{width:1000px;height:460px;margin:auto;background-color: #EBEBEB;   border: 1px solid #FFFFFF;-moz-border-radius: 15px;
            -webkit-border-radius: 15px; border-radius:15px; }
        .floor_8_content1{width:1000px;height:30px;background-color: #F8F8F8; border-radius:10px 10px 0 0; padding-top: 10px;}
        .floor_8_content1 a{color:#000000; font-size: 15px;padding-left: 20px;}
        .floor_8_co2_1{width:960px; color: #999999;margin:auto;}
        .co2_1{width:180px;height:170px;float:left;background-color: #F6F6F6;margin-left: 10px;margin-top: 26px;border-radius: 10px;}
        .co2_2{width:170px;height:140px;margin:15px auto;}
        .co2_2 a{font-size: 12px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="shop_total">
    <div class="total_1">
        <a>店铺介绍<span class="total_1s">Shop information</span></a>
    </div>
</div>
<div class="shop_to">
    <div class="shop_to1">
        <img src="${baseurl}res/images/new/store/hongqi.jpg" alt="">
    </div>
    <div class="shop_to2">
        <a href="${baseurl}store/list/856">苏州店铺介绍</a>
    </div>
    <div class="shop_to2">
        <a href="${baseurl}store/list/795">上海店铺介绍</a>
    </div>
    <div class="shop_to2">
        <a href="${baseurl}store/list/2">北京店铺介绍</a>
    </div>
</div>
<div class="content_1">
    <div  class="syu">
        <div class="shop_1">
            <div class="shop_1_c1">
                <div class="shop_1c">
                    <a>爱收宝 &nbsp;&nbsp;&nbsp;&nbsp;${store.name}</a>
                </div>
            </div>
            <div class="shop_1_c2">
                <div class="shop_c2_c1">
                    <div class="c2_c1le">
                        <img src="${store.picurl}" width="325" height="200" alt="">
                    </div>
                    <div class="c2_c1ri">
                        <div class="c2_c1ri_to">
                            <div class="c2_c1ri_1">
                                <a>地址<span class="info">${store.address}</span></a>
                            </div>
                            <div class="c2_c1ri_1">
                                <a>电话<span class="info">${store.tel}</span></a>
                            </div>
                            <div class="c2_c1ri_1">
                                <a>热线<span class="info">400-086-1131</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop_c2_c2">
                    <img src="${baseurl}res/images/new/store/ad.png" alt="">
                </div>
                <div class="shop_c2_c3">
                    <div id="allmap"></div>
                    <div id="r-result">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="floor_8">
    <div class="floor_8_content">
        <div class="floor_8_content1">
            ${areainfo.name}区域
        </div>
        <div class="floor_8_co2_1">
            <c:forEach items="${stores}" var="store">
                <div class="co2_1">
                    <div class="co2_2">
                        <a href="${baseurl}store/${cid}/${store.id}"><img src="${store.picurl}" alt="" width="170" height="100">
                        <div style="margin-top:10px;">
                            ${store.name}<span style="float:right;padding-top:2px;"><img
                                    src="${baseurl}res/images/new/store/right.png" alt=""></span>
                        </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=DeQszKLbgZNzVKY4ZflHkDbX"></script>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
    var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
    var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL});
    map.addControl(top_left_control);
    map.addControl(top_left_navigation);
    map.addControl(top_right_navigation);
    <c:if test="${empty store.longitude or empty store.latitude}">
    var point = new BMap.Point(0,0);
    map.centerAndZoom(point, 18);
    </c:if>
    <c:if test="${not empty store.longitude and not empty store.latitude}">
    var point = new BMap.Point(${store.longitude},${store.latitude});
    map.centerAndZoom(point,18);
    </c:if>
    map.enableScrollWheelZoom(true);
    var marker = new BMap.Marker(point);  // 创建标注
    map.addOverlay(marker);               // 将标注添加到地图中
    marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
</script>
</html>
