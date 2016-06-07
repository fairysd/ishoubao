<%--
  User: donny
  Date: 2/29/16
  Time: 11:01
--%>
<%--@elvariable id="stores" type="java.util.List"--%>
<%--@elvariable id="store" type="cn.com.kpso.asb.model.Store"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>门店介绍</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        /*百度地图css_begin*/
        .mymap{height:240px;width:860px;margin:auto;}
        /*百度地图css_end*/
        .shop_total{width: 1000px;height: 40px; background-color: #F0F0F0;margin:auto;}
        .total_1{padding:10px 0 10px 10px;}
        .total_1s{font-size: 12px;color:#A81315;margin-left: 15px;}
        .shop_to{width: 1000px;height: 60px; background-color: #000000;margin:auto;}
        .shop_to1{width:60px;height:40px; background-color: #F0F0F0;float: left;margin-left:20px ;margin-top: 9px;}
        .shop_to1 img{width:100%;height:100%;}
        .shop_to2{width:135px;height:30px;background-color: #E8E8E8;float: left;margin-left: 30px;margin-top: 15px; border-radius:5px; text-align: center; line-height: 30px;}
        .shop_to2 a{font-size: 12px;}
        .content_1{width:1000px;background-color: #F1EFE2;margin:auto;}
        .syu{width: 940px; background-color: #CACACA;margin:10px auto 10px auto;}
        .shop_1{width:900px; margin:auto;}
        .shop_1_c1{width:100%;height:50px;background-color: #000000;margin-top: 20px;border-top-left-radius: 5px;
            border-top-right-radius: 5px;overflow:hidden;}
        .shop_1c{width:200px;height:50px;line-height:50px;}
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
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=DeQszKLbgZNzVKY4ZflHkDbX"></script>
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
    <div class="syu">
        <c:forEach items="${stores}" var="store" varStatus="st">
        <div class="shop_1">
            <div class="shop_1_c1">
                <div class="shop_1c">
                    <a href="${baseurl}store/${id}/${store.id}">爱收宝 &nbsp;&nbsp;&nbsp;&nbsp;${store.name}</a>
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
                    <div class="mymap" id="allmap${st.index+1}"></div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
<div style="margin-top: 30px;"></div>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
    // 百度地图API功能
    <c:forEach items="${stores}" var="store" varStatus="st">
    var map = new BMap.Map("allmap${st.index+1}");
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
    </c:forEach>
</script>
</html>
